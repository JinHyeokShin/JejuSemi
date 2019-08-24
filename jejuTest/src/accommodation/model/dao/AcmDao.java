package accommodation.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import accommodation.model.vo.Acm;
import accommodation.model.vo.Search;
import static common.JDBCTemplate.*;

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
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	

}
