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
		
		SimpleDateFormat changeDate = new SimpleDateFormat("dd MMMM, yyyy", new Locale("en","US"));
		
		Date temp1 = null;
		Date temp2 = null;
		
		try {
			temp1 = changeDate.parse(request.getParameter("checkInDate"));
			temp2 = changeDate.parse(request.getParameter("checkOutDate"));
			
		} catch (ParseException e) {
			e.printStackTrace();
		}		
		
		SimpleDateFormat realDate = new SimpleDateFormat("yyyy-MM-dd");
		
		String checkIn = realDate.format(temp1);
		String checkOut = realDate.format(temp2);
		int adult = Integer.parseInt(request.getParameter("adult"));
		int child = Integer.parseInt(request.getParameter("child"));
		
		request.setAttribute("checkIn", checkIn);
		request.setAttribute("checkOut", checkOut);
		
		System.out.println(checkIn);
		System.out.println(checkOut);
		System.out.println(adult);
		System.out.println(child);
		
		Search search = new Search(checkIn, checkOut, adult, child);
		
		ArrayList<Acm> acmList = new AcmService().searchAcm(search);
		
		ArrayList<AcmImg> acmThumbnailImgList = new AcmService().acmThumbnailListView();
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
