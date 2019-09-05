package web.mail;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class PwdSendServlet
 */
@WebServlet("/pwdCodeSend.we")
public class PwdSendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PwdSendServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String memberId = request.getParameter("memberId");
//		 System.out.println(memberId);
		 
		 Member mem = new MemberService().searchPwd(memberId);
//		 System.out.println(mem);
		 if(mem == null) {
			 
			 System.out.println("이메일 정보가 맞지 않습니다.");
		 }		 
		 
		 // smtp 서버 정보 설정
		 Properties prop = System.getProperties();
	        
	        prop.put("mail.smtp.starttls.enable", "true");
	        prop.put("mail.smtp.host", "smtp.gmail.com");
	        prop.put("mail.smtp.auth", "true");
	        prop.put("mail.smtp.port", "587");
	        
	        //인증 번호 생성기
	        StringBuffer temp =new StringBuffer();
	        Random rnd = new Random();
	        for(int i=0;i<10;i++){
	        	
	            int rIndex = rnd.nextInt(3);
	            
	            switch (rIndex) {
	            case 0:
	                // a-z
	                temp.append((char) ((int) (rnd.nextInt(26)) + 97));
	                break;
	            case 1:
	                // A-Z
	                temp.append((char) ((int) (rnd.nextInt(26)) + 65));
	                break;
	            case 2:
	                // 0-9
	                temp.append((rnd.nextInt(10)));
	                break;
	            }
	        }
	        
	        String AuthenticationKey = temp.toString();
	        System.out.println(AuthenticationKey);
	        
	        Authenticator auth = new MailAuth();
	        
	        Session session = Session.getDefaultInstance(prop, auth);
	    
	        MimeMessage msg = new MimeMessage(session);
	        
	        try {
	        	System.out.println(mem.getMemId());
	            msg.setSentDate(new Date());            
	            msg.setFrom(new InternetAddress("sangyoon2ya@gamil.com", "관리자"));
	            InternetAddress to = new InternetAddress(mem.getMemId());         
	            msg.setRecipient(Message.RecipientType.TO, to);            
	            msg.setSubject("메일 인증 확인입니다.", "UTF-8");            
	            msg.setText("인증번호는" + " " + temp + " " + "입니다.", "UTF-8");            
	            
	            Transport.send(msg);
	            System.out.println("이메일 전송");
	            
	            response.getWriter().print(temp);
	            
	        }catch (Exception e) {
                e.printStackTrace();// 
            }
	                   
	    }
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
