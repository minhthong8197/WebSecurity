/*package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

*//**
 * Servlet implementation class ViewConnector
 *//*
@WebServlet("/ViewConnector")
public class ViewConnector extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/ViewConnector");
		HttpSession session = req.getSession();
		String url;
		try {
			url = session.getAttribute("URL").toString();// null => catch
			// session.removeAttribute("URL");
			req.getRequestDispatcher(url).forward(req, resp);
			return;
		} catch (Exception e) {
			System.out.println("/ViewConnector: tự ý gọi ViewConnector, trở về trang chủ");
			resp.sendRedirect("/");
		}
	}
}
*/