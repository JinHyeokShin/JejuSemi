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
 * Servlet implementation class SearchPwdServlet
 */
@WebServlet("/searchPwdCheck.me")
public class SearchPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchPwdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memId = request.getParameter("memberId");
		String newPwd = request.getParameter("memberPwd");
//		System.out.println(memId);
		
		Member updateMem = new MemberService().updatePwd(memId, newPwd);
			
		if(updateMem !=null) { 
			
//			request.getSession().setAttribute("loginUser", updateMem);
			request.setAttribute("msg", "성공적으로 비밀번호를 변경하였습니다!");
			
		}else { 
			request.setAttribute("msg", "비밀번호 변경에 실패했습니다!");
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
