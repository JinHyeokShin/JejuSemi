package review.controller;

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
import review.model.service.ReviewService;
import review.model.vo.ReviewB;

/**
 * Servlet implementation class TopAvgReviewListServlet
 */
@WebServlet("/topAvg.rv")
public class TopAvgReviewListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TopAvgReviewListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		ArrayList<ReviewB> topAvgList = new ReviewService().selectTopAvg();	// 평점 가장 높은 숙소 6개
		ArrayList<Acm> acmList = new AcmService().selectAcmList();	// 모든 숙소 리스트
		ArrayList<AcmImg> acmThumbnailImgList = new AcmService().acmThumbnailListView();	// 모든 숙소 썸네일 리스트
		ArrayList<ReviewB> reviewList = new ArrayList<>();		// top6 숙소의 평점 가장 높은 리뷰중 최신것
		
		for(ReviewB r : topAvgList) {
			ReviewB rb = new ReviewService().selectBestReview(r.getAcmNum());
			reviewList.add(rb);
		}
	
		HashMap<String, ArrayList> hMap = new HashMap<>();
		
		hMap.put("topAvgList", topAvgList);
		hMap.put("acmList", acmList);
		hMap.put("thumbnailList", acmThumbnailImgList);
		hMap.put("reviewList", reviewList);
		
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
