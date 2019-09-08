package adminowner.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import adminowner.admin.model.service.AdminService;
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
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//reservation
		int rCount = new AdminService().reservationCount();
		int rCurrentPage; 
	    int rPageLimit;   
	    int rMaxPage;    
	    int rStartPage;  
	    int rEndPage;
	    int rBoardLimit = 10; 

	    rCurrentPage = 1;
	    
	    if(request.getParameter("rCurrentPage") != null) {
	         rCurrentPage = Integer.parseInt(request.getParameter("rCurrentPage"));
	    }
	    System.out.println(rCurrentPage);
	    rPageLimit = 5;
	    rMaxPage = (int)Math.ceil((double)rCount/rBoardLimit);
	   

	      rStartPage = (int)Math.floor(((double)rCurrentPage - 1) / rPageLimit) * rPageLimit + 1;
	      
	    
	    
	    rEndPage = rStartPage + rPageLimit - 1 ;
	    if(rMaxPage < rEndPage) {
	       rEndPage = rMaxPage; 
	      }
		
		
		ArrayList<Reservation> rList = new AdminService().reservationSearch(rCurrentPage, rBoardLimit);
		
		JSONArray rArr = new JSONArray();
		for (Reservation r : rList) {
			JSONObject jsonReservation = new JSONObject();
			jsonReservation.put("reservNum",r.getReservNum());
			jsonReservation.put("memName",r.getMemName());
			jsonReservation.put("acmName",r.getAcmName());
			jsonReservation.put("roomName",r.getRoomName());
			jsonReservation.put("reservPax",r.getReservPax());
			jsonReservation.put("checkInDate",r.getCheckInDate());
			jsonReservation.put("checkOutDate",r.getCheckOutDate());
			jsonReservation.put("reservPrice",r.getReservPrice());
			jsonReservation.put("reservCancel",r.getReservCancel());
			jsonReservation.put("reservDate",r.getReservDate());
			jsonReservation.put("cancelDate",r.getCancelDate());
			jsonReservation.put("reservRequire",r.getReservRequire());
			jsonReservation.put("noShow",r.getNoShow());
			jsonReservation.put("status",r.getStatus());
			rArr.add(jsonReservation);
		}
		JSONObject rObj = new JSONObject();
		rObj.put("rCurrentPage", rCurrentPage);
		rObj.put("rCount", rCount);
		rObj.put("rPageLimit", rPageLimit);
		rObj.put("rMaxPage", rMaxPage);
		rObj.put("rStartPage", rStartPage);
		rObj.put("rEndPage", rEndPage);
		rObj.put("rBoardLimit", rBoardLimit);

		JSONObject send = new JSONObject();
		send.put("rArr", rArr);
		send.put("rObj", rObj);

		
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(send);
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
