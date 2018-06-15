package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/Logout");
		HttpSession session = req.getSession();
		// kiểm tra nếu dữ liệu đầu vào trong request quá lớn
		if (req.getContentLengthLong() > 50000) {
			System.out.println("/Login: dữ liệu đầu vào quá lớn, trở lại trang chủ");
			resp.sendRedirect(req.getContextPath() + "/");
			return;
		}
		// String power = session.getAttribute("Power").toString();
		session.setAttribute("power", "");
		session.removeAttribute("power");
		System.out.println("/Logout: logout xong, đến trang chủ");
		resp.sendRedirect(req.getContextPath() + "/");
	}
}
