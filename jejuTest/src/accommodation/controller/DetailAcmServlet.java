package accommodation.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import accommodation.model.service.AcmService;
import accommodation.model.vo.Acm;
import accommodation.model.vo.AcmImg;
import accommodation.model.vo.Room;
import review.model.service.ReviewService;

/**
 * Servlet implementation class DetailAcmServlet
 */
@WebServlet("/detail.ac")
public class DetailAcmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailAcmServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int acmNum = Integer.parseInt(request.getParameter("acmNum"));
				
		Acm acm = new AcmService().selectAcm(acmNum);
		String checkIn = request.getParameter("checkIn");
		String checkOut = request.getParameter("checkOut");
		
				
		if(acm != null) {
			request.setAttribute("acm", acm);
			ArrayList<AcmImg> acmImgList = new AcmService().acmImgListView(acmNum);			
			request.setAttribute("acmImgList", acmImgList);
			ArrayList<Room> roomList = new AcmService().selectRoomList(acmNum,checkIn,checkOut);
			request.setAttribute("roomList", roomList);
			double avg = new ReviewService().selectAvg(acmNum);
			request.setAttribute("avg", avg);
			
			request.getRequestDispatcher("views/accommodation/acmDetail.jsp").forward(request, response);			
		} else {
			
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
