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
 * Servlet implementation class AjaxReservation
 */
@WebServlet("/reservAjax.ad")
public class AjaxReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxReservation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//reservation
		int rCount = new AdminService().reservationCount();
		int rCurrentPage; 
	    int rPageLimit;   
	    int rMaxPage;    
	    int rStartPage;  
	    int rEndPage;
	    int rBoardLimit = 10; 
	    System.out.println("sevlet rCount : "+rCount);
	    rCurrentPage = 1;
	    
	    if(request.getParameter("rCurrentPage") != null) {
	         rCurrentPage = Integer.parseInt(request.getParameter("rCurrentPage"));
	    }
	      
	    rPageLimit = 5;
	    rMaxPage = (int)Math.ceil((double)rCount/rBoardLimit);
	    rStartPage = (int)Math.floor(((double)rCurrentPage - 1) / rPageLimit) * rPageLimit + 1;  
	    rEndPage = rStartPage + rPageLimit - 1 ;
	       
	      if(rMaxPage < rEndPage) {
	         rEndPage = rMaxPage; 
	      }
		
		
		ArrayList<Reservation> rList = new AdminService().reservationSearch(rCurrentPage, rBoardLimit);
		PageInfo rPi = new PageInfo(rCurrentPage,rCount,rPageLimit,rMaxPage,rStartPage,rEndPage,rBoardLimit);
		
		request.setAttribute("rList", rList);
		request.setAttribute("rPi",rPi);

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
