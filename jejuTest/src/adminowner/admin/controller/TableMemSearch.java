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
import member.model.vo.Member;

/**
 * Servlet implementation class MemSearchTable
 */
@WebServlet("/notUsed")
public class TableMemSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TableMemSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Member> list = new AdminService().searchMember(1,999);
		
		JSONArray jArr = new JSONArray();
		JSONObject jobj = new JSONObject();
		
		for (Member m : list) {
			JSONObject jsonMember = new JSONObject();
			jsonMember.put("memNum", String.valueOf(m.getMemNum()));
			jsonMember.put("memId", String.valueOf(m.getMemNum()));
			jsonMember.put("memName", String.valueOf(m.getMemName()));
			jsonMember.put("memGender", String.valueOf(m.getMemGender()));
			jsonMember.put("memPhone", String.valueOf(m.getMemPhone()));
			jsonMember.put("nationCode", String.valueOf(m.getNationCode()));
			jsonMember.put("memPoint", String.valueOf(m.getMemPoint()));
			jsonMember.put("memType", String.valueOf(m.getMemType()));
			jsonMember.put("memStatus", String.valueOf(m.getMemStatus()));
			jsonMember.put("enrollDate",String.valueOf(m.getEnrollDate()) );
			jsonMember.put("noShow",String.valueOf( m.getNoShow()));
			jArr.add(jsonMember);
		}
		jobj.put("data", jArr);
		System.out.println(jobj);
		
//		response.setCharacterEncoding("utf-8");
//		response.getWriter().print(list);
//		System.out.println(jArr);
		
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(jobj);
		
		request.setAttribute("jobj",jobj);
		request.getRequestDispatcher("views/adminowner/admin/searchMemberTest.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
