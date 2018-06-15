package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connection.DBConnection;

@WebServlet("/NewAccount")
public class NewAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("/NewAccount");
		// kiểm tra nếu dữ liệu đầu vào trong request quá lớn
		if (req.getContentLengthLong() > 50000) {
			System.out.println("/Login: dữ liệu đầu vào quá lớn, trở lại trang chủ");
			resp.sendRedirect(req.getContextPath() + "/");
			return;
		}
		try {
			resp.setContentType("text/html;charset=utf8");
			PrintWriter out = resp.getWriter();
			String UserName = req.getParameter("userName");
			String Userpass = req.getParameter("userPass");
			String FullName = req.getParameter("FullName");
			String PhoneNumber = req.getParameter("PhoneNumber");
			String Quyen = req.getParameter("check1");
			String Gender = req.getParameter("check");
			String date = req.getParameter("DateOfBirth");
			// kiểm tra kích thước dữ liệu đâu vào trước khi lưu xuống database
			if (UserName.length() > 18 || Userpass.length() > 18 || FullName.length() > 30 || PhoneNumber.length() > 12
					|| Quyen.length() > 8 || Gender.length() > 5 || date.length() > 10)
				return;
			if (DBConnection.newAcount(UserName, Userpass, FullName, Gender, PhoneNumber, Quyen, date) > 0) {
				out.print("<script>");
				out.print("alert(\"Tạo Tài Khoản Thành Công!!!\");");
				out.print("</script>");
				resp.sendRedirect(req.getContextPath() + "/Admin_Account_Manager.jsp");
			} else {
				resp.sendRedirect(req.getContextPath() + "/Admin_Account_Manager.jsp");
			}
		} catch (Exception e) {
			System.out.println("/NewAccount error");
		}
	}
}
