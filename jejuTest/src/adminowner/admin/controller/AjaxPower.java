package adminowner.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import adminowner.admin.model.service.AdminService;
import adminowner.admin.model.vo.PageInfo;
import power.model.vo.Power;

/**
 * Servlet implementation class AjaxPower
 */
@WebServlet("/powerAjax.ad")
public class AjaxPower extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AjaxPower() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int listCount = new AdminService().powerCount();
		int currentPage; // 현재 페이지
		int pageLimit; // 한 페이지 하단에 보여질 페이지 수
		int maxPage; // 전체 페이지에서 가장 마지막 페이지
		int startPage; // 한 페이지 하단에 보여질 시작 페이지
		int endPage; // 한 페이지 하단에 보여질 마지막 페이지

		int boardLimit = 10; // 한 페이지에 보여질 게시글 최대 갯수
		currentPage = 1;
		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		pageLimit = 5;
		maxPage = (int) Math.ceil((double) listCount / boardLimit);
		startPage = (int) Math.floor(((double) currentPage - 1) / pageLimit) * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		if (maxPage < endPage) {
			endPage = maxPage;
		}

		ArrayList<Power> list = new AdminService().powerSearch(currentPage, boardLimit);
		PageInfo pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
		
		JSONArray pArr = new JSONArray();
		for (Power p : list) {
			JSONObject jsonPower = new JSONObject();
			jsonPower.put("pNum", p.getPowerNum());
			jsonPower.put("acmName", p.getAcmName());
			jsonPower.put("payNum", p.getPayNum());
			jsonPower.put("sDate", p.getStartDate());
			jsonPower.put("eDate", p.getEndDate());
			jsonPower.put("pStat", p.getPowerStatus());
			jsonPower.put("pFlag", p.getPowerFlag());
			pArr.add(jsonPower);
		}
		JSONObject pObj = new JSONObject();
		pObj.put("currentPage", currentPage);
		pObj.put("listCount", listCount);
		pObj.put("pageLimit", pageLimit);
		pObj.put("maxPage", maxPage);
		pObj.put("startPage", startPage);
		pObj.put("endPage", endPage);
		pObj.put("boardLimit", boardLimit);

		JSONObject send = new JSONObject();
		send.put("pArr", pArr);
		send.put("pObj", pObj);

		
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(send);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
