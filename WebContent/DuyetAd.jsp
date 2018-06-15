<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="connection.*"%>

<%
	System.out.println("/DuyetAd.jsp");
	// kiểm tra nếu dữ liệu đầu vào trong request quá lớn
	if (request.getContentLengthLong() > 50000) {
		System.out.println("/DuyetAd.jsp: dữ liệu đầu vào quá lớn, trở lại trang chủ");
		response.sendRedirect(request.getContextPath() + "/");
		return;
	}
%>
<%
	/* try {
		Class.forName("com.mysql.jdbc.Driver");
		connect = DriverManager.getConnection(
				"jdbc:mysql://35.198.251.138:3306/websitehoithao?useUnicode=true&characterEncoding=UTF-8",
				"root", "1234");
		s = connect.createStatement();
		//xóa event với ID tương ứng đã lấy được.
		String ID = request.getParameter("Pid");
		String sql = "update post1 set P='Duyet' where Pid='" + ID + "' ";
		s.executeUpdate(sql);
		out.print("<script>");
		out.print("alert(\"Đã Duyệt!!!\")");
		out.print("</script>");
		RequestDispatcher rd = request.getRequestDispatcher("Admin_Manager_Check.jsp");
		rd.include(request, response);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		out.println(e.getMessage());
		e.printStackTrace();
	}
	try {
		if (s != null) {
			s.close();
			connect.close();
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		out.println(e.getMessage());
		e.printStackTrace();
	} */

	Connection connect = null;
	Statement s = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		//load du lieu cho trang
		String sql = "update post1 set P='Duyet' where Pid= ?";
		String IDstr = request.getParameter("Pid");
		int ID = Integer.parseInt(IDstr);
		PreparedStatement pst;
		pst = DBConnection.connect().prepareStatement(sql);
		pst.setInt(1, ID);
		pst.executeUpdate();
		//chuyển tới trang Admin_Manager_Check.jsp
		RequestDispatcher rd = request.getRequestDispatcher("Admin_Manager_Check.jsp");
		rd.include(request, response);
	} catch (Exception e) {
		System.out.println("/DuyetAd.jsp: update thất bại");
	}
%>