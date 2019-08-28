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
 * Servlet implementation class goSearchMember
 */
@WebServlet("/searchMem.ad")
public class goSearchMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public goSearchMember() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("test");
		ArrayList<Member> list = new AdminService().searchMember();
		JSONArray jArr = new JSONArray();
		
		for(Member m :list) {	
			JSONObject jsonMember = new JSONObject();
			jsonMember.put("memNum",m.getMemNum());
			jsonMember.put("memId",m.getMemId());
			jsonMember.put("memName",m.getMemName());
			jsonMember.put("memGender",m.getMemGender());
			jsonMember.put("memPhone",m.getMemPhone());
			jsonMember.put("nationCode",m.getNationCode());
			jsonMember.put("memPoint",m.getMemPoint());
			jsonMember.put("memType",m.getMemType());
			jsonMember.put("memStatus",m.getMemStatus());
			jsonMember.put("enrollDate",m.getEnrollDate());
			jsonMember.put("noShow",m.getOutDate());
			jArr.add(jsonMember);
		}
//		response.setContentType("application/json; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().print(jArr);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
