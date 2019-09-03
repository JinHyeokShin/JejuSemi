package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class KakaoLoginServlet
 */
@WebServlet("/kakaoLogin.me")
public class KakaoLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KakaoLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String kakaoId = request.getParameter("kakaoId");
		
		Member loginUser = new MemberService().kakaoLoginCheck(kakaoId);
		
		if(loginUser != null) {	// 카카오 아이디가 회원 db에 있을때 -> 로그인
			HttpSession session = request.getSession();	// 세션 생성
			session.setAttribute("loginUser", loginUser);	// 세션에 로그인한 회원정보 올림 
			response.sendRedirect(request.getContextPath());	// 메인페이지로 이동
			
		} else {	// 카카오 아이디가 회원 db에 없을때 -> 회원가입
			request.setAttribute("kakaoId", kakaoId);	// 리퀘스트에 카카오 아이디 올려서
			request.getRequestDispatcher("views/member/memberJoinForm.jsp").forward(request, response);	// 회원가입창으로 보내줌
			
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
