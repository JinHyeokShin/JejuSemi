package member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import accommodation.model.vo.Acm;
import accommodation.model.vo.AcmImg;
import adminowner.admin.model.service.AdminService;
import adminowner.admin.model.vo.AdminIndex;
import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet(name="LoginServlet", urlPatterns="/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		System.out.println(userId + " " + userPwd);
		
		

		Member loginUser = new MemberService().loginMember(userId, userPwd);
		if (loginUser == null) { // 로그인 실패
			request.setAttribute("msg", "로그인 실패");

			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			view.forward(request, response);

		}else {	// 로그인 성공
			HttpSession session = request.getSession();

			// session.setMaxInactiveInterval(600); // 10분(600초)뒤 자동 로그아웃
			session.setAttribute("loginUser", loginUser);
			
			
			if ((loginUser.getMemType()).equals("U")) {

				// 로그인 완료 후 다시 메인 페이지로
				response.sendRedirect(request.getContextPath());
			} else if ((loginUser.getMemType()).equals("A")) {
				// 로그인 완료 후 다시 메인 페이지로
				response.sendRedirect("adminIndex.ad");
				
				
			} else if (loginUser.getMemType().equals("O")) {
				int memNum = loginUser.getMemNum();
				Acm acm = new MemberService().getAcm(memNum);
				int acmNum = acm.getAcmNum();
				ArrayList<AcmImg> acmImgList = new MemberService().acmImgList(acmNum);
				
				session.setAttribute("acmImgList", acmImgList);
				session.setAttribute("acm", acm);
				// 로그인 완료 후 다시 메인 페이지로
				response.sendRedirect("page.ow");
			}

		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
