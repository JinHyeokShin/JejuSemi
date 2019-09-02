package adminowner.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminowner.admin.model.service.AdminService;
import review.model.vo.Review;

/**
 * Servlet implementation class GoAdminSearchReview
 */
@WebServlet("/adminSearchReview.ad")
public class GoAdminSearchReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoAdminSearchReview() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int count = new AdminService().reviewCount();
//		ArrayList<Review> list = new AdminService().reviewList();
//		
//		request.setCharacterEncoding("utf-8");
//
//		request.setAttribute("rList", list);
//		request.setAttribute("rCount", count);
		
		request.getRequestDispatcher("views/adminowner/admin/searchReview.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
