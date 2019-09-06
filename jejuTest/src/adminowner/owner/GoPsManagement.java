package adminowner.owner;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import accommodation.model.vo.Acm;
import adminowner.admin.model.vo.PageInfo;
import review.model.service.OwnerReviewService;
import review.model.vo.Review;

/**
 * Servlet implementation class GoPsManagement
 */
@WebServlet("/psManagement.ow")
public class GoPsManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoPsManagement() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acmName = ((Acm)request.getSession().getAttribute("acm")).getAcmName();
		
		int count = new OwnerReviewService().reviewCount(acmName);
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
		
		ArrayList<Review> list = new OwnerReviewService().reviewList(currentPage, boardLimit, acmName);
		PageInfo pi = new PageInfo(currentPage,count,pageLimit,maxPage,startPage,endPage,boardLimit);
		
		request.setCharacterEncoding("utf-8");
		request.setAttribute("rList", list);
		request.setAttribute("pi",pi);
		
		request.getRequestDispatcher("views/adminowner/owner/psManagement.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
