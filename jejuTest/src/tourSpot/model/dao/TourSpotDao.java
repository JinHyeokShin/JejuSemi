package tourSpot.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import member.model.dao.MemberDao;
import tourSpot.model.vo.TourSpot;
import tourSpot.model.vo.TourSpotImg;

import static common.JDBCTemplate.*;


public class TourSpotDao {

	private Properties prop = new Properties();

	public TourSpotDao() {

		String fileName = MemberDao.class.getResource("/sql/tourSpot/tourSpot-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));

		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<TourSpot> selectList(Connection conn){
		
		ArrayList<TourSpot> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
	    ResultSet rset= null;
	      
	    String sql = prop.getProperty("selectList");
	     
	    try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new TourSpot(rset.getInt("spot_num"),
									  rset.getString("spot_name"),
									  rset.getString("spot_Coord_X"),
									  rset.getString("spot_coord_y"),
									  rset.getString("spot_address"),
									  rset.getString("spot_descript"),
									  rset.getString("spot_homepage"),
									  rset.getString("spot_phone"),
									  rset.getString("spot_content")));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
		
		
	}
	
	public TourSpotImg tourImgView(Connection conn, int spotNum) {
		
		TourSpotImg tourImgView = null;
		
		PreparedStatement pstmt = null;
	    ResultSet rset= null;
	    
	    String sql = prop.getProperty("selectTourImg");
	    
	    try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, spotNum);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				tourImgView = new TourSpotImg(rset.getInt("img_num"),
						                      rset.getString("img_path"),
						                      rset.getInt("spot_num"),
						                      rset.getInt("status"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
	    return tourImgView;

	}

	
	
	
	

}
