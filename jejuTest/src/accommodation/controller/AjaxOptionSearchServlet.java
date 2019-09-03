package accommodation.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import accommodation.model.service.AcmService;
import accommodation.model.vo.Acm;
import accommodation.model.vo.AcmImg;
import accommodation.model.vo.Option;
import accommodation.model.vo.Search;

/**
 * Servlet implementation class AjaxOptionSearchServlet
 */
@WebServlet("/option.ac")
public class AjaxOptionSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxOptionSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String checkIn = request.getParameter("checkIn");		// 검색위젯에서 받아온 체크인 날짜
		String checkOut = request.getParameter("checkOut");		// 검색위젯에서 받아온 체크아웃 날짜
		
		int adult = Integer.parseInt(request.getParameter("adult"));	// 검색위젯에서 받아온 성인 인원수
		int child = Integer.parseInt(request.getParameter("child"));	// 검색위젯에서 받아온 언린이 인원수
		
		int page = Integer.parseInt(request.getParameter("page"));
		
		request.setAttribute("checkIn", checkIn);		// 체크인 날짜 리퀘스트에 실어줌
		request.setAttribute("checkOut", checkOut);		// 체크아웃 날짜 리퀘스트에 실어줌
		
		String[] arrType = request.getParameterValues("arrType[]");
		String[] arrDist = request.getParameterValues("arrDist[]");
		String[] arrStar = request.getParameterValues("arrStar[]");
		String[] arrPrice = request.getParameterValues("arrPrice[]");
		
		System.out.println(arrType[0]);
		System.out.println(arrDist[0]);
		System.out.println(arrStar[0]);
		System.out.println(arrPrice[0]);
		
		
		Search search = new Search(checkIn, checkOut, adult, child, page);	// search 객체로 묶어서 넘겨줌
		Option option = new Option(arrType, arrDist, arrStar, arrPrice);	// option 객체로 묶어서 넘겨줌
		
		
		ArrayList<Acm> acmList = new AcmService().searchAcmOption(search, option);	// 검색 조건에 해당하는 숙소들 호출
		
		ArrayList<AcmImg> acmThumbnailImgList = new AcmService().acmThumbnailListView();	// 숙소들의 썸네이 이미지들 호출
		
		HashMap hMap = new HashMap();
		hMap.put("acmList", acmList);
		hMap.put("imgList", acmThumbnailImgList);		
		
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new Gson();
		gson.toJson(hMap, response.getWriter());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
