package reservation.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import accommodation.model.service.AcmService;
import accommodation.model.vo.AcmImg;
import member.model.vo.Member;
import reservation.model.service.ReservationService;
import reservation.model.vo.Reservation;

/**
 * Servlet implementation class MyReservationViewServlet
 */
@WebServlet("/reserv.me")
public class MyReservationViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyReservationViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNum = Integer.parseInt(request.getParameter("memNum"));
		
		ArrayList<Reservation> rList = new ReservationService().myReservListView(memNum);	// 로그인한 유저의 모든 예약 내역 호출	
		request.setAttribute("rList", rList);
		
		ArrayList<AcmImg> acmThumbnailImgList = new AcmService().acmThumbnailListView();	// 숙소 이미지 테이블에서 썸네일 이미지들만 모두 호출
		request.setAttribute("acmThumbnailImgList", acmThumbnailImgList);
				
		request.getRequestDispatcher("views/member/myReservation.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
