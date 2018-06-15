package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CheckPower")
public class CheckPower extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/CheckPower");
		// kiểm tra nếu dữ liệu đầu vào trong request quá lớn
		if (req.getContentLengthLong() > 50000) {
			System.out.println("/Login: dữ liệu đầu vào quá lớn, trở lại trang chủ");
			resp.sendRedirect(req.getContextPath() + "/");
			return;
		}
		try {
			String needPower = req.getAttribute("NeedPower").toString();// nếu đang null là catch
			String refererURL = req.getAttribute("RefererURL").toString();// nếu đang null là catch
			HttpSession session = req.getSession();
			String power = "";
			// thử lấy giá trị quyền trong sesstion để kiểm tra
			try {
				// nếu = null thì ko ép kiểu sang string dc => catch
				power = session.getAttribute("power").toString();
			} catch (Exception e) {
				// lấy quyền bị lỗi => chưa có quyền trong hệ thống => trở lại trang chủ
				System.out.println("/CheckPower: power chưa tồn tại, trở lại trang chủ");
				resp.sendRedirect(req.getServletContext().getContextPath() + "/");
				return;
				/*
				 * resp.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
				 * resp.setHeader("Location", "/WebSecurity/");
				 */
			}
			// đã lấy dc quyền, kiểm tra quyền
			if (power.equals(needPower)) {
				// nếu hợp lệ, cho phép vào trang
				System.out.println("/CheckPower: quyền hạn hợp lệ, trở lại trang trước");
				req.setAttribute("CheckStatus", true);// biến thông báo cho phép vào trang
				req.getRequestDispatcher(refererURL).forward(req, resp);
				return;
			} else {
				// nếu ko hợp lệ, thông báo và trở lại trang chủ
				resp.setContentType("text/html;charset=utf8");
				PrintWriter out = resp.getWriter();
				out.print("<script>");
				out.print("alert(\"Bạn không có quyền vào trang này!!!\");");
				out.print("</script>");
				System.out.println("/CheckPower: quyền hạn không hợp lệ");
				resp.sendRedirect(req.getContextPath() + "/");
				return;
			}
		} catch (Exception e) {
			// needPower chưa tồn tại => tự ý gọi controller => trở về trang chủ
			System.out.println("/CheckPower: ko có thông tin NeedPower cần kiểm tra, trở lại trang chủ");
			resp.sendRedirect(req.getContextPath() + "/");
			return;
		}
	}
}
