package adminowner.admin.model.service;
import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import accommodation.model.vo.Acm;
import adminowner.admin.model.dao.AdminDao;
import adminowner.admin.model.vo.Notice;
import member.model.vo.Member;
import review.model.vo.Review;
public class AdminService {
	public ArrayList<Member> searchMember() {
		Connection conn = getConnection();
		ArrayList<Member> list = new AdminDao().searchMember(conn);
		close(conn);
		return list;
	}
	/**
	 * 공지 리스트.
	 * @return
	 */
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
	public int memberSuspend(int mNum) {
		Connection conn = getConnection();
		int result = new AdminDao().memberSuspend(conn,mNum);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}
	public ArrayList<Acm> selectAcm() {
		Connection conn = getConnection();
		ArrayList<Acm> list = new AdminDao().selectAcm(conn);
		return list;
	}
	public int reviewCount() {
		Connection conn = getConnection();
		int result = new AdminDao().reviewCount(conn);
		return result;
	}
	public ArrayList<Review> reviewList(){
		Connection conn = getConnection();
		ArrayList<Review> list = new AdminDao().reviewList(conn);
		return list;
	}
	
}
