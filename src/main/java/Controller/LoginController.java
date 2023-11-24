package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.Dao;
import Model.Account;

/**
 * Servlet implementation class LoginController
 */
@WebServlet(name = "LoginController", urlPatterns = "/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("Login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		String btnRgt = request.getParameter("btn");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");

		
		if("Login".equals(btnRgt)) {
			if(!uname.equals("") && !pass.equals("")) {
				Dao dao = new Dao();
				Account a = dao.login(uname, pass);
				if(a!=null) {
					// tao, day tai khoan len session
					HttpSession session = request.getSession();
					session.setAttribute("acc", a);
					
					request.getRequestDispatcher("Home.jsp").forward(request, response);	
				}else {
					request.setAttribute("mes", "<div class='mes' style='width: 100%; height: 50px; background-color: rgb(250, 231, 207); text-align: center; line-height: 50px;'>\r\n"
							+ "        <h3 style='color: #4b4b4b;'>Ten tai khoan hoac mat khau khong chinh xac</h3>\r\n"
							+ "    </div>");
					request.getRequestDispatcher("Login.jsp").forward(request, response);
				}
			}else {
				request.setAttribute("mes", "<div class='mes' style='width: 100%; height: 50px; background-color: rgb(250, 231, 207); text-align: center; line-height: 50px;'>\r\n"
						+ "        <h3 style='color: #4b4b4b;'>Vui long nhap day du thong tin</h3>\r\n"
						+ "    </div>");
				request.getRequestDispatcher("Login.jsp").forward(request, response);
			}
			
		}else if("Facebook".equals(btnRgt)) {
			out.println("<h1> fb </h1>");
			
		}else if("Google".equals(btnRgt)){
			out.println("<h1> gg </h1>");
		}
		
		
		
	}

}
