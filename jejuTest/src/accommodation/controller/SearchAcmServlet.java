package accommodation.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import accommodation.model.service.AcmService;
import accommodation.model.vo.Acm;
import accommodation.model.vo.AcmImg;
import accommodation.model.vo.Search;

/**
 * Servlet implementation class SearchAcmServlet
 */
@WebServlet("/search.ac")
public class SearchAcmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchAcmServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String checkIn = request.getParameter("checkInDate");		// 검색위젯에서 받아온 체크인 날짜
		String checkOut = request.getParameter("checkOutDate");		// 검색위젯에서 받아온 체크아웃 날짜
		
		int adult = Integer.parseInt(request.getParameter("adult"));	// 검색위젯에서 받아온 성인 인원수
		int child = Integer.parseInt(request.getParameter("child"));	// 검색위젯에서 받아온 언린이 인원수
		
		request.setAttribute("checkIn", checkIn);		// 체크인 날짜 리퀘스트에 실어줌
		request.setAttribute("checkOut", checkOut);		// 체크아웃 날짜 리퀘스트에 실어줌
		
		System.out.println(checkIn);		// 콘솔 확인용 출력
		System.out.println(checkOut);
		System.out.println(adult);
		System.out.println(child);
		
		Search search = new Search(checkIn, checkOut, adult, child);	// search 객체로 묶어서 넘겨줄거임
		
		ArrayList<Acm> acmList = new AcmService().searchAcm(search);	// 검색 조건에 해당하는 숙소들 호출
		
		ArrayList<AcmImg> acmThumbnailImgList = new AcmService().acmThumbnailListView();	// 숙소 이미지 테이블에서 썸네일 이미지들만 모두 호출
		request.setAttribute("acmThumbnailImgList", acmThumbnailImgList);
				
		if(acmList != null) {
			request.setAttribute("acmList", acmList);
			request.getRequestDispatcher("views/searchResult/searchResult.jsp").forward(request, response);
			
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
