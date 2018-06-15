package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/Logout");
		HttpSession session = req.getSession();
		// String power = session.getAttribute("Power").toString();
		session.removeAttribute("Power");
		System.out.println("/Logout: logout xong, đến trang chủ");
		resp.sendRedirect(req.getContextPath() + "/");
	}
}
