package payment.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import accommodation.model.dao.AcmDao;
import payment.model.vo.Payment;
import reservation.model.vo.Reservation;

import static common.JDBCTemplate.*;

public class PaymentDao {
	
	private Properties prop = new Properties();
	
	public PaymentDao() {
		String fileName = AcmDao.class.getResource("/sql/payment/payment-query.properties").getPath();
				
			try {
				prop.load(new FileReader(fileName));			
					
			} catch (IOException e) {
				e.printStackTrace();
			}
	}
	
	
	public int insertPayment(Connection conn, Payment pay) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertPayment");
		
		System.out.println("ConfirmNum : "+pay.getConfirmNum());
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pay.getPayNum());
			pstmt.setString(2, pay.getReservNum());
			pstmt.setInt(3, pay.getPayPrice());
			pstmt.setString(4, pay.getConfirmNum());
			pstmt.setString(5, pay.getPayMethod());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
	public int insertReservation(Connection conn, Reservation reserv) {
		
		System.out.println(reserv.getCheckInDate());
		System.out.println(reserv.getCheckOutDate());
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReservation");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reserv.getReservNum());
			pstmt.setInt(2, reserv.getMemNum());
			pstmt.setInt(3, reserv.getRoomNum());
			pstmt.setInt(4, reserv.getReservPax());
			pstmt.setString(5, reserv.getCheckInDate());
			pstmt.setString(6, reserv.getCheckOutDate());
			pstmt.setInt(7, reserv.getReservPrice());
			pstmt.setString(8, reserv.getReservRequire());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	

}
