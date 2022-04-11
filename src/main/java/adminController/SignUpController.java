package adminController;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.AccountDAO;

/**
 * Servlet implementation class SignUpController
 */
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String accountRole = request.getParameter("accountRole");
		String userName = request.getParameter("username");
		String repeatPass = request.getParameter("repeatPass");
		String userAddress ="";
		String userPhone ="";
		request.getSession(true).invalidate();
		
		// make sure that email evalid
		String regexMail = "^[A-Z0-9_a-z]+@[A-Z0-9\\.a-z]+\\.[A-Za-z]{2,6}$";
		String regex = "[a-zA-Z0-9_!@#$%^&*]+";
		// collect data from a login form
		HttpSession session = request.getSession(true);
		if (!pass.matches(regex) || !user.matches(regexMail)) {
			session.setAttribute("error", "invalid syntax");
			request.getRequestDispatcher("signin.jsp").forward(request, response);
		}
		AccountDAO acDAO = new AccountDAO();
		if(!pass.equalsIgnoreCase(repeatPass)) {
			request.setAttribute("error", "Password and repeat-password should be the same");
			request.getRequestDispatcher("signin.jsp").forward(request, response);
		}else {
			try {
				if(acDAO.exists(user)) {
					request.setAttribute("error", "Your username has already exists !!!");
					request.getRequestDispatcher("signin.jsp").forward(request, response);
				}else {
					int accountRolee = Integer.parseInt(accountRole);
					acDAO.createAccount(user, pass, accountRolee, userName, userAddress, userPhone);
					request.setAttribute("error", "Create successful !!!");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws NumberFormatException, Exception {
		
		
	}

}
