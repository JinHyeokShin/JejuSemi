package review.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

import review.model.dao.ReviewDao;
import review.model.vo.Review;


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
	
	
	
	

}
