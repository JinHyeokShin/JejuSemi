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
 * Servlet implementation class MyDeletePwdServlet
 */
@WebServlet("/mydeletepwd.me")
public class MyDeletePwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyDeletePwdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memPwd = request.getParameter("memPwd");
		
		String memId = ((Member)request.getSession().getAttribute("loginUser")).getMemId();
		
		int result = new MemberService().deleteMember(memId);
		
		String msg = "";
		
		if(result != 0) {
			msg = "success";
		}else {
			msg = "fail";
		}
		
		request.setAttribute("msg", msg);
		
		RequestDispatcher view = request.getRequestDispatcher("views/member/myDelPwd.jsp");
		
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
