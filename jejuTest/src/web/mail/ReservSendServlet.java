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
	        			
	        	"<div style=\"line-height: 1.8em;\">" +	
	        		"<div>" +
	        			"<p><h2>" + reservName + "고객님 감사합니다! 고객님의 예약이 완료되었습니다!" + "</h2></p>" +
	        			"<ul>" +
		        			"<li>예약 내역 확인을 부탁드립니다</li>" +
		        			"<li>예약 관련 문제 발생 시, 고객센터에 문의 바랍니다.</li>" +
		        			"<li>체크인 시, 인쇄된 바우처 사본 또는 모바일 바우처를 호텔 직원에게 제시해 주세요." + "</li>" +
	        			"<br>" + 
	        			"<hr>" +
	        			
	        			"<h2 style='color:blue'>예약 내역 확인</h2><br>" +

	        	        "<div>" +
	    		        	"<div>" +
	    		        		"<b><label>예약자명 : </label></b>" +
	    		        		"<lable style='margin-left:30px;'>" + reservName + "</lable>" +	
	    		        	"</div>" +
	    		        	
							"<div>" +
								"<b><label>핸드폰 번호 : </label></b>" +
								"<lable style='margin-left:30px;'>" + reservPhone + "</lable>" +	 
							"</div>" +
						"</div>" +
		      		        		
						"<div>" +
							"<div>" +
								"<b><label>이메일 주소 : </label></b>" +
								"<lable style='margin-left:30px;'>" + reservEmail + "</lable>" +		
							"</div>" +
						"</div>" +
							
						"<div>" +
							"<div>" +
								"<b><label>숙소명 : </label></b>" +
								"<lable style='margin-left:30px;'>" + acmName + "</lable>" +	
							"</div>" +
						"</div>" +
							
						"<div>" +
							"<div>" +
								"<b><label>객실명 : </label></b>" +
								"<lable style='margin-left:30px;'>" + roomName + "</lable>" +	
							"</div>" +
						"</div>" +
							
						"<div>" +
							"<div>" +
								"<b><label>결제방법 : </label></b>" +
								"<lable style='margin-left:30px;'>" + payMethod + "</lable>" +	
							"</div>" +
						"</div>" +
							
						"<div>" +
							"<div>" +
								"<b><label>예약인원 : </label></b>" +
								"<lable style='margin-left:30px;'>" + reservPax + "명" + "</lable>" +	
							"</div>" +
						"</div>" +
						
							
						"<div>" +
							"<div>" +
								"<b><label>가격 : </label></b>" +
								"<lable style='margin-left:30px;'>" + reservPrice + "원" + "</lable>" +	
							"</div>" +
						"</div>" +
							
						"<div>" +
							"<div>" +
								"<b><label>체크인 : </label></b>" +
								"<lable style='margin-left:30px;'>" + checkIn + "</lable>" +	
							"</div>" +
						"</div>" +
							
						"<div>" +
							"<div>" +
								"<b><label>체크아웃 : </label></b>" +
								"<lable style='margin-left:30px;'>" + checkOut + "</lable>" +	
							"</div>" +
						"</div>" +
								
						"<div>" +
							"<div>" +
								"<b><label>요구사항 : </label></b><br>" +
								"<textarea cols=\"40\" rows=\"8\" readonly='readonly'\"style=\"border:none\">" + reservRequire + "</textarea>" +
							"</div>" +
						"</div>" +
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
