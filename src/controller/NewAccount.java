package controller;

import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.DBConnection;

@WebServlet("/NewAccount")
public class NewAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("/NewAccount");
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
			if (DBConnection.newAcount(UserName, Userpass, FullName, Gender, PhoneNumber, Quyen, date) > 0) {
				out.print("<script>");
				out.print("alert(\"Tạo Tài Khoản Thành Công!!!\");");
				out.print("</script>");
				RequestDispatcher rd = req.getRequestDispatcher("/Admin_Account_Manager.jsp");
				rd.include(req, resp);
			} else {
				RequestDispatcher rd = req.getRequestDispatcher("/Admin_Account_Manager.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			System.out.println("/NewAccount error");
		}
	}
}
