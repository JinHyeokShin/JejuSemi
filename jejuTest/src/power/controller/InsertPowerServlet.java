package power.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import accommodation.model.vo.Acm;
import payment.model.vo.Payment;
import power.model.service.PowerService;
import power.model.vo.Power;

/**
 * Servlet implementation class GoPayment
 */
@WebServlet("/payBtnClick.ow")
public class InsertPowerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertPowerServlet() {
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
		
		String payMethod = request.getParameter("payMethod");
  	  	int acmNum = Integer.parseInt(request.getParameter("acmNum"));
  	  	int flag =Integer.parseInt(request.getParameter("flag"));
  	  	int price =Integer.parseInt(request.getParameter("price"));
  	  	Payment pay = new Payment(payNum, reservNum, price, confirmNum, payMethod);
  	  	
		Power pow = new Power(acmNum, payNum, flag);
		
		Acm acm = new Acm(acmNum);
		
		System.out.println(payNum);
		System.out.println(reservNum);
		System.out.println(payPrice);
		System.out.println(price);
		System.out.println(confirmNum);
		
		System.out.println(payMethod);
		System.out.println(acmNum);
		System.out.println(flag);

		int result = new PowerService().insertPayment(pay, pow, acm);
		
		
		if(result > 0) {
			response.getWriter().print(flag);
		}
		/*request.getRequestDispatcher("views/adminowner/owner/payment.jsp").forward(request, response);*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
