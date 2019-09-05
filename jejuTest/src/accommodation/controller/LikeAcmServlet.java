package accommodation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import accommodation.model.service.AcmService;
import member.model.vo.Member;

/**
 * Servlet implementation class LikeAcmServlet
 */
@WebServlet("/like.ac")
public class LikeAcmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LikeAcmServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int likeFlag = Integer.parseInt(request.getParameter("likeFlag"));
		int acmNum = Integer.parseInt(request.getParameter("acmNum"));
		int memNum = (((Member)request.getSession().getAttribute("loginUser")).getMemNum());
		
		int result = 0;
		
		if(likeFlag == 1) {	// 체크 됐을때
			result = new AcmService().insertLike(memNum, acmNum);
			
		} else if(likeFlag == 2) {	// 체크 안됐을때
			result = new AcmService().deleteLike(memNum, acmNum);	
			
		}
		
		int result1 = 0;
		
		if(result > 0) {
			
			if(likeFlag == 1) {
				result1 = 1;
				response.getWriter().print(result1);
			} else if(likeFlag == 2) {
				result1 = 2;
				response.getWriter().print(result1);
			}
			
		} else {
			if(likeFlag == 1) {
				System.out.println("찜하기 실패");
			} else if(likeFlag == 2) {
				System.out.println("찜삭제 실패");
			}
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
