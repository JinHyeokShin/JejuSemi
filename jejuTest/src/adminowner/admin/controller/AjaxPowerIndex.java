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
import power.model.vo.Power;

/**
 * Servlet implementation class AjaxPowerIndex
 */
@WebServlet("/powerAjaxIndex.ad")
public class AjaxPowerIndex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxPowerIndex() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Power> list = new AdminService().powerSearch(1, 5);
		
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

		
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(pArr);
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
