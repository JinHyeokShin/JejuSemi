package review.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import accommodation.model.service.AcmService;
import accommodation.model.vo.AcmImg;
import review.model.service.ReviewService;
import review.model.vo.Review;

/**
 * Servlet implementation class MyReviewListViewServlet
 */
@WebServlet("/myReview.rv")
public class MyReviewListViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyReviewListViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNum = Integer.parseInt(request.getParameter("memNum"));
		
		ArrayList<Review> reviewList = new ReviewService().selectReviewList(memNum);	// 내 리뷰 목록 호출	
		ArrayList<AcmImg> acmThumbnailImgList = new AcmService().acmThumbnailListView();			// 숙소 대표 사진들 호출
		
		request.setAttribute("reviewList", reviewList);
		request.setAttribute("acmThumbnailImgList", acmThumbnailImgList);
		
		request.getRequestDispatcher("views/member/myReview.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
