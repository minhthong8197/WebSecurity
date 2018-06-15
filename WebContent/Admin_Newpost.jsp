<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css" />
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-theme.min.css" />
<link rel="stylesheet" type="text/css" href="css/Style_Writer.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<script src="ckeditor_standard/ckeditor.js"></script>

<title>Website Hội Thảo</title>

</head>
<body>
	<%
		//tự động đi kiểm tra quyền để cho phép vào trang hay ko
		try {
			//kiểm tra xem trong request đã có cho phép vào chưa, có rồi tức là kiểm tra rồi
			String checkStatus = request.getAttribute("CheckStatus").toString();
			//thấy có quyền vào => cho vaof
		} catch (Exception e) {
			//khi chưa kiểm tra quyền vào trang => gửi dữ liệu đi kiểm tra
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/CheckPower");
			request.setAttribute("NeedPower", "Admin");
			request.setAttribute("RefererURL", "/Admin_Newpost.jsp");
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
					<strong>BÀI VIẾT</strong> <small> |Bài viết mới</small>
				</h1>
			</div>
			<!-- Form for New post -->
			<div class="row" id="Form_Newpost">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<form action="NewAd" method="post" role="form">
						<div class="form-group">
							<label>Tên Bài viết</label> <input type="text" name="P_name"
								class="form-control" placeholder="Nhập tên bài viết"
								id="txtPostname"> <label>Ngày viết</label> <input
								type="date" class="form-control" placeholder="Chọn ngày viết"
								id="txtDate" name="P_date"> <label>Thể loại</label> <select
								class="form-control" name="P_tl">
								<optgroup label="Chọn thể loại">
									<option>Công nghệ</option>
									<option>Giáo dục</option>
									<option>Giải trí</option>
									<option>Thế giới</option>
									<option>Cuộc sống</option>
									<option>Khac</option>
								</optgroup>
							</select> <label>Nội dung</label>
							<textarea name="txtcontent" class="form-control" id="txtarea"
								rows="15" placeholder="Nhập nội dung bài viết"></textarea>
							<label> <input type="radio" id="textContent"> Tôi
								chắc chắn về nội dung đăng tải là hợp pháp và đảm bảo thuần
								phong mỹ tục.
							</label>
							<div class="col-md-3 col-md-offset-9">
								<button type="submit" class="btn btn-success" id="btnSubmit">Gửi
									bài viết</button>
								<button type="reset" class="btn btn-danger btn-sm"
									id="btnCancel">
									<span class="glyphicon glyphicon-remove"></span> Hủy
								</button>
								<hr />
							</div>
						</div>
					</form>
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

</body>
</html>