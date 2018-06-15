<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="connection.*"%>

<%
	System.out.println("/Sua.jsp");
	// kiểm tra nếu dữ liệu đầu vào trong request quá lớn
	if (request.getContentLengthLong() > 50000) {
		System.out.println("/Sua.jsp: dữ liệu đầu vào quá lớn, trở lại trang chủ");
		response.sendRedirect(request.getContextPath() + "/");
		return;
	}
%>
<%
	Connection connect = null;
	Statement s = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		//load du lieu cho trang
		String sql = "UPDATE FROM users set FullName=? where UserID = ?";
		String IDstr = request.getParameter("UserID");
		int ID = Integer.parseInt(IDstr);
		PreparedStatement pst;
		pst = DBConnection.connect().prepareStatement(sql);
		pst.setInt(2, ID);
		pst.executeUpdate();
		//chuyển tới trang Admin_Manager_Check.jsp
		out.print("<script>");
		out.print("alert(\"Đã Sửa Thành Công!!!\")");
		out.print("</script>");
		RequestDispatcher rd = request.getRequestDispatcher("Admin_Account_Manager.jsp");
		rd.include(request, response);
	} catch (Exception e) {
		System.out.println("/Sua.jsp: update thất bại");
	}
%>