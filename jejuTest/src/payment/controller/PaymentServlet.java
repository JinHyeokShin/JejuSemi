package payment.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.vo.Member;
import payment.model.service.PaymentService;
import payment.model.vo.Payment;
import reservation.model.service.ReservationService;
import reservation.model.vo.Reservation;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/payment.py")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String payNum = request.getParameter("payNum");
		String reservNum = request.getParameter("reservNum");
		int payPrice = Integer.parseInt(request.getParameter("payPrice"));
		String confirmNum = request.getParameter("confirmNum");
		
		String reservName = request.getParameter("reservName");
		String reservEmail = request.getParameter("reservEmail");
		String reservPhone = request.getParameter("reservPhone");
		String reservRequire = request.getParameter("reservRequire");
		String payMethod = request.getParameter("payMethod");
		int reservPrice = Integer.parseInt(request.getParameter("reservPrice"));
		int reservPax = Integer.parseInt(request.getParameter("reservPax"));
		String checkIn = request.getParameter("checkIn");
		String checkOut = request.getParameter("checkOut");
		int roomNum = Integer.parseInt(request.getParameter("roomNum")); 
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
		System.out.println(confirmNum);
		
		Payment pay = new Payment(payNum, reservNum, payPrice, confirmNum, payMethod);
		Reservation reserv = new Reservation(reservNum, loginUser.getMemNum(), roomNum, reservPax, checkIn, checkOut, reservPrice, reservRequire);
		
		int result = new PaymentService().insertPayment(pay, reserv);
		
		if(result > 0) {
			response.getWriter().print(reservNum);			
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
