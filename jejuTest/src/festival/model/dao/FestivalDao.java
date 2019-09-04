package festival.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import festival.model.vo.Festival;
import festival.model.vo.FestivalImg;
import member.model.dao.MemberDao;

public class FestivalDao {

	private Properties prop = new Properties();

	public FestivalDao() {

		String fileName = MemberDao.class.getResource("/sql/festival/festival-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));

		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Festival> selectList(Connection conn){
		
		ArrayList<Festival> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Festival(rset.getInt("festival_num"),
						              rset.getString("festival_name"),
						              rset.getString("festival_descript"),
						              rset.getString("festival_plan")));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
		
	}
	
	public FestivalImg festivalImgView(Connection conn, int festivalNum) {
		
		FestivalImg festivalImgView = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectFestivalImg");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, festivalNum);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				festivalImgView = new FestivalImg(rset.getInt("festivalimg_num"),
												  rset.getString("festivalimg_path"),
												  rset.getInt("festival_num"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return festivalImgView;		
	}
	
	

}
