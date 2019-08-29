package power.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import power.model.vo.Power;
import static common.JDBCTemplate.*;
public class PowerDao {
	
	private Properties prop = new Properties();
	public PowerDao() {
String fileName = PowerDao.class.getResource("/sql/power/power-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public int ownerInsertPower(Connection conn,Power p, int ownerNum) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertPower");
				
		try {
			pstmt = conn.prepareStatement(sql);
			
			
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
