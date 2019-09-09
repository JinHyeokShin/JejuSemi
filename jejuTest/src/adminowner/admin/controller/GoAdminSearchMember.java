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
import adminowner.admin.model.vo.PageInfo;
import member.model.vo.Member;

/**
 * Servlet implementation class GoAdminSearchMember
 */
@WebServlet("/adminSearchMem.ad")
public class GoAdminSearchMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoAdminSearchMember() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int count = new AdminService().memberCount();
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
		
		
		ArrayList<Member> list = new AdminService().searchMember(currentPage, boardLimit);
		PageInfo pi = new PageInfo(currentPage,count,pageLimit,maxPage,startPage,endPage,boardLimit);
		AdminIndex ai = new AdminService().adminIndex();
		
		request.setCharacterEncoding("utf-8");
		request.setAttribute("ai", ai);
		request.setAttribute("list", list);
		request.setAttribute("pi",pi);
		request.getRequestDispatcher("views/adminowner/admin/searchMember.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
