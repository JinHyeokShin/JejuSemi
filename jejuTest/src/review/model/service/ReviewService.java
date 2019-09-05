package review.model.service;

import static common.JDBCTemplate.close;

import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import review.model.dao.ReviewDao;
import review.model.vo.Review;
import review.model.vo.ReviewB;


public class ReviewService {
	
	/**
	 * 리뷰 등록 서비스
	 * @param review
	 * @return
	 */
	public int insertReview(Review review) {
		Connection conn = getConnection();
		
		int result = new ReviewDao().insertReview(conn, review);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}
	
	
	/**
	 * 사용자가 마이페이지->예약 조회 들어갈때 해당 예약에 작성해놓은 리뷰가 있으면 리뷰작성 버튼 비활성화 하는 서비스
	 * @param reservNum
	 * @return
	 */
	public int checkReview(String reservNum) {
		Connection conn = getConnection();
		int result = 0;
		Review r = new ReviewDao().checkReview(conn, reservNum);
		
		if(r != null) {	// 해당 예약번호로 작성된 리뷰가 있으면 1
			result = 1;
		} else {		// 해당 예약번호로 작성된 리뷰가 없으면 0
			result = 0;
		}
		
		close(conn);
		
		return result;
	}
	
	
	/**
	 * 사용자가 마이페이지->내 리뷰 조회 들어갈 때 리스트 호출해주는 서비스
	 * @param memNum
	 * @return
	 */
	public ArrayList<Review> selectReviewList(int memNum){
		Connection conn = getConnection();
		
		ArrayList<Review> list = new ReviewDao().selectReviewList(conn, memNum);
		
		close(conn);
		
		return list;
	}
	
	
	public double selectAvg(int acmNum) {
		Connection conn = getConnection();
		
		double avg = new ReviewDao().selectAvg(conn, acmNum);
		
		close(conn);
		
		return avg;
	}
	
	
	public ArrayList<ReviewB> selectAcmReview(int acmNum){
		Connection conn = getConnection();
		
		ArrayList<ReviewB> list = new ReviewDao().selectAcmReview(conn, acmNum);
		
		close(conn);
		
		return list;
		
		
	}
	

}
