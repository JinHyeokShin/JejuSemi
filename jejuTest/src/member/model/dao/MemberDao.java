package member.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import member.model.vo.Member;
import static common.JDBCTemplate.*;


public class MemberDao {
   
   private Properties prop = new Properties();
   
   public MemberDao() {
      // 항상 member-query.properties에서 값을 새로 가져올 수 있도록
      // 기본생성자 안에서 properties 파일을 불러오는 작업 수행
      String fileName = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
      
      try {
         prop.load(new FileReader(fileName));         
         
      } catch (IOException e) {
         e.printStackTrace();
      }      
   }
   
   public Member loginMember(Connection conn, String id, String pwd) {
      
      // 결과를 받아줄 변수
      Member loginUser = null;
      
      // sql구문을 실행할 객체 선언
      PreparedStatement pstmt = null;
      
      // sql구문 실행 후 조회된 결과를 담아줄 객체 선언
      ResultSet rset = null;
      
      // 실행할 sql구문
      String sql = prop.getProperty("loginMember");
      
      try {
         pstmt = conn.prepareStatement(sql);
         
         pstmt.setString(1, id);
         pstmt.setString(2, pwd);
         
         rset = pstmt.executeQuery();         
         
         if(rset.next()) {
            loginUser = new Member(rset.getInt("mem_num"),
                              rset.getString("mem_id"),
                              rset.getString("mem_pwd"),
                              rset.getString("mem_name"),
                              rset.getString("mem_gender"),
                              rset.getString("mem_phone"),
                              rset.getInt("nation_code"),                              
                              rset.getInt("mem_point"),                              
                              rset.getString("mem_type"),
                              rset.getString("mem_status"),
                              rset.getDate("enroll_date"),
                              rset.getDate("out_date"),
                              rset.getInt("noshow"));
         }
         
         } catch (SQLException e) {
            e.printStackTrace();
         } finally {
            close(rset);
            close(pstmt);
         }
         
         return loginUser;      
      }
   


   public int insertMember(Connection conn, Member mem) {
      
      int result = 0;
      
      PreparedStatement pstmt = null;
      
      String sql = prop.getProperty("insertMember");
      
      try {
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, mem.getMemId());
         pstmt.setString(2, mem.getMemPwd());
         pstmt.setString(3, mem.getMemName());
         pstmt.setString(4, mem.getMemGender());
         pstmt.setString(5, mem.getMemPhone());
         pstmt.setInt(6, mem.getNationCode());
         
         result = pstmt.executeUpdate();
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(pstmt);
      }
      return result;
   }


}