package reply.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import accommodation.model.vo.Acm;
import member.model.service.MemberService;
import member.model.vo.Member;
import reply.model.service.ReplyService;
import reply.model.vo.Reply;
import review.model.vo.Review;

/**
 * Servlet implementation class InsertReplyServlet
 */
@WebServlet("/insertReply.ow")
public class InsertReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertReplyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int reviewNum = Integer.parseInt(request.getParameter("reviewNum"));
		String reviewContent = request.getParameter("reply");
		System.out.println(reviewNum);
		System.out.println(reviewContent);
		
	      	
	      Reply reply = new Reply(reviewNum, reviewContent);
	      
//	      mem = new MemberService().selectNation(mem);
	      
	      int result = new ReplyService().insertReply(reply);

	      if (result > 0) {

	         request.getSession().setAttribute("msg", "댓글작성!!");
	         
	         response.sendRedirect("page.ow");

	      } else {
	         request.setAttribute("msg", "리뷰 작성 실패 !");

	         RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
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
