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

/**
 * Servlet implementation class PowerAcmListServlet
 */
@WebServlet("/powerAcm.ac")
public class PowerAcmListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PowerAcmListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Acm> powerList = new AcmService().powerList();
		
		ArrayList<AcmImg> acmThumbnailListView = new AcmService().acmThumbnailListView();
		
		HashMap<String, ArrayList> hMap = new HashMap<>();
		
		hMap.put("powerList", powerList);
		hMap.put("acmThumbnailListView", acmThumbnailListView);
		
		
		response.setContentType("application/json; charset=UTF-8");	// Json, Gson 보내기전엔 꼭 컨텐트타입 지정 해줘야된다!
		new Gson().toJson(hMap,response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
