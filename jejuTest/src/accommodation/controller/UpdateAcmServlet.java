package accommodation.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import accommodation.model.service.AcmService;
import accommodation.model.vo.Acm;

/**
 * Servlet implementation class UpdateAcmServlet
 */
@WebServlet("/updateAcm.ow")
public class UpdateAcmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAcmServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ownerNum = ((Acm)request.getSession().getAttribute("acm")).getMemNum();
		
		System.out.println(ownerNum);
		
		String changeAcmName = request.getParameter("changeAcmName");
		String changeAcmPhone = request.getParameter("changeAcmPhone");
		String descriptionA = request.getParameter("descriptionA");
		String descriptionB = request.getParameter("descriptionB");
		
		System.out.println(changeAcmName);
		System.out.println(changeAcmPhone);
		System.out.println(descriptionA);
		System.out.println(descriptionB);
		
		Acm acm = new Acm(changeAcmName, changeAcmPhone, descriptionA, descriptionB);
		
		Acm updateAcm = new AcmService().updateAcm(acm,ownerNum);
		
		if(updateAcm != null) {
			request.getSession().setAttribute("acm", updateAcm);
			response.sendRedirect("page.ow");
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
