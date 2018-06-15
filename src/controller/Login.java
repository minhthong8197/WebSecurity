package controller;

import java.io.IOException;
import java.io.PrintWriter;
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
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/Login");
		// thông tin tài khoản gửi lên server
		String username = "";
		String password = "";
		// biến lưu quyền trong hệ thống
		String power = "";
		username = req.getParameter("userName");
		password = req.getParameter("password");
		HttpSession session = req.getSession();
		try {
			// kiểm tra quyền đang có trong hệ thống, nếu có rồi phải đăng xuất
			power = session.getAttribute("power").toString();// nếu null => catch
			System.out.println("/Login: quyền đang có trong hệ thống: " + power);
			// nếu quyền có rồi, yêu cầu đăng xuất và về trang chủ
			if (power.equals("") == false) {
				System.out.println("/Login: đã có quyền trong hệ thống, yêu cầu đăng xuất");
				resp.setContentType("text/html;charset=utf8");
				PrintWriter out = resp.getWriter();
				out.print("<script>");
				out.print("alert(\"Bạn cần đăng xuất trước khi đăng nhập lại!!!\");");
				out.print("</script>");
				resp.sendRedirect(req.getContextPath() + "/");
				return;
			}
		} catch (Exception e) {
			System.out.println("/Login: chưa có quyền trong hệ thống, tiến hành kiểm tra đăng nhập");
		}
		// biến lưu nơi chuyển hướng tùy theo quyền của tài khoản
		String dispatcherURL = "/";
		try {
			power = UserDAO.loadUserPower(username, password);
			// kiểm tra quyền và gắn nơi chuyển hướng tương ứng
			if (power.equals("Admin")) {
				dispatcherURL = "/Admin_Manager_Post.jsp";
				System.out.println("/Login: Welcome Admin " + username);
			} else if (power.equals("Writer")) {
				dispatcherURL = "/Writer_Manager.jsp";
				System.out.println("/Login: Welcome Writer " + username);
			} else if (power.equals("Reviewer")) {
				dispatcherURL = "/Reviewer_Check.jsp";
				System.out.println("/Login: Welcome Reviewer " + username);
			} else {
				System.out.println("Login Failed");
			}
			// đã có link chuyển hướng, tiến hành chuyển hướng
			session.setAttribute("userName", username);
			session.setAttribute("power", power);
			resp.sendRedirect(req.getContextPath() + dispatcherURL);
		} catch (IOException e) {
			System.out.println("/Login error IOException");
		}
	}
}
