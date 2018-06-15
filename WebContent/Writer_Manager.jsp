<%@page import="javax.annotation.PostConstruct"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@ page import="java.sql.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css" />
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-theme.min.css" />
<link rel="stylesheet" type="text/css" href="css/Style_Writer.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />

<title>Website Hội Thảo</title>

</head>
<body>
	<%
		ResultSet resultset = null;
		//tự động đi kiểm tra quyền để cho phép vào trang hay ko
		try {
			//kiểm tra xem trong request đã có cho phép vào chưa, có rồi tức là kiểm tra rồi
			String checkStatus = request.getAttribute("CheckStatus").toString();
			//thấy có quyền vào => load dữ liệu cho trang
			Connection connection = DriverManager.getConnection(
					"jdbc:mysql://35.198.251.138:3306/websitehoithao?useUnicode=true&characterEncoding=UTF-8",
					"root", "1234");
			Statement statement = connection.createStatement();
			resultset = statement.executeQuery("select Pid, PostName,Pdate,Ptl, P from post1");
		} catch (Exception e) {
			//khi chưa kiểm tra quyền vào trang => gửi dữ liệu đi kiểm tra
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/CheckPower");
			request.setAttribute("NeedPower", "Writer");
			request.setAttribute("RefererURL", "/Writer_Manager.jsp");
			dispatcher.forward(request, response);
		}
	%>
	<div id="wrapper">
		<!-- Header = Logo + btnUser + Menu -->
		<div id="header">
			<!-- Header top -->
			<div class="header-top">
				<div class="container">
					<div class="pull-left class-local col-xs-12 col-sm-8 col-md-9">
						<div>
							<a href="index.jsp"><img src="img/logo.jpg" height="100px"
								width="800px" /></a>
						</div>
						<div class="clear"></div>
					</div>
					<div id="btn_User">
						<div class="col-xs-12 col-sm-4 col-md-3 " id="header_btn">
							<button type="button" class="btn btn-primary"
								onclick="window.location='Account.jsp'">
								<span class="glyphicon glyphicon-user"></span> Cá nhân
							</button>
							<button type="button" class="btn btn-default btn-sm"
								onclick="window.location='index.jsp'">
								<span class="glyphicon glyphicon-share"></span> Đăng xuất
							</button>
							<hr />
							<button type="button" class="btn btn-success "
								onclick="window.location='Writer_Manager.jsp'">
								<span class="glyphicon glyphicon-edit"></span> Quản lý Bài viết
							</button>
						</div>
					</div>
				</div>
			</div>
			<!-- end header-top -->
			<div class="header-bot">
				<div class="container">
					<div class="pull-left hk-menu">
						<ul id="main-nav" class="menu">
							<li id="menu-item" class="menu-item menu-item-type-custom"><a
								href="index.jsp">Trang chủ</a></li>
							<li id="menu-item" class="menu-item menu-item-type-taxonomy"><a
								href="Subject_CongNghe.jsp">Công Nghệ</a></li>
							<li id="menu-item" class="menu-item menu-item-type-taxonomy"><a
								href="Subject_GiaoDuc.jsp">Giáo Dục</a></li>
							<li id="menu-item" class="menu-item menu-item-type-taxonomy"><a
								href="Subject_GiaiTri.jsp">Giải Trí</a></li>
							<li id="menu-item" class="menu-item menu-item-type-taxonomy"><a
								href="Subject_CuocSong.jsp">Cuộc Sống</a></li>
							<li id="menu-item" class="menu-item menu-item-type-taxonomy"><a
								href="Subject_TheGioi.jsp">Thế Giới</a></li>
							<li id="menu-item" class="menu-item menu-item-type-taxonomy"><a
								href="Subject_LienHe.jsp">Liên hệ</a></li>
						</ul>
					</div>
					<!-- end hk-menu -->
				</div>
			</div>
			<!-- end header-bot -->
		</div>
		<!-- end header -->
		<!-- ====================================================================================================-->
		<!-- Content -->
		<div class="row" id="Post">
			<!-- Header -->
			<div class="row" id="Post_Action">
				<h1>
					<strong>BÀI VIẾT</strong><small> |Quản lý bài viết</small>
				</h1>
			</div>
			<!-- Buton for writer -->
			<div class="row">
				<div
					class="col-xs-2 col-xs-offset-8 col-sm-2 col-sm-offset-8 col-md-2 col-md-offset-10">
					<form action="Writer_Newpost.jsp">
						<button type="submit" class="btn btn-success" id="btn_Newpost">
							<span class="glyphicon glyphicon-pencil"></span> Bài viết mới
						</button>
					</form>
				</div>
			</div>
			<!-- Table Post-->
			<div class="row"
				style="padding: 5px 20px 5px 20px; overflow-x: auto;">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div class="table-responsive">
						<table class="table table-bordered" id="tb_post">
							<tr>
								<th id="tb_post_tt"><strong>STT</strong></th>

								<th id="tb_post_name"><strong>Tên bài viết</strong></th>
								<th id="tb_post_time"><strong>Thời gian</strong></th>
								<th id="tb_post_cat"><strong>Thể loại</strong></th>
								<th id="tb_post_stt"><strong>Tình trạng</strong></th>
								<th id="tb_post_btn"><strong>Thao tác </strong></th>
							</tr>
							<%
								while (resultset != null && resultset.next()) {
							%>
							<TR>
								<TD><%=resultset.getString(1)%></td>
								<TD><%=resultset.getString(2)%></TD>
								<TD><%=resultset.getString(3)%></TD>
								<TD><%=resultset.getString(4)%></TD>

								<TD><%=resultset.getString(5)%></TD>

								<td><a
									href="News_Moi-chiec-iPhone-X-ban-ra-Apple-an-day-den-2-3.jsp">Xem
										nội dung</a></td>

							</tr>
							<%
								}
							%>

						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- end content -->

		<!-- ====================================================================================================-->
		<div id="footer">
			<div class="footer-top">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-sm-12 col-xs-12">
							<div class="ft-intro">
								<h3>Thông tin chung</h3>
								<article class="post-content">
									<p>Trang chuyên đưa các tin túc hội thảo, bài viết chuẩn bị
										hội thảo,...</p>
								</article>
								<a style="color: #FFE30A" href="#"></a>
							</div>
							<!-- end hk-intro -->
						</div>

						<div class="col-md-3 col-sm-12 col-xs-12">
							<div class="ft-info">
								<h3>Thông tin liên hệ</h3>
								<p>
									<span>Địa chỉ: 1 Võ Văn Ngân, Phường Linh Chiểu, Quận
										Thủ Đức, Thành phố Hồ Chí Minh.</span> <span>E-mail:
										15110321@student.hcmute.edu.vn</span> <span>Điện thoại:
										01697421797</span>
								</p>

								<ul class="social">
									<li><a href="https://www.facebook.com/nhock.hugo"
										class="hk-ic hk-f">Facebook</a></li>
									<li><a href="go" class="hk-ic hk-g">Google</a></li>
								</ul>
							</div>
							<!-- end ft-info -->
						</div>
					</div>
				</div>
			</div>
			<!-- end footer-top -->
			<div class="footer-bot">
				<div class="container">
					<p class="pull-left">Designer by Tran Phieu</p>
					<p class="pull-right">Chính sách bảo mật</p>
				</div>
			</div>
			<!-- end footer-bot -->
		</div>
		<!-- end footer -->
	</div>
	<!-- ====================================================================================================-->
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/common.js"></script>

</body>
</html>