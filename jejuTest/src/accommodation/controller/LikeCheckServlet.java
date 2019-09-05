package accommodation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import accommodation.model.service.AcmService;

/**
 * Servlet implementation class LikeCheckServlet
 */
@WebServlet("/check.li")
public class LikeCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LikeCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNum = Integer.parseInt(request.getParameter("memNum"));
		int acmNum = Integer.parseInt(request.getParameter("acmNum"));
		
		System.out.println(memNum);
		System.out.println(acmNum);
		
		int result = new AcmService().checkLike(memNum, acmNum);
		
		System.out.println(result);
		
		if(result == 1) {
			response.getWriter().print(result);			
		} else if(result == 2) {
			System.out.println("찜하지 않은 숙소 입니다.");
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
