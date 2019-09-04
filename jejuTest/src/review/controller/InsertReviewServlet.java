package review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import review.model.service.ReviewService;
import review.model.vo.Review;

/**
 * Servlet implementation class InsertReviewServlet
 */
@WebServlet("/insert.rv")
public class InsertReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertReviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNum = Integer.parseInt(request.getParameter("memNum"));
		int acmNum = Integer.parseInt(request.getParameter("acmNum"));
		int starPoint = Integer.parseInt(request.getParameter("starPoint"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String reservNum = request.getParameter("reservNum");
		
		/*System.out.println(memNum);
		System.out.println(acmNum);
		System.out.println(starPoint);
		System.out.println(title);
		System.out.println(content);*/
		
		Review review = new Review(memNum,acmNum,reservNum,starPoint,title,content);
		
		int result = new ReviewService().insertReview(review);
		
		if(result > 0) {
			System.out.println("리뷰 등록 성공");
			response.getWriter().print(result);
		} else {
			System.out.println("리뷰 등록 실패");
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
