package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connection.DBConnection;

@WebServlet("/NewAd")
public class NewAd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("/NewAd");
		// kiểm tra nếu dữ liệu đầu vào trong request quá lớn
		if (req.getContentLengthLong() > 50000) {
			System.out.println("/NewAd: dữ liệu đầu vào quá lớn, trở lại trang chủ");
			System.out.println(req.getContentLengthLong());
			resp.sendRedirect(req.getContextPath() + "/");
			return;
		} else
			System.out.println("/NewAd: kích thước request hợp lệ");
		try {
			resp.setContentType("text/html;charset=utf8");
			PrintWriter out = resp.getWriter();

			String PostName = req.getParameter("P_name");
			String PostContent = req.getParameter("txtcontent");
			String Pdate = req.getParameter("P_date");
			String Ptl = req.getParameter("P_tl");
			if (PostName.length() > 100) {
				System.out.println("/NewAd: error vượt quá kích thước của PostName");
				return;
			} else if (PostContent.length() > 20000) {
				System.out.println("/NewAd: error vượt quá kích thước của PostContent");
				return;
			} else if (Pdate.length() > 10) {
				System.out.println("/NewAd: error vượt quá kích thước của Pdate");
				return;
			} else if (Ptl.length() > 15) {
				System.out.println("/NewAd: error vượt quá kích thước của Ptl");
				return;
			}

			else if (DBConnection.newPostAd(PostName, PostContent, Ptl, Pdate) > 0) {
				out.print("<script>");
				out.print("alert(\"Gửi Bài Viết Thành Công!!!\");");
				out.print("</script>");
				resp.sendRedirect(req.getContextPath() + "/Admin_Manager_Post.jsp");
			} else {
				resp.sendRedirect(req.getContextPath() + "/Admin_Manager_Post.jsp");
			}
		} catch (Exception e) {
			System.out.println("/NewAd error");
		}
	}
}
