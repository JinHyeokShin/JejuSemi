package adminowner.owner.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;


import adminowner.admin.model.vo.Chart;
import member.model.dao.MemberDao;

public class OwnerDao {
	   private Properties prop = new Properties();
	   
	   public OwnerDao() {
	      String fileName = MemberDao.class.getResource("/sql/owner/owner-query.properties").getPath();

	      try {
	         prop.load(new FileReader(fileName));
	      } catch (IOException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	   }
	   public ArrayList<Chart> chartSearch(Connection conn,int acmNum){
		   PreparedStatement pstmt = null;
		   ResultSet rset = null;
		   String sql= prop.getProperty("chartSearch");
		   ArrayList<Chart> list = new ArrayList<>();
		   
		   try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, acmNum);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Chart(rset.getInt(1),
									rset.getInt(2)
						));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		   return list;
	   }
}
