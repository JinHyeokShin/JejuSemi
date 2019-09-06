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
 * Servlet implementation class UpdateMemberServlet
 */
@WebServlet("/update.me")
public class UpdateMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String memId = request.getParameter("memId");
		String memName = request.getParameter("memName");
		String memPhone = request.getParameter("memPhone");	
		int nationCode = Integer.parseInt(request.getParameter("nationCode"));
		
		Member mem = new Member(memId, memName, memPhone, nationCode);
		
		Member updateMem = new MemberService().updateMember(mem);
		
		if(updateMem != null) { // 회원 정보 수정이 됐다면
			
			request.getSession().setAttribute("loginUser", updateMem);
			request.getSession().setAttribute("msg", "성공적으로 회원정보를 수정했습니다.");
			response.sendRedirect(request.getContextPath());	

		}else { // 회원정보 수정에 실패했을 경우
			
			request.setAttribute("msg", "회원 정보 수정에 실패했습니다.");
			RequestDispatcher view = request.getRequestDispatcher("views/member/myMe.jsp");
			view.forward(request, response);
			
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
