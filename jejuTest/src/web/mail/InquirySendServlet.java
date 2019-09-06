package web.mail;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InquirySendServlet
 */
@WebServlet("/inquiry.we")
public class InquirySendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquirySendServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		 String name = request.getParameter("name");
		 String email = request.getParameter("email");
		 String message = request.getParameter("message");

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
	        	
	        	String subject = "문의 내역입니다" + "<" + email + ">";  // 제목
	        	String content = 									 // 내용
	        			
	        	        "<div>" +
        		        	"<div>" +
        		        		"<label>Name</label> <br>" +
//        		        		"<input type=\"text\" size=\"40\" value=" + name + " \"readonly\">" +	
        		        		name +
        		        	"</div>" +
		      		        		
						"<div>" +
							"<div>" +
								"<label>Email</label> <br>" +
//								"<input type=\"text\" size=\"40\" value=" + email+ " \"readonly\">" +	
								email +
							"</div>" +
						"</div>" +
								
						"<div>" +
							"<div>" +
								"<label>Writer Message</label><br>" +
								"<textarea cols=\"40\" rows=\"8\" readonly='readonly'\" style='background:red'>" + message + "</textarea>" +
							"</div>" +
						"</div>";
	        	
	        	System.out.println(name);
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
	        
	        response.sendRedirect("page.ow");
	    }
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
