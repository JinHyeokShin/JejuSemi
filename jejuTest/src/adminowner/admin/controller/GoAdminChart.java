package adminowner.admin.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

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
	@SuppressWarnings({ "unchecked", "deprecation" })
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//통계 1 라인
		ArrayList<Chart> list1 = new AdminService().chartSearch();
		JSONArray arr1= new JSONArray();
		
		for(Chart c :list1) {
			Date n = new Date();
			n.setMonth(c.getMonth()-1);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			JSONObject jChart1 = new JSONObject();
			jChart1.put("jMonth",sdf.format(n));
			jChart1.put("jPrice", c.getPrice());
			arr1.add(jChart1);
		}
		//통계 2 도넛
		ArrayList<Chart> list2 = new AdminService().chartSearch2();
		JSONArray arr2 = new JSONArray();
		
		for(Chart c :list2) {
			JSONObject jChart2 = new JSONObject();
			jChart2.put("type", c.getType());
			jChart2.put("price", c.getPrice());
			arr2.add(jChart2);
		}
		
		
		
		
		System.out.println(arr1);
		System.out.println(arr2);
		request.setAttribute("arr1",arr1);
		request.setAttribute("arr2", arr2);
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
