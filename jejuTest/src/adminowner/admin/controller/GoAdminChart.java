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
import adminowner.admin.model.vo.Chart;

/**
 * Servlet implementation class GoAdminChart
 */
@WebServlet("/adminChart.ad")
public class GoAdminChart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoAdminChart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Chart> list = new AdminService().chartSearch();
		JSONArray arr= new JSONArray();
		for(Chart c :list) {
			JSONObject jChart = new JSONObject();
			jChart.put("month",c.getMonth());
			jChart.put("price", c.getPrice());
			arr.add(jChart);
		}
		System.out.println(arr);
		
		request.setAttribute("arr",arr);
		request.getRequestDispatcher("views/adminowner/admin/adminChart.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
