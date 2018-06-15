<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="connection.*"%>

<%
	System.out.println("/Huy.jsp");
	// kiểm tra nếu dữ liệu đầu vào trong request quá lớn
	if (request.getContentLengthLong() > 50000) {
		System.out.println("/Huy.jsp: dữ liệu đầu vào quá lớn, trở lại trang chủ");
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
		String sql = "update post1 set P='Tu choi' where Pid = ?";
		String IDstr = request.getParameter("Pid");
		int ID = Integer.parseInt(IDstr);
		PreparedStatement pst;
		pst = DBConnection.connect().prepareStatement(sql);
		pst.setInt(1, ID);
		pst.executeUpdate();
		//chuyển tới trang Admin_Manager_Check.jsp
		RequestDispatcher rd = request.getRequestDispatcher("Reviewer_Check.jsp");
		rd.include(request, response);
	} catch (Exception e) {
		System.out.println("/DuyetAd.jsp: update thất bại");
	}
%>