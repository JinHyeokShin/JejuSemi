package member.controller;

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
import member.model.vo.WishList;

/**
 * Servlet implementation class MyLikeListViewServlet
 */
@WebServlet("/myLike.me")
public class MyLikeListViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyLikeListViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNum = Integer.parseInt(request.getParameter("memNum"));
		
		ArrayList<WishList> wishList = new AcmService().selectWishList(memNum);	  // 내 찜 목록 호출	
		ArrayList<AcmImg> acmThumbnailImgList = new AcmService().acmThumbnailListView();  // 숙소 대표 사진들 호출
		ArrayList<Acm> acmList = new AcmService().selectAcmList();
		
		
		request.setAttribute("wishList", wishList);
		request.setAttribute("acmThumbnailImgList", acmThumbnailImgList);
		request.setAttribute("acmList", acmList);
		
		
		request.getRequestDispatcher("views/member/myLike.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
