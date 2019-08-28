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

/**
 * Servlet implementation class ReservationViewServlet
 */
@WebServlet("/reserv.ac")
public class ReservationViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReservationViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int acmNum = Integer.parseInt(request.getParameter("acmNum"));
		int roomNum = Integer.parseInt(request.getParameter("roomNum"));
		
		Acm acm = new AcmService().selectAcm(acmNum);
		request.setAttribute("acm", acm);
		
		Room room = new AcmService().selectRoom(roomNum);
		request.setAttribute("room", room);
		
		ArrayList<AcmImg> acmImgList = new AcmService().acmImgListView(acmNum);			
		request.setAttribute("acmImgList", acmImgList);
		
		request.getRequestDispatcher("views/reservation/reservation.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
