package reservation.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Properties;

import accommodation.model.vo.Acm;
import reservation.model.vo.Reservation;

public class ReservationDao {
	
private Properties prop = new Properties();
	
	public ReservationDao() {
		
		String fileName = ReservationDao.class.getResource("/sql/reservation/reservation-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));			
			
		} catch (IOException e) {
			e.printStackTrace();
		}		
	}	
	
	
	public ArrayList<Reservation> myReservListView(Connection conn, int memNum){
		ArrayList<Reservation> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("myReservListView");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNum);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				String date1 = sdf.format(rset.getDate("checkin_date"));
				String date2 = sdf.format(rset.getDate("checkout_date"));
				String date3 = sdf.format(rset.getDate("reserv_date")); 
				String date4 = "";
				if(rset.getDate("cancel_date") != null) {
					date4 = sdf.format(rset.getDate("cancel_date"));					
				}
				
				
				
				list.add(new Reservation(rset.getString("reserv_num"),
						                 rset.getInt("room_num"),
						                 rset.getInt("reserv_pax"),
						                 date1,
						                 date2,
						                 rset.getInt("reserv_price"),
						                 rset.getString("reserv_cancel"),
						                 date3,
						                 date4,
						                 rset.getString("reserv_require"),
						                 rset.getString("noshow"),
						                 rset.getString("status")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;		
	}
	
	
	public Acm reservAcmView(Connection conn, String reservNum) {
		Acm acm = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("reservAcmView");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reservNum);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				acm = new Acm(rset.getInt("acm_num"),
						      rset.getString("acm_name"),
						      rset.getString("acm_address"));
			}						
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return acm;
	}
	
	
	public int cancelReservation(Connection conn, String reservNum) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("cancelReservation");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reservNum);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;		
	}
	
	
	

}
