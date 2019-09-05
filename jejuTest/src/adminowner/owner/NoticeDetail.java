package adminowner.owner;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminowner.admin.model.service.AdminService;
import adminowner.admin.model.vo.Notice;

/**
 * Servlet implementation class NoticeDetail
 */
@WebServlet("/noticeDetail.ow")
public class NoticeDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int nNum = Integer.parseInt(request.getParameter("nNum"));
		Notice n = new AdminService().selectNotice(nNum);
		if(n!=null) {
			request.setAttribute("n",n);
			request.getRequestDispatcher("views/adminowner/owner/ownerNoticeDetail.jsp").forward(request, response);
		}else {
			request.setAttribute("msg", "공지사항 조회 실패");
//			오류페이지  보내주기.
			//			request.getRequestDispatcher()
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
