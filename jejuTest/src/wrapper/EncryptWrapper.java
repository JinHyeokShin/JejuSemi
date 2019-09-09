package wrapper;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import oracle.sql.CharacterSet;

public class EncryptWrapper extends HttpServletRequestWrapper{

   public EncryptWrapper(HttpServletRequest request) {
      super(request);
      
   }

   @Override
   public String getParameter(String key) {
      
      String value = "";
      
      // request에 담긴 파라미터 key값이 userPwd 또는 newPwd인 경우
      if(key != null && (key.equals("userPwd") || key.equals("newPwd"))) {

         // 암호화한 value값 작성
         value = getSha512(super.getParameter(key));
         
      } else {   // key값이 그 외일 경우
         
         // 그냥 value값 반환
         value = super.getParameter(key);
      }
      
      return value;
   }
   
   /**
    * 전달받은 비밀번호를 암호화 적용해서 암호화된 비밀번호가 반환되는 메소드
    * @param userPwd
    * @return
    */
   public String getSha512(String memPwd) {
      
      String encPwd = "";
      
      // sha-512방식의 암호화 객체
      MessageDigest md = null;
      
      try {
         md = MessageDigest.getInstance("SHA-512");
                  
      } catch (NoSuchAlgorithmException e) {
         e.printStackTrace();
      }      
      
      // 전달받은 비밀번호를 바이트 배열로 받아주기
      byte[] bytes = memPwd.getBytes(Charset.forName("UTF-8"));
      
      // md 객체에 변환된 배열을 전달해서 갱신
      md.update(bytes);
      
      // java.util.Base64 인코더를 이용해서 암호화된 바이트 배열을 인코딩과정을 통해 문자열로 출력
      encPwd = Base64.getEncoder().encodeToString(md.digest());
            
      return encPwd;
   }
   
   

}