package member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import accommodation.model.vo.Acm;
import adminowner.admin.model.service.AdminService;
import adminowner.admin.model.vo.Notice;
import management.model.service.ManagementService;
import management.model.vo.Management;
import management.model.vo.PageInfo;
import member.model.vo.Member;
import review.model.service.OwnerReviewService;
import review.model.vo.Review;

/**
 * Servlet implementation class OwnerServlet
 */
@WebServlet("/page.ow")
public class OwnerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OwnerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int memNum = ((Member)request.getSession().getAttribute("loginUser")).getMemNum();
		String acmName = ((Acm)request.getSession().getAttribute("acm")).getAcmName();
		int acmNum = ((Acm)request.getSession().getAttribute("acm")).getAcmNum();
		// 총 게시글 갯수
		int reserveCount = new ManagementService().getOwnerListCount(memNum);
		// ----------- 페이징 처리 -------------
		int currentPage;		// 현재 페이지
		int pageLimit; 			// 한 페이지 하단에 보여질 페이지 수
		int maxPage;			// 전체 페이지에서 가장 마지막 페이지
		int startPage; 			// 한 페이지 하단에 보여질 시작 페이지
		int endPage;			// 한 페이지 하단에 보여질 마지막 페이지
		
		int boardLimit = 10;	// 한 페이지에 보여질 게시글 최대 갯수
		
		
		// * currentPage : 현재페이지
		currentPage = 1;
		
		// 페이지 전환시 전달받은 현재 페이지가 있을 경우 전달받은 페이지를 currentPage로!
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		
		// * pageLimit : 한 페이지 하단에 보여질 페이지 수
		pageLimit = 10;
		
		// * maxPage : 총 페이지 수 
		// ex) boardLimit : 10
		// 100.0 / 10 = 10.0 = 10.0 	=> 10페이지
		// 101.0 / 10 = 10.1 = 11.0		=> 11페이지
		// 105.0 / 10 = 10.5 = 11.0		=> 11페이지
		// 109.0 / 10 = 10.9 = 11.0		=> 11페이지
		maxPage = (int)Math.ceil((double)reserveCount/boardLimit);
		
		
		// * startPage : 현재 페이지에 보여지는 페이징바의 시작 수
		// ex) pageLimit : 10
		// 1, 11, 21, 31, .... 		=> n * 10 + 1
		// currentPage = 1			=> 0 * 10 + 1	=> 1
		// currentPage = 5			=> 0 * 10 + 1	=> 1
		// currentPage = 10			=> 0 * 10 + 1 	=> 1
		
		// currentPage = 11			=> 1 * 10 + 1	=> 11
		// currentPage = 15			=> 1 * 10 + 1	=> 11
		// currentPage = 20			=> 1 * 10 + 1	=> 11
		
		// currentPage = 1~10		=> n=0
		// currentPage = 11~20		=> n=1
		// 				n= (int)Math.floor(((double)currentPage - 1) / pageLimit)
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		
		
		// * endPage : 현재 페이지에서 보여질 마지막 페이지 수
		endPage = startPage + pageLimit - 1;
		
		// ex) maxPage = 13, endPage = 20
		if(maxPage < endPage) {
			endPage = maxPage;	// maxPage = 13, endPage = 13
		}
		ArrayList<Review> list1 = new OwnerReviewService().reviewList(currentPage, boardLimit, acmName);
		request.setAttribute("rList", list1);

		ArrayList<Notice> nList = new AdminService().selectNList();
		
		if(nList!=null) {
			request.setAttribute("nList",nList);
		}else {
			request.setAttribute("msg", "공지사항 리스트 조회 실패");
//			오류페이지  보내주기.
			//			request.getRequestDispatcher()
		}
	
		// 현재 페이지(currentPage)에 따른 게시글 리스트 조회하기
		ArrayList<Management> list = new ManagementService().ownerSelectList(currentPage, boardLimit, ((Member)request.getSession().getAttribute("loginUser")).getMemNum());
		
		// 페이지 정보들 PageInfo 객체에 담아주기
		PageInfo pi = new PageInfo(currentPage, reserveCount, pageLimit, maxPage, startPage, endPage, boardLimit, ((Member)request.getSession().getAttribute("loginUser")).getMemNum());
		
		// request에 전달값 담기
		request.setAttribute("list", list);
		request.setAttribute("pi", pi);
		
		
		
		request.getRequestDispatcher("views/adminowner/owner/ownerIndex.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
