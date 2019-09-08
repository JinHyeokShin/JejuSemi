package adminowner.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminowner.admin.model.service.AdminService;
import adminowner.admin.model.vo.PageInfo;
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
		int count = new AdminService().reviewCount();
		int currentPage; 
	    int pageLimit;   
	    int maxPage;    
	    int startPage;  
	    int endPage;
	    int boardLimit = 10; 
	    currentPage = 1;
	    if(request.getParameter("currentPage") != null) {
	         currentPage = Integer.parseInt(request.getParameter("currentPage"));
	      }
	      
	    pageLimit = 5;
	    maxPage = (int)Math.ceil((double)count/boardLimit);
	    startPage = (int)Math.floor(((double)currentPage - 1) / pageLimit) * pageLimit + 1;  
	    endPage = startPage + pageLimit - 1 ;
	       
	      if(maxPage < endPage) {
	         endPage = maxPage; 
	      }
		
		ArrayList<Review> list = new AdminService().reviewList(currentPage, boardLimit);
		PageInfo pi = new PageInfo(currentPage,count,pageLimit,maxPage,startPage,endPage,boardLimit);
		
		System.out.println(list);
		
		request.setCharacterEncoding("utf-8");
		request.setAttribute("rList", list);
		request.setAttribute("pi",pi);
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
