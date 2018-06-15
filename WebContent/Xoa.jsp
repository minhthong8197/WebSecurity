<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="connection.*"%>

<%
	System.out.println("/Xoa.jsp");
	// kiểm tra nếu dữ liệu đầu vào trong request quá lớn
	if (request.getContentLengthLong() > 50000) {
		System.out.println("/Xoa.jsp: dữ liệu đầu vào quá lớn, trở lại trang chủ");
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
		String sql = "DELETE FROM users where UserID= ?";
		String IDstr = request.getParameter("UserID");
		int ID = Integer.parseInt(IDstr);
		PreparedStatement pst;
		pst = DBConnection.connect().prepareStatement(sql);
		pst.setInt(1, ID);
		pst.executeUpdate();
		//chuyển tới trang Admin_Manager_Check.jsp
		out.print("<script>");
		out.print("alert(\"Đã xóa!!!\")");
		out.print("</script>");
		RequestDispatcher rd = request.getRequestDispatcher("Admin_Account_Manager.jsp");
		rd.include(request, response);
	} catch (Exception e) {
		System.out.println("/Xoa.jsp: update thất bại");
	}
%>