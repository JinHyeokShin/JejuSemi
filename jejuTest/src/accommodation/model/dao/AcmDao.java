package accommodation.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import accommodation.model.vo.Acm;
import accommodation.model.vo.AcmImg;
import accommodation.model.vo.Search;

public class AcmDao {
	
	private Properties prop = new Properties();
	
	public AcmDao() {
		
		String fileName = AcmDao.class.getResource("/sql/accommodation/accommodation-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));			
			
		} catch (IOException e) {
			e.printStackTrace();
		}		
	}
	
	
	
	/**
	 * 검색위젯으로 숙소 검색하는 서비스
	 * @param conn
	 * @param search
	 * @return
	 */
	public ArrayList<Acm> searchAcm(Connection conn, Search search) {
		ArrayList<Acm> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchAcm");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, search.getSearchCheckInDate());
			pstmt.setString(2, search.getSearchCheckOutDate());
			pstmt.setInt(3, search.getAdult()+search.getChild());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Acm acm = new Acm();
				acm.setAcmNum(rset.getInt("acm_num"));
				acm.setAcmName(rset.getString("acm_name"));
				acm.setAcmPhone(rset.getString("acm_phone"));
				acm.setAcmAddress(rset.getString("acm_address"));
				acm.setAcmType(rset.getString("acm_type"));
				acm.setAcmGrade(rset.getInt("acm_grade"));
				acm.setAcmDescriptA(rset.getString("acm_descript_a"));
				acm.setAcmDescriptB(rset.getString("acm_descript_b"));
				acm.setAcmCoordX(rset.getString("acm_coord_x"));
				acm.setAcmCoordY(rset.getString("acm_coord_y"));
				acm.setAcmDistrict(rset.getString("acm_district"));
				acm.setAcmPower(rset.getString("acm_power"));
				acm.setStatus(rset.getString("acm_status"));
				acm.setMinPrice(rset.getInt("minprice"));
				
				list.add(acm);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	
	public ArrayList<AcmImg> acmThumbnailListView(Connection conn){
		ArrayList<AcmImg> list = new ArrayList<>();
		Statement stmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("acmThumbnailListView");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				list.add(new AcmImg(rset.getInt("img_num"),
						            rset.getString("img_path"),
						            rset.getInt("acm_num"),
						            rset.getInt("status")));				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return list;
	}

	
	
	
	public Acm selectAcm(Connection conn, int acmNum) {
		
		Acm acm = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAcm");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, acmNum);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				acm = new Acm(rset.getInt("acm_num"),
						      rset.getString("acm_name"),
						      rset.getString("acm_phone"),
						      rset.getString("acm_address"),
						      rset.getString("acm_type"),
						      rset.getInt("acm_grade"),
						      rset.getString("acm_descript_a"),
						      rset.getString("acm_descript_b"),
						      rset.getString("acm_coord_x"),
						      rset.getString("acm_coord_y"),
						      rset.getString("acm_district"),
						      rset.getString("acm_power"),
						      rset.getString("acm_status"));				
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return acm;
	}
	
	
	
	
	
	
	
	
	
	
}
