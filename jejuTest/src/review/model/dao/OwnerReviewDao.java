package review.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import reservation.model.dao.ReservationDao;
import review.model.vo.Review;

public class OwnerReviewDao {
	private Properties prop = new Properties();
	
	public OwnerReviewDao() {
		
		String fileName = ReservationDao.class.getResource("/sql/owner/owner-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));			
			
		} catch (IOException e) {
			e.printStackTrace();
		}		
	}	
	
	  public int reviewCount(Connection conn, String acmName) {
	      int result = 0;
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      String sql= prop.getProperty("reviewCount");
	      
	      try {
	         pstmt= conn.prepareStatement(sql);
	         pstmt.setString(1, acmName);
	         rset = pstmt.executeQuery();
	         while(rset.next()) {
	            result = rset.getInt(1);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(rset);
	         close(pstmt);
	      }
	      return result;
	   }
	   public ArrayList<Review> reviewList(Connection conn,int currentPage,int boardLimit, String acmName){
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      ArrayList<Review> list = new ArrayList<>();
	      String sql = prop.getProperty("reviewList");
	      
	      int startRow = (currentPage -1 ) * boardLimit+1;
	      int endRow = startRow + boardLimit -1;
	      
	      try {
	         pstmt=conn.prepareStatement(sql);
	         pstmt.setInt(1, startRow);
	         pstmt.setInt(2, endRow);
	         pstmt.setString(3, acmName);
	         rset=pstmt.executeQuery();
	         
	         while(rset.next()) {
	            list.add(new Review(rset.getInt(2),//REVIEW_NUM
	            		
	                           rset.getString(3),//MEM_NAME
	                           rset.getString(4),//ACM_NAME
	                           
	                           rset.getString(5),//RES_NUM
	                           rset.getInt(6),//SCORE
	                           rset.getString(7),//TITLE
	                           rset.getString(8),//CONTENT
	                           rset.getDate(9)//DATE
	                           
	                  ));
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(rset);
	         close(pstmt);
	      }
	      return list;
	   }
	   
	   public Review reviewDetail(Connection conn, int rNum,String acmName) {
		   System.out.println(rNum);
		   PreparedStatement pstmt = null;
		   ResultSet rset = null;
		   String sql = prop.getProperty("reviewDetail");
		   Review r = new Review();
		   
		   try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, rNum);
			pstmt.setString(2, acmName);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				r.setReviewNum(rset.getInt(2));
				r.setMemName(rset.getString(3));
				r.setAcmName(rset.getString(4));
				r.setReservNum(rset.getString(5));
				r.setReviewScore(rset.getInt(6));
				r.setReviewTitle(rset.getString(7));
				r.setReviewContent(rset.getString(8));
				r.setReviewDate(rset.getDate(9));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return r;
	   }
}
