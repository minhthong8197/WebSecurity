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
					<strong>BÀI VIẾT</strong> <small> |Thông tin bài viết</small>
				</h1>
			</div>
			<!-- Form for New post -->
			<div class="row" id="Form_Newpost">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<form role="form" action="Writer_Manager.jsp">
						<div class="form-group">
							<label>Tên Bài viết</label> <input type="text" name="P_name"
								class="form-control" id="txtPostname" value="Học HTML và CSS">
							<label>Ngày viết</label> <input type="date" class="form-control"
								id="txtDate" value="2017-11-04"> <label>Thể loại</label>
							<select class="form-control">
								<optgroup>
									<option>Công nghệ</option>
									<option selected="selected">Giáo dục</option>
									<option>Giải trí</option>
									<option>Thế giới</option>
									<option>Cuộc sống</option>
									<option>Khác</option>
								</optgroup>
							</select> <label>Nội dung</label>
							<textarea class="form-control" id="txtarea" rows="20">
		  						HTML/CSS có thể nói là khởi đầu của mọi tất cả vấn đề liên quan tới web, dù bạn là người làm nghành nào, miễn là có đụng tới quản trị web thì ít nhất phải biết qua hai cái này. Nếu bạn có ý định học lập trình web thì lại càng nên thành thạo hai cái này, nếu bạn là blogger chuyên viết bài thì cũng nên nắm cái này.

								Bạn có thể là một blogger viết rất tốt, nhưng liệu bạn đã sử dụng thành thục các thẻ HTML và vùng chọn CSS căn bản chưa? Nếu câu trả lời là chưa thì điều đó đang hạn chế tiềm năng blogging của bạn đấy. Bạn có thể cầm gạch lên và bảo:

								“Học HTML/CSS làm gì khi đã có hàng tá công cụ để tạo website mà chả cần quan tâm đến code kiếc. Tui cũng có phải dân lập trình đâu!”. ~
								BLOGGER CHƯA BIẾT HTML/CSS NÀO ĐÓ
								Thực vậy, những công cụ như Adobe Dreamweaver, WordPress Visual Editor có thể vỗ ngực và thề thốt tình yêu:

								“Em cứ lo nội dung và layout, còn HTML/CSS và thế giới cứ để anh.” ~
								EDITOR
								Mình không dám ý kiến gì với tình yêu của bạn, nhưng việc phụ thuộc vào công cụ quá nhiều sẽ không giúp bạn tận dụng hết tiềm năng của mình. Bạn có thể là 1 blogger viết nội dung rất giỏi, nhưng bạn sẽ không thể:

								Thiết kế, định dạng những gì ngoài hỗ trợ của công cụ.
								Thử nghiệm những đoạn code hay ho từ các trang web khác.
								Chỉnh sửa lại những thiết kế giao diện theo ý mình.
								Tối ưu hóa về thiết kế và định dạng cho trang web của mình.
								Thiết kế những giao diện cầu kì và hiệu ứng phức tạp.
								Nếu bạn thực sự muốn chăm chút về thiết kế giao diện hay mang lại trải nghiệm tuyệt vời cho người dùng trang web, cho độc giả trang blog thì hãy nghe mình: Đây là lúc thích hợp nhất để tạm chia tay Dreamweaver (yên tâm, DW là trai ngoan nên không đòi quà đâu :D) và bắt đầu tìm hiểu về HTML và CSS căn bản dành riêng cho blogger.

								Trong bài này, mình sẽ chỉ nói lại các khái niệm trọng tâm trong HTML và CSS, kèm theo đó là các nguồn học vì trên mạng hiện nay đã có quá nhiều tài liệu rồi.

								BẮT ĐẦU THẾ NÀO?

								Đối với WordPress Blogger, chắc hẳn mọi người đều quen thuộc với việc sử dụng công cụ soạn thảo WordPress Editor để biên tập, chỉnh sửa và định dạng cho trang blog hay website của mình. Mọi thao tác đơn giản như bôi đậm chữ, in nghiêng, căn dòng… về bản chất đều là can thiệp bằng HTML/CSS tự động bởi WordPress Editor.

								Tuy nhiên, những lựa chọn sẵn có từ WordPress Editor rất hạn chế, nên nếu bạn muốn táy máy HTML/CSS thì xin mời bật qua chế độ chỉnh sửa Text và chúng ta cùng tìm hiểu:

								WordPress Visual Editor

								HTML CĂN BẢN

								1. HTML là gì?

								HTML được ví như là bộ xương của một giao diện website, dù nó là dành cho WordPress hay bất cứ website nào. “Bộ xương” này sẽ giúp chúng ta xác định bố cục trên mỗi website và đánh dấu lại các phần đó bằng các thẻ (tag) nhất định, sau đó nó sẽ tự xác định mỗi đối tượng được đánh dấu mang một vài trò riêng trong website.
								THACHPHAM.COM
								HTML là từ viết tắt của HyperText Markup Language, nghĩa là ngôn ngữ đánh dấu siêu văn bản.

								Hypertext (siêu văn bản): là một đoạn text bất kì nhưng có chứa link đến một nguồn thông tin khác (như một đoạn văn bản khác, một địa chỉ website, hình ảnh, âm thanh…)
								Ngôn ngữ đánh dấu này sẽ là cầu nối của sự giao tiếp giữa người dùng và trình duyệt, giúp trình duyệt hiểu được cách thức hiển thị trang web. Khi trình duyệt đọc thấy 1 kí tự A, nó chỉ đơn thuần hiển thị A, chứ không thể biết bạn muốn tô đậm, in nghiêng, hay màu mè hoa lá thế nào cả. Chính lúc đấy, bạn cần HTML, thông qua việc sử dụng các thẻ HTML.
		  					</textarea>
							<script>
								CKEDITOR.replace('txtarea');
							</script>
							<label> <input type="radio" id="textContent"
								checked="checked"> Tôi chắc chắn về nội dung đăng tải là
								hợp pháp và đảm bảo thuần phong mỹ tục.
							</label>
							<div class="col-md-3 col-md-offset-9">
								<button type="submit" class="btn btn-success" id="btnSubmit"
									onclick="alert('Đã thêm bài viết vào kiểm duyệt')">
									<span class="glyphicon glyphicon-ok"></span> Lưu thay đổi
								</button>
								<button type="button" class="btn btn-danger btn-sm"
									id="btnCancel" onclick="window.location='Writer_Manager.jsp'">
									<span class="glyphicon glyphicon-remove"></span> Trở về
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