package review.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static common.JDBCTemplate.*;
import reservation.model.dao.ReservationDao;
import review.model.vo.Review;
import review.model.vo.ReviewB;

public class ReviewDao {
	
	private Properties prop = new Properties();
	
	public ReviewDao() {
		
		String fileName = ReservationDao.class.getResource("/sql/review/review-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));			
			
		} catch (IOException e) {
			e.printStackTrace();
		}		
	}	
	
	
	
	public int insertReview(Connection conn, Review review) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReview");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, review.getMemNum());
			pstmt.setInt(2, review.getAcmNum());
			pstmt.setString(3, review.getReservNum());
			pstmt.setInt(4, review.getReviewScore());
			pstmt.setString(5, review.getReviewTitle());
			pstmt.setString(6, review.getReviewContent());		
			
			result = pstmt.executeUpdate();	
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;	
	}
	
	
	
	public Review checkReview(Connection conn, String reservNum) {
		Review r = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("checkReview");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reservNum);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				r = new Review();
				r.setReviewNum(rset.getInt("review_num"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);			
		}
		return r;
	}
	
	
	
	public ArrayList<Review> selectReviewList(Connection conn, int memNum){
		ArrayList<Review> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReviewList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNum);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Review(rset.getInt("review_num"),
						            rset.getInt("mem_num"),
						            rset.getInt("acm_num"),
						            rset.getString("reservation_num"),
						            rset.getInt("review_score"),
						            rset.getString("review_title"),
						            rset.getString("review_content"),
						            rset.getDate("review_date")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);			
		}
		return list;
	}
	
	
	public double selectAvg(Connection conn, int acmNum) {
		double result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAvg");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, acmNum);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = Math.round(rset.getInt(1)*10)/10.0;		
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);			
		}
		return result;
	}
	
	
	
	
	
	public ArrayList<ReviewB> selectAcmReview(Connection conn, int acmNum){
		ArrayList<ReviewB> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAcmReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, acmNum);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new ReviewB(rset.getInt("review_num"),
						            rset.getString("mem_name"),
						            rset.getInt("acm_num"),
						            rset.getString("reservation_num"),
						            rset.getString("img_path"),
						            rset.getInt("review_score"),
						            rset.getString("review_title"),
						            rset.getString("review_content"),
						            rset.getDate("review_date")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);			
		}
		return list;
	}
	
	

}
