package adminowner.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminowner.admin.model.service.AdminService;
import adminowner.admin.model.vo.AdminIndex;
import adminowner.admin.model.vo.Notice;

/**
 * Servlet implementation class GoAdminIndex
 */
@WebServlet("/adminIndex.ad")
public class GoAdminIndex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoAdminIndex() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result = new AdminService().adminPowerAutoSus();
		AdminIndex ai = new AdminService().adminIndex();
		ArrayList<Notice> nList = new AdminService().selectNList();
		
		
		System.out.println(result);
		request.setAttribute("nList",nList);
		request.setAttribute("ai", ai);
		
		request.getRequestDispatcher("views/adminowner/admin/adminIndex.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
