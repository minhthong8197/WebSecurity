package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connection.DBConnection;

@WebServlet("/NewPost")
public class NewPost extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("/NewPost");
		// kiểm tra nếu dữ liệu đầu vào trong request quá lớn
		if (req.getContentLengthLong() > 50000) {
			System.out.println("/NewPost: dữ liệu đầu vào quá lớn, trở lại trang chủ");
			resp.sendRedirect(req.getContextPath() + "/");
			return;
		}
		try {
			resp.setContentType("text/html;charset=utf8");
			PrintWriter out = resp.getWriter();
			String PostName = req.getParameter("P_name");
			String PostContent = req.getParameter("txtcontent");
			String Pdate = req.getParameter("P_date");
			String Ptl = req.getParameter("P_tl");
			if (PostName.length() > 100 || PostContent.length() > 20000 || Pdate.length() > 10 || Ptl.length() > 15)
				return;
			if (DBConnection.newPost(PostName, PostContent, Ptl, Pdate) > 0) {
				out.print("<script>");
				out.print("alert(\"Gửi Bài Viết Thành Công!!!\");");
				out.print("</script>");
				resp.sendRedirect(req.getContextPath() + "/Writer_Manager.jsp");
			} else {
				resp.sendRedirect(req.getContextPath() + "/Writer_Manager.jsp");
			}
		} catch (Exception e) {
			System.out.println("/NewPost error");
		}
	}
}
