package management.model.dao;

import static common.JDBCTemplate.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import management.model.vo.Management;

public class ManagementDao {
private Properties prop = new Properties();
	
	public ManagementDao() {
		String fileName = ManagementDao.class.getResource("/sql/management/management-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public int getOwnerListCount(Connection conn) {
			int listCount = 0;
			
			Statement stmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("getOwnerListCount");
			
			try {
				stmt = conn.createStatement();
				
				rset = stmt.executeQuery(sql);
				
				if(rset.next()) {
					listCount = rset.getInt(1);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(stmt);
			}
			
			return listCount;
			
		}
	
	
	public ArrayList<Management> ownerSelectList(Connection conn, int currentPage, int boardLimit, int memNum){
		
		ArrayList<Management> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("ownerSelectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			// currentPage = 1		--> startRow : 1 ~ endRow : 10
			// currentPage = 2		--> startRow : 11~ endRow : 20
			
			int startRow = (currentPage - 1) * boardLimit + 1;
			int endRow = startRow + boardLimit - 1;
			
			pstmt.setInt(1, memNum);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Management(rset.getInt("RNUM"),
										 rset.getString("ROOM_NAME"),
										 rset.getInt("RESERV_PAX"),
										 rset.getDate("CHECKIN_DATE"),
										 rset.getDate("CHECKOUT_DATE"),
										 rset.getDate("RESERV_DATE"),
										 rset.getString("MEM_NAME"),
										 rset.getString("MEM_PHONE"),
										 rset.getInt("RESERV_PRICE")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
}
