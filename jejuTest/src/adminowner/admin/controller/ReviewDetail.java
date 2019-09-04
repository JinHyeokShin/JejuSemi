package adminowner.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminowner.admin.model.service.AdminService;
import review.model.vo.Review;

/**
 * Servlet implementation class ReviewDetail
 */
@WebServlet("/reviewDetail.ad")
public class ReviewDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rNum =Integer.parseInt(request.getParameter("rNum"));
		Review r = new AdminService().reviewDetail(rNum);
		if(r!=null) {
			request.setAttribute("r", r);
			request.getRequestDispatcher("views/adminowner/admin/reviewDetail.jsp").forward(request, response);
		}else {
			request.setAttribute("msg", "리뷰 조회 실패");
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
