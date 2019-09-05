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
import reservation.model.vo.Reservation;

/**
 * Servlet implementation class ReservationList
 */
@WebServlet("/ReservationList.ad")
public class ReservationList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReservationList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int count = new AdminService().reservationCount();
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
		
		
		ArrayList<Reservation> rList = new AdminService().reservationSearch(currentPage, boardLimit);
		PageInfo pi = new PageInfo(currentPage,count,pageLimit,maxPage,startPage,endPage,boardLimit);
		
		
		
		System.out.println("ReservationListServletSucc");
		request.setCharacterEncoding("utf-8");
		request.setAttribute("rlist", rList);
		request.setAttribute("rPi",pi);
		request.getRequestDispatcher("views/adminowner/admin/reservationList.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
