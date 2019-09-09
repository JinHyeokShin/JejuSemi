package adminowner.owner;

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

import accommodation.model.vo.Acm;
import adminowner.admin.model.vo.Chart;
import adminowner.owner.model.service.OwnerService;

/**
 * Servlet implementation class goChartManagerment
 */
@WebServlet("/chartManagement.ow")
public class GoChartManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoChartManagement() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @SuppressWarnings({ "unchecked", "deprecation" })
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//통계 1 라인
		int acmNum = ((Acm)request.getSession().getAttribute("acm")).getAcmNum();
		System.out.println(acmNum);
		ArrayList<Chart> list1 = new OwnerService().chartSearch(acmNum);
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
		
		System.out.println(arr1);
		request.setAttribute("arr1",arr1);
		
		request.getRequestDispatcher("views/adminowner/owner/chartManagement.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
