package member.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import accommodation.model.vo.Acm;
import accommodation.model.vo.AcmImg;
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
   
   public Acm getAcm(int memNum) {
	   Connection conn = getConnection();
	   
	   Acm acm = new MemberDao().getAcm(conn, memNum);
	   
	   close(conn);
	   
	   return acm;
   }
   
   public ArrayList<AcmImg> acmImgList(int acmNum){
	
	   Connection conn = getConnection();
	
		ArrayList<AcmImg> list = new MemberDao().acmImgList(conn, acmNum);
		
		close(conn);
		
		return list;
	}
   
   public Member snsLoginCheck(String memId) {
	      
      Connection conn = getConnection();
      
      Member loginUser = new MemberDao().snsLoginCheck(conn, memId);
      
      close(conn);
      
      return loginUser;
   }
   
   public Member searchPwd(String memberId) {
	   
	   Connection conn = getConnection();
	   
	   Member m = new MemberDao().searchPwd(conn, memberId);
	   
	   close(conn);
	   
	   return m;
   }
   
   public Member updatePwd(String memId, String newPwd) {
	   
	   Connection conn = getConnection();
	   
	   
		
		int result = new MemberDao().updatePwd(conn, memId, newPwd);
		
		Member updateMem = null;
		
		if(result > 0) {
			commit(conn);
			updateMem = new MemberDao().searchPwd(conn, memId);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return updateMem;
	   
   }
   // 회원 정보 수정
   public Member updateMember(Member mem) {
		Connection conn = getConnection();
		
		int result = new MemberDao().updateMember(conn, mem);
		
		Member updateMem = null;
		
		if(result > 0) {
			commit(conn);
			
			updateMem = new MemberDao().selectMember(conn, mem.getMemId());
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return updateMem;
		
		
	}
   
   
   //회원 탈퇴
	public int deleteMember(String userId) {
		Connection conn = getConnection();
		
		int result = new MemberDao().deleteMember(conn, userId);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	// 비밀번호 수정
	public Member updateMyPwd(String memId, String memPwd, String newPwd) {
		Connection conn = getConnection();
		
		int result = new MemberDao().updateMyPwd(conn, memId, memPwd, newPwd);
			
		Member updateMem = null;
		
		if(result > 0) {
			commit(conn);
			updateMem = new MemberDao().selectMember(conn, memId);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return updateMem;
	}

   
   
   
   
   
   
   
   

}