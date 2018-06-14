package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.UserDAO;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("in doPost of servlet Login");
		String username = "";
		String password = "";
		username = req.getParameter("userName");
		password = req.getParameter("password");

		try {
			String tbl = UserDAO.loadUser(username, password);
			if (tbl.equals("Admin")) {
				HttpSession session = req.getSession();
				session.setAttribute("userName", username);
				RequestDispatcher dispatcher = this.getServletContext()
						.getRequestDispatcher("/WEB-INF/Admin_Manager_Post.jsp");
				dispatcher.forward(req, resp);
				System.out.println("Welcome Admin " + username);
			} else if (tbl.equals("Writer")) {
				HttpSession session = req.getSession();
				session.setAttribute("userName", username);
				RequestDispatcher dispatcher = this.getServletContext()
						.getRequestDispatcher("/WEB-INF/Reviewer_Check.jsp");
				dispatcher.forward(req, resp);
				System.out.println("Connection Successfully As Writer " + username);
			} else if (tbl.equals("Reviewer")) {
				HttpSession session = req.getSession();
				session.setAttribute("userName", username);
				RequestDispatcher dispatcher = this.getServletContext()
						.getRequestDispatcher("/WEB-INF/Writer_Manager.jsp");
				dispatcher.forward(req, resp);
				System.out.println("Connection Successfully As Reviewer " + username);
			} else {
				System.out.println("Connection Failed");
			}
		} catch (ServletException e) {
			System.out.println("error in doPost of servlet Login\n" + e.getMessage());
		} catch (IOException e) {
			System.out.println("error in doPost of servlet Login\n" + e.getMessage());
		}
	}
}
