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

<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css" />
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-theme.min.css" />
<link rel="stylesheet" type="text/css" href="css/camera.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />

<title>Website Hội Thảo</title>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<div class="header-top">
				<div class="container">
					<div class="pull-left class-local">
						<div>
							<a href="index.jsp"><img src="img/logo.jpg" height="100px"
								width="800px" /></a>
						</div>
						<div class="clear"></div>
					</div>
					<div class="pull-right">
						<a href="#Modal_Login" data-toggle="modal"><i
							class="fa fa-sign-in"></i>Đăng Nhập</a>/ <a
							href="#Modal_registration" data-toggle="modal"><i
							class="fa fa-user-plus"></i>Đăng ký</a>
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

		<div id="content">
			<div class="hk-content kira-content">
				<div class="container">
					<ol class="breadcrumb">
						<p id="breadcrumbs">
							<i class="fa fa-home"></i> <span
								xmlns:v="http://rdf.data-vocabulary.org/#"><span
								typeof="v:Breadcrumb"><a href="index.jsp" rel="v:url"
									property="v:title">Trang chủ</a> / <span
									class="breadcrumb_last">Liên hệ</span></span></span>
						</p>
					</ol>
					<div class="hk-left-ct">
						<div class="block-product">
							<h2 class="title">
								<span>Liên hệ</span>
							</h2>
							<article class="post-content">
								<h2 style="text-align: center;">
									<span style="color: #ff0000;"><span
										style="font-size: 30px;">WEBSITE HỘI THẢO</span></span>
								</h2>
								<p style="text-align: center;">
									<strong>Địa chỉ:</strong> 1 Võ Văn Ngân, Phường Linh Chiểu,
									Quận Thủ Đức, Thành phố Hồ Chí Minh.<br /> <strong>Phone
										number: 01697421797</strong><br /> <strong>Email:</strong>
									15110321@student.hcmute.edu.vn<br /> <strong>Website:
									</strong>http:hoithao.com/
								</p>
								<p>
									<br />
								<div role="form" class="wpcf7" id="wpcf7-f6-p7-o1" lang="vi"
									dir="ltr">
									<div class="screen-reader-response"></div>


									<p>
										<span class="wpcf7-form-control-wrap your-name"><input
											type="text" name="your-name" value="" size="40"
											class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
											aria-required="true" aria-invalid="false"
											placeholder="Họ và tên" /></span>
									</p>
									<p>
										<span class="wpcf7-form-control-wrap your-email"><input
											type="email" name="your-email" value="" size="40"
											class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email form-control"
											aria-required="true" aria-invalid="false"
											placeholder="Địa chỉ email" /></span>
									</p>
									<p>
										<span class="wpcf7-form-control-wrap your-subject"><input
											type="text" name="your-subject" value="" size="40"
											class="wpcf7-form-control wpcf7-text form-control"
											aria-invalid="false" placeholder="Tiêu đề" /></span>
									</p>
									<p>
										<span class="wpcf7-form-control-wrap your-message"><textarea
												name="your-message" cols="40" rows="10"
												class="wpcf7-form-control wpcf7-textarea form-control"
												aria-invalid="false" placeholder="Thông điệp"></textarea></span>
									</p>
									<form action="index.jsp" method="post" class="wpcf7-form"
										novalidate="novalidate">
										<p>
											<input type="submit" value="Gửi đi"
												onclick="alert('Đã gửi phản hồi thành công')"
												class="wpcf7-form-control wpcf7-submit form" />
										</p>
							</article>
						</div>
						<!-- End block-product -->
					</div>
					<!-- end hk-left-ct -->
					<div class="hk-right-ct">
						<div class="hk-restaurant">
							<h3>Tin mới</h3>
							<ul>
								<li>
									<div class="detail">
										<a href="News_Muc-com-chien-gion-DN.jsp" class="img"><img
											src="img/baimoi1.jpg" alt="Mực cơm chiên giòn Đà Nẵng"
											title="Mực cơm chiên giòn Đà Nẵng" /> </a>
										<div class="txt">
											<h4>
												<a href="News_Muc-com-chien-gion-DN.jsp">Mực cơm chiên giòn
													Đà Nẵng</a>
											</h4>
											<a href="News_Muc-com-chien-gion-DN.jsp" class="viell">Chi
												tiết<i class="hk-ic"></i>
											</a>
										</div>
									</div>
								</li>

								<li>
									<div class="detail">
										<a href="News_5-quan-an-trong-hem-thu-long-du-khach-toi-DN.jsp"
											class="img"> <img src="img/baimoi2.jpg"
											alt="5 quán ăn trong hẻm &#8216;thử lòng&#8217; du khách tới Đà Nẵng"
											title="5 quán ăn trong hẻm &#8216;thử lòng&#8217; du khách tới Đà Nẵng" />
										</a>
										<div class="txt">
											<h4>
												<a href="News_5-quan-an-trong-hem-thu-long-du-khach-toi-DN.jsp">5
													quán ăn trong hẻm &#8216;thử lòng&#8217; du khách tới Đà
													Nẵng</a>
											</h4>
											<a href="News_5-quan-an-trong-hem-thu-long-du-khach-toi-DN.jsp"
												class="viell">Chi tiết<i class="hk-ic"></i></a>
										</div>
									</div>
								</li>

								<li>
									<div class="detail">
										<a href="News_Quan-bun-bo-hon-80-nam-mot-cong-thuc-o-DN.jsp"
											class="img"><img src="img/baimoi3.png"
											alt="Quán bún bò hơn 80 năm một công thức ở Đà Nẵng"
											title="Quán bún bò hơn 80 năm một công thức ở Đà Nẵng" /> </a>
										<div class="txt">
											<h4>
												<a href="News_Quan-bun-bo-hon-80-nam-mot-cong-thuc-o-DN.jsp">Quán
													bún bò hơn 80 năm một công thức ở Đà Nẵng</a>
											</h4>
											<a href="News_Quan-bun-bo-hon-80-nam-mot-cong-thuc-o-DN.jsp"
												class="viell">Chi tiết<i class="hk-ic"></i></a>
										</div>
									</div>
								</li>

								<li>
									<div class="detail">
										<a
											href="News_Nha-hang-sang-trong-dang-cap-tai-trung-tam-DN-The-Garden-House.jsp"
											class="img"><img src="img/baimoi4.jpg"
											alt="Nhà hàng sang trọng đẳng cấp tại trung tâm Đà Nẵng- The Garden House"
											title="Nhà hàng sang trọng đẳng cấp tại trung tâm Đà Nẵng- The Garden House" />
										</a>
										<div class="txt">
											<h4>
												<a
													href="News_Nha-hang-sang-trong-dang-cap-tai-trung-tam-DN-The-Garden-House.jsp">Nhà
													hàng sang trọng đẳng cấp tại trung tâm Đà Nẵng- The
													Garden House</a>
											</h4>
											<a
												href="News_Nha-hang-sang-trong-dang-cap-tai-trung-tam-DN-The-Garden-House.jsp"
												class="viell">Chi tiết<i class="hk-ic"></i></a>
										</div>
									</div>
								</li>

								<li>
									<div class="detail">
										<a href="News_Mi-Quang-ech-DN.jsp" class="img"><img
											src="img/baimoi5.jpg" alt="Mì Quảng Ếch Đà Nẵng"
											title="Mì Quảng Ếch Đà Nẵng" /> </a>
										<div class="txt">
											<h4>
												<a href="News_Mi-Quang-ech-DN.jsp">Mì Quảng Ếch Đà Nẵng</a>
											</h4>
											<a href="News_Mi-Quang-ech-DN.jsp" class="viell">Chi tiết<i
												class="hk-ic"></i></a>
										</div>
									</div>
								</li>

							</ul>

							<div class="clear"></div>

							<a href="Subject_TinTuc.jsp" class="all">Xem tất cả</a>

						</div>

						<div class="hk-banner">
							<a href="#"><img src="img/banner-3.jpg" alt="" /></a>
						</div>
						<br>
					</div>
				</div>
			</div>
			<!-- end hk-content -->

			<div class="hk-tour hk-qua">
				<div class="container pos">
					<h3 class="hk-title">Sự kiện sắp diễn ra</h3>
					<a href="Subject_TinTuc.jsp" class="view-all cn">Xem tất cả <i
						class="hk-ic"></i></a>
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<div class="row">
								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="news-list">
										<a href="News_Halloween-than-tien-tai-Ba-Na-Hills.jsp"><img
											src="img/sk1.jpg" alt="Halloween thần tiên tại Bà Nà Hills"
											title="Halloween thần tiên tại Bà Nà Hills" /> </a>
										<h4>
											<a href="News_Halloween-than-tien-tai-Ba-Na-Hills.jsp">Halloween
												thần tiên tại Bà Nà Hills</a>
										</h4>
									</div>
								</div>

								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="news-list">
										<a href="News_To-chuc-Tuan-Phim-APEC-Viet-Nam-2017.jsp"><img
											src="img/sk2.jpg" alt="Tổ chức Tuần Phim APEC Việt Nam 2017"
											title="Tổ chức Tuần Phim APEC Việt Nam 2017" /> </a>
										<h4>
											<a href="News_To-chuc-Tuan-Phim-APEC-Viet-Nam-2017.jsp">Tổ
												chức Tuần Phim APEC Việt Nam 2017</a>
										</h4>
									</div>
								</div>

								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="news-list">
										<a href="DN-chuan-bi-chu-dao-choTuan-le-cap-cao-APEC-2017.jsp"><img
											src="img/sk3.jpg"
											alt="Đà Nẵng chuẩn bị chu đáo cho Tuần lễ Cấp cao APEC 2017"
											title="Đà Nẵng chuẩn bị chu đáo cho Tuần lễ Cấp cao APEC 2017" />
										</a>
										<h4>
											<a
												href="News_DN-chuan-bi-chu-dao-choTuan-le-cap-cao-APEC-2017.jsp">Đà
												Nẵng chuẩn bị chu đáo cho Tuần lễ Cấp cao APEC 2017</a>
										</h4>
									</div>
								</div>

								<div class="col-xs-12 col-sm-6 col-md-3">
									<div class="news-list">
										<a href="News_Am-nhac-duong-pho-DN.jsp"><img src="img/sk4.JPG"
											alt="Âm nhạc đường phố đà nẵng, sự kiện đặc sắc đà nẵng"
											title="Âm nhạc đường phố đà nẵng, sự kiện đặc sắc đà nẵng" />
										</a>
										<h4>
											<a href="News_Am-nhac-duong-pho-DN.jsp">Âm nhạc đường phố đà
												nẵng, sự kiện đặc sắc đà nẵng</a>
										</h4>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="clear"></div>

				</div>
			</div>
			<!-- end hk-tour -->
		</div>
		<!-- end content -->

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
					<p class="pull-left">Designer by Thien Phan</p>
					<p class="pull-right">Chính sách bảo mật</p>
				</div>
			</div>
			<!-- end footer-bot -->
		</div>
		<!-- end footer -->
	</div>
	<!-- end wrapper -->
	<div class="modal fade" id="Modal_Login" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Đăng Nhập</h4>
				</div>
				<form id="form-login" name="form-login">
					<div class="modal-body">
						<div>
							<div>
								<p>
									<span class="glyphicon glyphicon-user"> </span> Tài Khoản
								</p>
							</div>
							<div class="row">
								<div class="col-md-12">
									<input type="text" id="id" class="form-control " name="id"
										placeholder="6-18 kí tự">
								</div>
							</div>
						</div>
						<br />
						<div>

							<div>
								<p>
									<span class="glyphicon glyphicon-lock"> </span> Password
								</p>
							</div>
							<div class="row">
								<div class="col-md-12">
									<input type="text" id="password" class="form-control "
										name="password" placeholder="6-18 kí tự">
								</div>
							</div>
						</div>
						<br />
						<div>
							<input type="checkbox" checked="checked"> Ghi nhớ tài
							khoản<br />

						</div>
						<br />
						<div class="row">
							<div class="col-md-6">
								<button type="submit" class="btn btn-primary">Đăng Nhập</button>
							</div>
						</div>

					</div>
					<div class="modal-footer"></div>
				</form>
			</div>
		</div>
	</div>

	<div class="modal fade" id="Modal_registration" role="dialog">
		<div class="modal-dialog ">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Đăng ký thành viên</h4>
				</div>
				<form id="form-dangki" name="form-dangki">
					<div class="modal-body">
						<div class="row">
							<p>
							<h4 class="col-md-4">Tài Khoản</h4>
							</p>
							<div class="col-md-4">
								<input type="text" class="form-control" id="id" name="id"
									placeholder="6-18 kí tự">
							</div>
						</div>
						<div class="row">
							<h4 class="col-md-4">Mật Khẩu:</h4>
							<div class="col-md-4">
								<input type="text" id="password" class="form-control "
									name="password" placeholder="6-18 kí tự">
							</div>
						</div>
						<div class="row">
							<h4 class="col-md-4">Nhập Lại Mật Khẩu</h4>
							<div class="col-md-4">
								<input type="text" class="form-control" id="repassword"
									name="repassword" placeholder="6-18 kí tự">
							</div>
						</div>
						<div class="row">
							<h4 class="col-md-4">Họ Tên</h4>
							<div class="col-md-4">
								<input type="text" class="form-control" id="hoten" name="hoten"
									placeholder="6-18 kí tự">
							</div>
						</div>
						<div class="row">
							<h4 class="col-md-4">Giới Tính</h4>
							<div class="col-md-4">
								<label class="radio-inline" style="margin-top: 10px"> <input
									type="radio" name="GioiTinh">Nam
								</label> <label class="radio-inline" style="margin-top: 10px">
									<input type="radio" checked name="GioiTinh">Nữ
								</label>
							</div>
						</div>
						<div class="row">
							<h4 class="col-md-4">Ngày sinh</h4>
							<div class="col-md-4">
								<input type="text" id="date" class="form-control " name="date"
									placeholder="dd/mm/yy">
							</div>
						</div>
						<div class="row">
							<h4 class="col-md-4">Email</h4>
							<div class="col-md-8">
								<input type="text" class="form-control" id="email" name="email"
									placeholder="6-18 kí tự">
							</div>
						</div>
						<div class="row">
							<h4 class="col-md-4">Số Điện Thoại</h4>
							<div class="col-md-4">
								<input type="text" class="form-control" id="sdt" name="sdt"
									placeholder="6-18 kí tự">
							</div>
						</div>
						<div class="row">
							<h4 class="col-md-4">Địa Chỉ</h4>
							<div class="col-md-8">
								<input type="text" class="form-control" id="diachi"
									name="diachi" placeholder="6-18 kí tự">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary fa fa-user-plus">
							Đăng Ký</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/camera.js"></script>
	<script type="text/javascript" src="js/validate.js"></script>
	<script type="text/javascript" src="js/bootstrapvalidator.min.js"></script>

	<script>
	$(document).ready(function(){
		$('#slider-id').camera({
	    	playPause: false,
	    	navigation: false,
	    	pagination: true,
	    	hover: false,
	    	time: 3000,
	    	height: '20%'
	    });
	});
	</script>

	<script type="text/javascript" src="js/common.js"></script>
</body>
</html>

