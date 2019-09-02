package member.model.service;

import java.sql.Connection;

import member.model.dao.MemberDao;
import member.model.vo.Member;
import static common.JDBCTemplate.*;

public class MemberService {
   
   public Member loginMember(String id, String pwd) {
      
      Connection conn = getConnection();
      
      Member loginUser = new MemberDao().loginMember(conn, id, pwd);
      
      close(conn);
      
      return loginUser;
   }
   
   public int insertMember(Member mem) {
      
      Connection conn = getConnection();
      
      int result = new MemberDao().insertMember(conn, mem);
      
      if(result > 0) {
         commit(conn);
      }else {
         rollback(conn);
      }
      
      close(conn);
      return result;
   }
   
   public int idCheck(String userId) {
		
	   	Connection conn = getConnection();
		
		int result = new MemberDao().idCheck(conn, userId);
		
		close(conn);
		
		return result;
	}
   
   public String getAcmName(int memNum) {
	   Connection conn = getConnection();
	   
	   String acmName = new MemberDao().getAcmName(conn, memNum);
	   
	   return acmName;
   }
   
   

}