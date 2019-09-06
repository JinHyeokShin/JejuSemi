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
import adminowner.admin.model.vo.PageInfo;
import payment.model.vo.Payment;

/**
 * Servlet implementation class AjaxPayment
 */
@WebServlet("/paymentAjax.ad")
public class AjaxPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxPayment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		payment
		int pCount = new AdminService().paymentCount();
		int pCurrentPage; 
	    int pPageLimit;   
	    int pMaxPage;    
	    int pStartPage;  
	    int pEndPage;
	    int pBoardLimit = 10; 
	    
	    pCurrentPage = 1;
	    
	    if(request.getParameter("currentPage") != null) {
	    	pCurrentPage = Integer.parseInt(request.getParameter("currentPage"));
	    }
	      
	    pPageLimit = 5;
	    pMaxPage = (int)Math.ceil((double)pCount/pBoardLimit);
	    pStartPage = (int)Math.floor(((double)pCurrentPage - 1) / pPageLimit) * pPageLimit + 1;  
	    pEndPage = pStartPage + pPageLimit - 1 ;
	       
	      if(pMaxPage < pEndPage) {
	    	  pEndPage = pMaxPage; 
	      }
		
		
		ArrayList<Payment> pList = new AdminService().paymentSearch(pCurrentPage, pBoardLimit);
		PageInfo pPi = new PageInfo(pCurrentPage,pCount,pPageLimit,pMaxPage,pStartPage,pEndPage,pBoardLimit);
		
		JSONArray pArr = new JSONArray();
		for (Payment p : pList) {
			JSONObject jsonPayment = new JSONObject();
			jsonPayment.put("payNum",p.getPayNum());
			jsonPayment.put("resNum",p.getReservNum());
			jsonPayment.put("payPrice",p.getPayPrice());
			jsonPayment.put("confirmNum",p.getConfirmNum());
			jsonPayment.put("payMethod",p.getPayMethod());
			jsonPayment.put("paycanel",p.getPayCancel());
			jsonPayment.put("payDate",p.getPayDate());
			jsonPayment.put("cancelDate",p.getCancelDate());
			pArr.add(jsonPayment);
		}
		
			JSONObject pObj = new JSONObject();
			pObj.put("pCurrentPage", pCurrentPage);
			pObj.put("pCount", pCount);
			pObj.put("pPageLimit", pPageLimit);
			pObj.put("pMaxPage", pMaxPage);
			pObj.put("pStartPage", pStartPage);
			pObj.put("pEndPage", pEndPage);
			pObj.put("pBoardLimit", pBoardLimit);
	
			JSONObject send = new JSONObject();
			send.put("pArr", pArr);
			send.put("pObj", pObj);
	
			
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
