package reply.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import member.model.dao.MemberDao;
import member.model.vo.Member;
import reply.model.dao.ReplyDao;
import reply.model.vo.Reply;

public class ReplyService {
	   public int insertReply(Reply reply) {
		      
		      Connection conn = getConnection();
		      
		      int result = new ReplyDao().insertReply(conn, reply);
		      
		      if(result > 0) {
		         commit(conn);
		      }else {
		         rollback(conn);
		      }
		      
		      close(conn);
		      return result;
		   }
}
