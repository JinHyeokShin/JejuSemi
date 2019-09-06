package reply.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import member.model.dao.MemberDao;
import member.model.vo.Member;
import reply.model.vo.Reply;

public class ReplyDao {
	
	private Properties prop = new Properties();
	  public ReplyDao() {
		  
	      String fileName = ReplyDao.class.getResource("/sql/owner/owner-query.properties").getPath();
	      
	      try {
	         prop.load(new FileReader(fileName));         
	         
	      } catch (IOException e) {
	         e.printStackTrace();
	      }      
	   }
	  
	  public int insertReply(Connection conn, Reply reply) {
	      
	      int result = 0;
	      
	      PreparedStatement pstmt = null;
	      
	      String sql = prop.getProperty("insertReply");
	      
	      try {
	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setInt(1, reply.getReviewNum());
	         pstmt.setString(2, reply.getReplyContent());
	         
	         result = pstmt.executeUpdate();
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(pstmt);
	      }
	      return result;
	   }
}
