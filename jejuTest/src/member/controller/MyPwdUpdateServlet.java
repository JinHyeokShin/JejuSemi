package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class MyPwdUpdateServelt
 */
@WebServlet(name="MyPwdUpdateServlet", urlPatterns="/myPwd.me")

public class MyPwdUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPwdUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		// 현재 비밀번호, 새로운 비밀번호
		
		String memPwd = request.getParameter("memPwd");
		String newPwd = request.getParameter("newPwd");
		
		String memId = ((Member)request.getSession().getAttribute("loginUser")).getMemId();
		
		Member updateMem = new MemberService().updateMyPwd(memId, memPwd, newPwd);
		
		String msg = "";
		
		if(updateMem.getMemId() != null) {
			msg = "success";
		}else {
			msg = "fail";
		}
		
		request.setAttribute("msg", msg);
		// 성공이던 실패던 동일한 페이지가 보여지게끔
		RequestDispatcher view = request.getRequestDispatcher("views/member/myPwdUp.jsp");
		
		view.forward(request, response);
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
