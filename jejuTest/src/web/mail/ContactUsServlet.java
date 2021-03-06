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
import javax.mail.internet.MimeUtility;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class ContactUsServlet
 */
@WebServlet("/contact.we")
public class ContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactUsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		
		 request.setCharacterEncoding("utf-8");
		 // 한글 깨짐이 생기기 때문에 문자를 변경해줘야 한다.
		 String name = new String(request.getParameter("name"));
		 String phone = new String(request.getParameter("phone"));
		 String email = new String(request.getParameter("email"));
		 String message = new String(request.getParameter("message"));
		 
		 response.setCharacterEncoding("utf-8");

		 Properties prop = System.getProperties();
	        
	        prop.put("mail.smtp.starttls.enable", "true");
	        prop.put("mail.smtp.host", "smtp.gmail.com");
	        prop.put("mail.smtp.auth", "true");
	        prop.put("mail.smtp.port", "587");
	        
	        Authenticator auth = new MailAuth();
	        
	        Session session = Session.getDefaultInstance(prop, auth);
	        
        	MimeMessage msg = new MimeMessage(session);
	        
	        try {
	        	
	        	 //String 제목 = new String(제목.getBytes("EUC-KR"),"8859_1");
	        	
	        	String subject = "사용자 문의 내역입니다" + "<" + email + ">";  // 제목
	        	String content = 									 // 내용
	        		"<div>" +
	        			"<h3 style='color:blue'><" + name + " 님이 문의하신 내용입니다.>" + "</h3>" +
	        	        "<div>" +
        		        	"<div>" +
        		        		"<b><label>Name</label></b> <br>" +
        		        		"<input type=\"text\" size=\"40\" value=" + name + " \"readonly\">" +	 
        		        	"</div>" +
        		        	
							"<div>" +
								"<b><label>Phone</label></b> <br>" +
								"<input type=\"text\" size=\"40\" value=" + phone + " \"readonly\">" +	 
							"</div>" +
						"</div>" +
		      		        		
						"<div>" +
							"<div>" +
								"<b><label>Email</label></b> <br>" +
								"<input type=\"text\" size=\"40\" value=" + email.toString() + " \"readonly\">" +	
							"</div>" +
						"</div>" +
								
						"<div>" +
							"<div>" +
								"<b><label>Writer Message</label></b><br>" +
								"<textarea cols=\"40\" rows=\"9\" readonly='readonly'\">" + message + "</textarea>" +
							"</div>" +
						"</div>" +
					"</div>";
	        	
	        	System.out.println(name);
	        	System.out.println(phone);
	        	System.out.println(email);
	        	System.out.println(message);
	        	
	        	msg.setSentDate(new Date());		// 날짜 	
		        msg.setSubject(subject, "EUC-KR");						
		        msg.setSubject(subject, "UTF-8");
		        msg.setContent(content, "text/html; charset=UTF-8");
		        msg.setContent(content, "text/html; charset=EUC-KR");
		        
		        msg.setHeader("Content-Transfer-Encoding", "quoted-printable");

	        	msg.setFrom(new InternetAddress("sangyoon2ya@gmail.com", name ,"euc-kr"));	// 발신자
	        	
	        	InternetAddress to = new InternetAddress("sangyoon5_4@naver.com", "관리자" ,"euc-kr");		// 수신자
	        	msg.setRecipient(Message.RecipientType.TO, to);            
	        		            
	            Transport.send(msg);  
	            
	            System.out.println("이메일 전송");
	            System.out.println(msg);   
	            
	            response.getWriter().print(msg);
	            
	        }   catch (MessagingException me) {
	        		me.printStackTrace();
	        }	catch (Exception e) {
	        		e.printStackTrace();
	        }  
	        
	        response.sendRedirect(request.getContextPath());
	    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
