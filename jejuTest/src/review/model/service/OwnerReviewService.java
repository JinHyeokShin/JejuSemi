package review.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import review.model.dao.OwnerReviewDao;
import review.model.vo.Review;

public class OwnerReviewService {
	public int reviewCount(int acmNum) {
		Connection conn = getConnection();
		int result = new OwnerReviewDao().reviewCount(conn, acmNum);
		close(conn);
		return result;
	}
	public ArrayList<Review> reviewList(int currentPage,int boardLimit, String acmName){
		Connection conn = getConnection();
		ArrayList<Review> list = new OwnerReviewDao().reviewList(conn,currentPage,boardLimit,acmName);
		close(conn);
		return list;
	}
	
	public Review reviewDetail(int rNum ,String acmName) {
		Connection conn = getConnection();
		Review r = new OwnerReviewDao().reviewDetail(conn,rNum,acmName);
		close(conn);
		return r;
	}
}
