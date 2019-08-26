package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class InsertMemberServlet
 */
@WebServlet("/insert.me")
public class InsertMemberServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      request.setCharacterEncoding("UTF-8");

      String memId = request.getParameter("memId");
      String memPwd = request.getParameter("memPwd");
      String memName = request.getParameter("memName");
      String memGender = request.getParameter("memGender");
      String memPhone = request.getParameter("memPhone");
      int nationCode = Integer.parseInt(request.getParameter("nationCode"));
      
      Member mem = new Member(memId, memPwd, memName, memGender, memPhone, nationCode);
      
//      mem = new MemberService().selectNation(mem);
      
      int result = new MemberService().insertMember(mem);

      if (result > 0) {

         request.getSession().setAttribute("msg", "회원가입 성공!!");
         
         response.sendRedirect(request.getContextPath());

      } else {
         request.setAttribute("msg", "회원가입 실패!!");

         RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
         view.forward(request, response);
      }
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}