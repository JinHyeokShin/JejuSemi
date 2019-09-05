package adminowner.admin.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import accommodation.model.vo.Acm;
import adminowner.admin.model.vo.AdminIndex;
import adminowner.admin.model.vo.Notice;
import member.model.dao.MemberDao;
import member.model.vo.Member;
import payment.model.vo.Payment;
import reservation.model.vo.Reservation;
import review.model.vo.Review;

public class AdminDao {
   private Properties prop = new Properties();

   public AdminDao() {
      String fileName = MemberDao.class.getResource("/sql/admin/admin-query.properties").getPath();

      try {
         prop.load(new FileReader(fileName));
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }

   }
   
   public AdminIndex adminIndex(Connection conn) {
	   PreparedStatement pstmt = null;
	   ResultSet rset = null;
	   AdminIndex ai = new AdminIndex();
	   String sql = prop.getProperty("adminIndex");
	   
	   try {
		pstmt = conn.prepareStatement(sql);
		rset= pstmt.executeQuery();
		while(rset.next()) {
			ai.setuCount(rset.getInt(1));
			ai.setoCount(rset.getInt(2));
			ai.setpTotal(rset.getInt(3));
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		close(rset);
		close(pstmt);
	}
	return ai;
   }

   public int memberCount(Connection conn) {
	   PreparedStatement pstmt = null;
	   ResultSet rset = null;
	   int result= 0;
	   String sql = prop.getProperty("memberCount");
	   
	   try {
		pstmt=conn.prepareStatement(sql);
		rset=pstmt.executeQuery();
		
		while(rset.next()) {
			result=rset.getInt(1);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		close(rset);
		close(pstmt);
	}
	   return result;   
   }
   
   public ArrayList<Member> searchMember(Connection conn,int currentPage,int boardLimit) {
      ArrayList<Member> list = new ArrayList<>();
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      String sql = prop.getProperty("searchMember");
      int startRow = (currentPage -1 ) * boardLimit+1;
      int endRow = startRow + boardLimit -1;
      try {
         pstmt = conn.prepareStatement(sql);
         pstmt.setInt(1, startRow);
         pstmt.setInt(2, endRow);
         rset = pstmt.executeQuery();

         while (rset.next()) {
            list.add(new Member(rset.getInt("MEM_NUM"),
			            		rset.getString("MEM_ID"),
			            		rset.getString("MEM_PWD"),
			            		rset.getString("MEM_NAME"),
			                    rset.getString("MEM_GENDER"),
			                    rset.getString("MEM_PHONE"),
			                    rset.getInt("NATION_CODE"),
			                    rset.getInt("MEM_POINT"),
			                    rset.getString("MEM_TYPE"),                  
			                    rset.getString("MEM_STATUS"),
			                    rset.getDate("ENROLL_DATE"),
			                    rset.getDate("OUT_DATE"),
			                    rset.getInt("NOSHOW")
                    ));
         }
      } catch (SQLException e) {
    	  
         // TODO Auto-generated catch block
         e.printStackTrace();
      } finally {
         close(rset);
         close(pstmt);
      }
      return list;
   }
   public int memberSuspend(Connection conn, int mNum, String ck) {
	      int result=0;
	      PreparedStatement pstmt = null;
	      String sql = prop.getProperty("memberSuspend");
	      try {
	         pstmt=conn.prepareStatement(sql);
	         pstmt.setString(1, ck);
	         pstmt.setInt(2, mNum);
	         
	         result = pstmt.executeUpdate();
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(pstmt);
	      }
	      return result;
	   }
   
  
   /**
    * 공지사항 리스트
    * 
    * @param conn
    * @return
    */
   public ArrayList<Notice> selectNList(Connection conn) {
      ArrayList<Notice> nList = new ArrayList<>();
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      String sql = prop.getProperty("selectNoticeList");
      try {
         pstmt = conn.prepareStatement(sql);
         rset = pstmt.executeQuery();
         while (rset.next()) {
            nList.add(new Notice(rset.getInt(1),
				            		rset.getString(2),
				            		rset.getString(3),
				            		rset.getDate(4),
				                    rset.getDate(5),
				                    rset.getString(6)));
         };

      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } finally {
         close(rset);
         close(pstmt);
      };
      return nList;
   }
   public int insertNotice(Connection conn, Notice n) {
      int result =0;
      PreparedStatement pstmt = null;
      String sql = prop.getProperty("insertNotice");
      try {
         pstmt=conn.prepareStatement(sql);
         pstmt.setString(1, n.getnTitle());
         pstmt.setString(2, n.getnContent());
         result = pstmt.executeUpdate();
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
         close(pstmt);
      }
      return result;
   }
   public Notice selectNotice(Connection conn, int nNum) {
      Notice n = new Notice();
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      String sql = prop.getProperty("selectNotice");
      
      try {
         pstmt=conn.prepareStatement(sql);
         pstmt.setInt(1, nNum);
         
         rset=pstmt.executeQuery();
         while(rset.next()) {
            n.setnNum(rset.getInt(1));
            n.setnTitle(rset.getString(2));
            n.setnContent(rset.getString(3));
            n.setnDate(rset.getDate(4));
            n.setnModifyDate(rset.getDate(5));
            n.setnStatus(rset.getString(6));
         }
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
         close(rset);
         close(pstmt);
      }
      return n;
   }
   public int updateNotice(Connection conn, Notice n) {
      int result =0;
      PreparedStatement pstmt= null;
      String sql=prop.getProperty("updateNotice");
      try {
         pstmt=conn.prepareStatement(sql);
         pstmt.setString(1, n.getnTitle());
         pstmt.setString(2, n.getnContent());
         pstmt.setInt(3, n.getnNum());
         result = pstmt.executeUpdate();
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
         close(pstmt);
      }
      return result;
   }
   public int deleteNotice(Connection conn, int nNum) {
      int result =0;
      PreparedStatement pstmt= null;
      String sql = prop.getProperty("deleteNotice");
      try {
         pstmt= conn.prepareStatement(sql);
         pstmt.setInt(1, nNum);
         result=pstmt.executeUpdate();
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
         close(pstmt);
      }
      return result;
   }
   
   public int countAcm(Connection conn) {
	   PreparedStatement pstmt = null;
	   ResultSet rset = null;
	   int result =0;
	   String sql = prop.getProperty("countAcm");
	   
	   try {
		pstmt = conn.prepareStatement(sql);
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
   public ArrayList<Acm> selectAcm(Connection conn,int currentPage,int boardLimit){
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      ArrayList<Acm> list = new ArrayList<>();
      String sql = prop.getProperty("selectAcm");
      
      int startRow = (currentPage -1 ) * boardLimit+1;
      int endRow = startRow + boardLimit -1;
      
      try {
         pstmt=conn.prepareStatement(sql);
         pstmt.setInt(1,startRow);
         pstmt.setInt(2,endRow);
         rset =pstmt.executeQuery();
         
         while(rset.next()) {
            
            list.add(new Acm(rset.getInt(1),
			                  rset.getInt(2),
			            	  rset.getString(3),
			                  rset.getString(4),
			                  rset.getString(5),
			                  rset.getString(6), 
			                  rset.getInt(7),
			                  rset.getString(8),
			                  rset.getString(9),
			                  rset.getString(10)
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
   public int acmSuspend(Connection conn,int acmNum,String ck) {
	   int result = 0;
	   PreparedStatement pstmt = null;
	   String sql = prop.getProperty("acmSuspend");
	   try {
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, ck);
		pstmt.setInt(2, acmNum);
		result = pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
        close(pstmt);
     }
     return result;
   }
   
   public int reviewCount(Connection conn) {
      int result = 0;
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      String sql= prop.getProperty("reviewCount");
      
      try {
         pstmt= conn.prepareStatement(sql);
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
   public ArrayList<Review> reviewList(Connection conn,int currentPage,int boardLimit){
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
   public Review reviewDetail(Connection conn, int rNum) {
	   System.out.println(rNum);
	   PreparedStatement pstmt = null;
	   ResultSet rset = null;
	   String sql = prop.getProperty("reviewDetail");
	   Review r = new Review();
	   
	   try {
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, rNum);
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
   public int reservationCount(Connection conn) {
	   PreparedStatement pstmt = null;
	   ResultSet rset = null;
	   int result =0;
	   String sql = prop.getProperty("reservationCount");
	   try {
		pstmt = conn.prepareStatement(sql);
		rset = pstmt.executeQuery();
//		if(rset.next()) {
//			result = rset.getInt(1);
//		}
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
   public ArrayList<Reservation> reservationSearch(Connection conn,int currentPage,int boardLimit ){
	   PreparedStatement pstmt = null;
	   ResultSet rset = null;
	   String sql =prop.getProperty("reservationSearch");
	   ArrayList<Reservation> rList = new ArrayList<Reservation>();
	   int startRow = (currentPage -1 ) * boardLimit+1;
       int endRow = startRow + boardLimit -1;
	   try {
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		rset=pstmt.executeQuery();
		while(rset.next()){
		rList.add(new Reservation(rset.getString(2),
									rset.getString(3),
									rset.getString(4),
									rset.getString(5),
									rset.getInt(6),
									rset.getString(7),
									rset.getString(8),
									rset.getInt(9),
									rset.getString(10),
									rset.getString(11),
									rset.getString(12),
									rset.getString(13),
									rset.getString(14),
									rset.getString(15)
				));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		close(rset);
		close(pstmt);
	}
	   return rList;
   }
   public int paymentCount(Connection conn) {
	   PreparedStatement pstmt = null;
	   ResultSet rset = null;
	   String sql = prop.getProperty("paymentCount");
	   int result =0;
	   try {
		pstmt = conn.prepareStatement(sql);
		rset=pstmt.executeQuery();
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
   public ArrayList<Payment> paymentSearch(Connection conn, int currentPage,int boardLimit){
	   PreparedStatement pstmt = null;
	   ResultSet rset = null;
	   String sql = prop.getProperty("paymentSearch");
	   ArrayList<Payment> pList = new ArrayList<>();
	   int startRow = (currentPage -1 ) * boardLimit+1;
       int endRow = startRow + boardLimit -1;
	   try {
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		rset=pstmt.executeQuery();
		while(rset.next()) {
			pList.add(new Payment(rset.getString(2),
									rset.getString(3),
									rset.getInt(4),
									rset.getString(5),
									rset.getString(6),
									rset.getString(7),
									rset.getString(8),
									rset.getString(9)
					));
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		close(rset);
		close(pstmt);
		
	}
	   return pList;
   }
   
   
   
   
   
   
   
   
   
   
   
   
}