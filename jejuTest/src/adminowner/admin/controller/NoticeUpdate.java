package adminowner.admin.controller;

import adminowner.admin.model.service.AdminService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminowner.admin.model.vo.Notice;

/**
 * Servlet implementation class NoticeUpdate
 */
@WebServlet("/noticeUpdate.ad")
public class NoticeUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int nNum = Integer.parseInt(request.getParameter("nNum"));
		String nTitle =request.getParameter("nTitle");
		String nContent =request.getParameter("nContent");
		
		Notice n = new Notice();
		n.setnNum(nNum);
		n.setnTitle(nTitle);
		n.setnContent(nContent);
		int result = new AdminService().updateNotice(n);
		
		response.sendRedirect("adminNotice.ad");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
