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
 * Servlet implementation class ReservSendServlet
 */
@WebServlet("/reservSend.we")
public class ReservSendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReservSendServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		 // 한글 깨짐이 생기기 때문에 문자를 변경해줘야 한다.	 
		 String reservName = request.getParameter("reservName");
		 String reservEmail = request.getParameter("reservEmail");
		 String reservPhone = request.getParameter("reservPhone");
		 String reservRequire = request.getParameter("reservRequire");
		 String payMethod = request.getParameter("payMethod");
		 String reservPrice = request.getParameter("reservPrice");
		 String acmName = request.getParameter("acmName");
		 String roomName = request.getParameter("roomName");
		 String reservPax = request.getParameter("reservPax");
		 String checkIn = request.getParameter("checkIn");
		 String checkOut = request.getParameter("checkOut");
		
		
	
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
	        	
	        	String subject = "예약이 완료되었습니다." + "<" + reservEmail + ">";  // 제목
	        	String content = 	// 내용
	        			
	        	        "<div>" +
	    		        	"<div>" +
	    		        		"<label>Name</label> <br>" +
	    		        		"<input type=\"text\" size=\"40\" value=" + reservName + " \"readonly\">" +	 
	    		        	"</div>" +
	    		        	
							"<div>" +
								"<label>Phone</label> <br>" +
								"<input type=\"text\" size=\"40\" value=" + reservPhone + " \"readonly\">" +	 
							"</div>" +
						"</div>" +
		      		        		
						"<div>" +
							"<div>" +
								"<label>Email</label> <br>" +
								"<input type=\"text\" size=\"40\" value=" + reservEmail + " \"readonly\">" +	
							"</div>" +
						"</div>" +
							
						"<div>" +
							"<div>" +
								"<label>Accommodation</label> <br>" +
								"<input type=\"text\" size=\"40\" value=" + acmName + " \"readonly\">" +	
							"</div>" +
						"</div>" +
							
						"<div>" +
							"<div>" +
								"<label>Room</label> <br>" +
								"<input type=\"text\" size=\"40\" value=" + roomName + " \"readonly\">" +	
							"</div>" +
						"</div>" +
							
						"<div>" +
							"<div>" +
								"<label>결제방법</label> <br>" +
								"<input type=\"text\" size=\"40\" value=" + payMethod + "명  \"readonly\">" +	
							"</div>" +
						"</div>" +
							
						"<div>" +
							"<div>" +
								"<label>예약인원</label> <br>" +
								"<input type=\"text\" size=\"40\" value=" + reservPax + "명  \"readonly\">" +	
							"</div>" +
						"</div>" +
						
							
						"<div>" +
							"<div>" +
								"<label>가격</label> <br>" +
								"<input type=\"text\" size=\"40\" value=" + reservPrice + " \"readonly\">" +	
							"</div>" +
						"</div>" +
							
						"<div>" +
							"<div>" +
								"<label>체크인</label> <br>" +
								"<input type=\"text\" size=\"40\" value=" + checkIn + " \"readonly\">" +	
							"</div>" +
						"</div>" +
							
						"<div>" +
							"<div>" +
								"<label>체크아웃</label> <br>" +
								"<input type=\"text\" size=\"40\" value=" + checkOut + " \"readonly\">" +	
							"</div>" +
						"</div>" +
								
						"<div>" +
							"<div>" +
								"<label>요구사항</label><br>" +
								"<textarea cols=\"40\" rows=\"8\" readonly='readonly'\">" + reservRequire + "</textarea>" +
							"</div>" +
						"</div>";
	        	
//	        	System.out.println(name);
//	        	System.out.println(phone);
//	        	System.out.println(email);
//	        	System.out.println(message);
	        	
	        	msg.setSentDate(new Date());		// 날짜 	
		        msg.setSubject(subject, "EUC-KR");						
		        msg.setSubject(subject, "UTF-8");
		        msg.setContent(content, "text/html; charset=UTF-8");
		        msg.setContent(content, "text/html; charset=EUC-KR");
		        
		        msg.setHeader("Content-Transfer-Encoding", "quoted-printable");
	
	        	msg.setFrom(new InternetAddress("sangyoon2ya@gmail.com", "관리자" ,"UTF-8"));			// 발신자
	        	
	        	InternetAddress to = new InternetAddress(reservEmail, reservName,"UTF-8");		// 수신자
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
	        
	        System.out.println("예약 메일 전송 완료");
	    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
