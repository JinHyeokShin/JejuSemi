package power.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import accommodation.model.dao.AcmDao;
import accommodation.model.vo.Acm;
import payment.model.vo.Payment;
import power.model.vo.Power;

public class PowerDao {
	
	private Properties prop = new Properties();
	
	public PowerDao() {
		String fileName = AcmDao.class.getResource("/sql/power/power-query.properties").getPath();
				
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
			pstmt.setInt(2, pay.getPayPrice());
			pstmt.setString(3, pay.getConfirmNum());
			pstmt.setString(4, pay.getPayMethod());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
	public int insertPower(Connection conn, Power pow) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertPower");
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1,pow.getAcmNum());
			pstmt.setString(2,pow.getPayNum());
			pstmt.setInt(3, pow.getPowerFlag());
			pstmt.setInt(4, pow.getPowerFlag());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	public int updateAcmStatus(Connection conn, Acm acm) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateAcmStatus");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, acm.getAcmNum());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

}
