package adminowner.admin.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import accommodation.model.vo.Acm;
import adminowner.admin.model.dao.AdminDao;
import adminowner.admin.model.vo.AdminIndex;
import adminowner.admin.model.vo.Notice;
import member.model.vo.Member;
import review.model.vo.Review;
public class AdminService {
	
	public AdminIndex adminIndex() {
		Connection conn = getConnection();
		AdminIndex ai = new AdminDao().adminIndex(conn);
		close(conn);
		return ai;
	}
	
	public int memberCount() {
		Connection conn = getConnection();
		int result = new AdminDao().memberCount(conn);
		close(conn);
		return result;
	}
	public ArrayList<Member> searchMember(int currentPage,int boardLimit) {
		Connection conn = getConnection();
		ArrayList<Member> list = new AdminDao().searchMember(conn,currentPage, boardLimit);
		close(conn);
		return list;
	}
	public int memberSuspend(int mNum,String ck) {
		Connection conn = getConnection();
		int result = new AdminDao().memberSuspend(conn,mNum,ck);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}
	
	public ArrayList<Notice> selectNList(){
		Connection conn = getConnection();
		ArrayList<Notice> nList= new AdminDao().selectNList(conn);
		close(conn);
		return nList;
	}
	public int insertNotice(Notice n) {
		Connection conn = getConnection();
		int result = new AdminDao().insertNotice(conn, n);
		close(conn);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}
	public Notice selectNotice(int nNum) {
		Connection conn = getConnection();
		Notice n = new AdminDao().selectNotice(conn, nNum);
		close(conn);
		return n;
	}
	public int updateNotice(Notice n) {
		Connection conn = getConnection();
		int result = new AdminDao().updateNotice(conn, n);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}
	public int deleteNotice(int nNum) {
		Connection conn = getConnection();
		int result = new AdminDao().deleteNotice(conn, nNum);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}
	
	public int countAcm() {
		Connection conn= getConnection();
		int result = new AdminDao().countAcm(conn);
		close(conn);
		return result;
	}
	public ArrayList<Acm> selectAcm(int currentPage,int boardLimit) {
		Connection conn = getConnection();
		ArrayList<Acm> list = new AdminDao().selectAcm(conn,currentPage, boardLimit);
		close(conn);
		return list;
	}
	public int acmSuspend(int acmNum,String ck) {
		Connection conn = getConnection();
		int result = new AdminDao().acmSuspend(conn,acmNum,ck);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}
	
	public int reviewCount() {
		Connection conn = getConnection();
		int result = new AdminDao().reviewCount(conn);
		close(conn);
		return result;
	}
	public ArrayList<Review> reviewList(int currentPage,int boardLimit){
		Connection conn = getConnection();
		ArrayList<Review> list = new AdminDao().reviewList(conn,currentPage,boardLimit);
		close(conn);
		return list;
	}
	public Review reviewDetail(int rNum) {
		Connection conn = getConnection();
		Review r = new AdminDao().reviewDetail(conn,rNum);
		close(conn);
		return r;
	}
}
