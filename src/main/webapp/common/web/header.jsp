<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Header -->

<!-- Script -->
	<script
		src="<c:url value='/template/web/plugins/jquery/jquery-3.5.1.min.js'/>"></script>
	<script
		src="<c:url value='/template/web/plugins/bootstrap/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/template/web/js/app.js'/>"></script>
<header class="header">
	<!-- Heading -->
	<div class="heading">
		<div class="container-private">
			<div class="heading__socials">
				<ul class="heading__socials-list">
					<li><a href=""><i
							class="heading__socials-icon fab fa-facebook"></i></a></li>
					<li><a href=""><i
							class="heading__socials-icon fab fa-instagram"></i></a></li>
					<li><a href=""><i
							class="heading__socials-icon fab fa-twitter-square"></i></a></li>
				</ul>
			</div>

			<div class="heading__welcome">
				<span class="heading__welcome-content">Chào mừng đến với
					KopiKo</span> <i class="heading__welcome-icon fas fa-heart"></i>
			</div>

			<!-- <div class="heading__log">
                <ul class="heading__log-io">
                    <li class="heading__log-items"><a onclick="document.getElementById('login').style.display='block'" class="heading__log-link" href="#">Đăng nhập</a></li>
                    <li class="heading__log-items"><a onclick="document.getElementById('register').style.display='block'" class="heading__log-link" href="#">Đăng ký</a></li>
                </ul>
            </div> -->

			<!-- Header Navbar User -->
			<div class="heading__navbar-user">

				<img src="/img/avatar.jpg" alt=""
					class="heading__navbar-user-img"> <a href="#"
					class="heading__navbar-user-name">Nghĩa</a>

				<ul class="heading__navbar-user-menu">
					<li class="heading__navbar-user-item"><a href="">Tài khoản
							của tôi</a></li>
					<li class="heading__navbar-user-item"><a href="">Địa chỉ
							của tôi</a></li>
					<li class="heading__navbar-user-item"><a href="">Đơn mua
							của tôi</a></li>
					<li class="heading__navbar-user-item"><a href="">Đăng xuất</a>
					</li>
				</ul>
			</div>
			<!-- End Header Navbar User -->
		</div>
	</div>
	<!-- End Heading -->

	<!-- Header with Search -->
	<div id="myHeader" class="header-with-search">
		<div class="container-private">
			<!-- Header responsive -->
			<div class="header__responsive">
				<!-- Menu bars -->

				<label for="nav-mobile-input" class="nav__bars-btn"> <i
					class="nav__bars-btn--icon fas fa-bars"></i>
				</label> <input type="checkbox" hidden class="nav__input"
					id="nav-mobile-input"> <label for="nav-mobile-input"
					class="nav__overlay"></label>
				<nav class="nav__mobile">
					<label for="nav-mobile-input" class="nav__mobile-close"> <i
						class="fas fa-times"></i>
					</label>
					<ul class="nav__mobile-list">
						<li class="nav__mobile-list-item">
							<div class="header__search header__search-mobile">
								<div class="header__search-input-wrap">
									<input type="text" class="header__search-input"
										placeholder="Tìm kiếm sản phẩm">
									<div class="header__search-history">
										<h3 class="header__search-history-heading">Lịch sử tìm
											kiếm</h3>
										<ul class="header__search-history-list">
											<li class="header__search-history-item"><a href="">Áo
													khoác</a></li>
											<li class="header__search-history-item"><a href="">Áo
													sơ mi</a></li>
											<li class="header__search-history-item"><a href="">Quần
													ka ki</a></li>
										</ul>
									</div>
								</div>
								<button class="header__search-btn">
									<i class="header__search-btn-icon fas fa-search"></i>
								</button>
							</div>
						</li>
						<li class="nav__mobile-list-item"><a href="#"
							class="nav__mobile-link">TRANG CHỦ</a></li>
						<li class="nav__mobile-list-item"><a href="#"
							class="nav__mobile-link">MỚI</a></li>
						<li class="nav__mobile-list-item"><a href="#"
							class="nav__mobile-link">THỜI TRANG NAM</a></li>
						<li class="nav__mobile-list-item"><a href="#"
							class="nav__mobile-link">THỜI TRANG NỮ</a></li>
						<li class="nav__mobile-list-item"><a href="#"
							class="nav__mobile-link">SALE</a></li>
						<li class="nav__mobile-list-item"><a href="#"
							class="nav__mobile-link">THƯƠNG HIỆU</a></li>
					</ul>
				</nav>
			</div>
			<!--End Header responsive -->

			<div class="header__logo">
				<a href="index.html"><img src="/img/KopiKo.png"
					alt="Logo" class="header__logo-img"></a>
			</div>

			<div class="header__search">
				<div class="header__search-input-wrap">
					<input type="text" class="header__search-input"
						placeholder="Tìm kiếm sản phẩm">
					<div class="header__search-history">
						<h3 class="header__search-history-heading">Lịch sử tìm kiếm</h3>
						<ul class="header__search-history-list">
							<li class="header__search-history-item"><a href="">Áo
									khoác</a></li>
							<li class="header__search-history-item"><a href="">Áo sơ
									mi</a></li>
							<li class="header__search-history-item"><a href="">Quần
									ka ki</a></li>
						</ul>
					</div>
				</div>
				<button class="header__search-btn">
					<i class="header__search-btn-icon fas fa-search"></i>
				</button>
			</div>

			<!-- Header Cart -->
			<!-- <div class="header__cart">
                <div class="header__cart-wrap">
                    <i class="header__cart-icon fas fa-shopping-cart"></i>
                    Header No Item Cart  header__cart-list--no-cart
                    <div class="header__cart-list">
                        <img src="/img/no_cart.png" alt="No Cart" class="header__cart-no-cart-img">
                    </div>
                </div>
            </div> -->

			<!-- Cart -->
			<div class="header__cart">
				<div class="header__cart-wrap">
					<i class="header__cart-icon fas fa-shopping-cart"></i> <span
						class="header__cart-notice">3</span>
					<!-- No cart  header__cart-list--no-cart -->
					<div class="header__cart-list">
						<img src="/template/webs/img/no_cart.png" alt="No Cart"
							class="header__cart-no-cart-img"> <span
							class="header__cart-no-cart-msg">Chưa có sản phẩm</span>

						<h4 class="header__cart-heading">Sản phẩm đã thêm</h4>
						<ul class="header__cart-list-item">
							<li class="header__cart-item"><img
								src="/img/avatar.jpg" alt="" class="header__cart-img">
								<div class="header__cart-item-info">
									<div class="header__cart-item-head">
										<h5 class="header__cart-item-name">Bộ kem đặc trị vùng
											mắt</h5>
										<div class="header__cart-price-wrap">
											<span class="header__cart-item-price">2.000.000đ</span> <span
												class="header__cart-item-multiply">x</span> <span
												class="header__cart-item-qnt">1</span>
										</div>
									</div>
									<div class="header__cart-item-body">
										<span class="header__cart-item-desc"> Phân loại: Bạc </span> <span
											class="header__cart-item-remove">Xoá</span>
									</div>
								</div></li>
							<li class="header__cart-item"><img
								src="/img/avatar.jpg" alt="" class="header__cart-img">
								<div class="header__cart-item-info">
									<div class="header__cart-item-head">
										<h5 class="header__cart-item-name">Bộ kem đặc trị vùng
											mắt</h5>
										<div class="header__cart-price-wrap">
											<span class="header__cart-item-price">2.000.000đ</span> <span
												class="header__cart-item-multiply">x</span> <span
												class="header__cart-item-qnt">1</span>
										</div>
									</div>
									<div class="header__cart-item-body">
										<span class="header__cart-item-desc"> Phân loại: Bạc </span> <span
											class="header__cart-item-remove">Xoá</span>
									</div>
								</div></li>
							<li class="header__cart-item"><img
								src="/img/avatar.jpg" alt="" class="header__cart-img">
								<div class="header__cart-item-info">
									<div class="header__cart-item-head">
										<h5 class="header__cart-item-name">Bộ kem đặc trị vùng
											mắt</h5>
										<div class="header__cart-price-wrap">
											<span class="header__cart-item-price">2.000.000đ</span> <span
												class="header__cart-item-multiply">x</span> <span
												class="header__cart-item-qnt">1</span>
										</div>
									</div>
									<div class="header__cart-item-body">
										<span class="header__cart-item-desc"> Phân loại: Bạc </span> <a
											href="#" class="header__cart-item-remove">Xoá</a>
									</div>
								</div></li>
						</ul>

						<a href="cart-page.html" class="header__cart-view btn btn-primary">Xem
							giỏ hàng</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- End Header with Search -->

	<!-- Header Navbar -->
	<div class="header__navbar-wrap">
		<div class="container-private">
			<div class="header__navbar">
				<ul class="header__navbar-list">
					<li class="header__navbar-items"><a
						class="header__navbar-items-link" href="">TRANG CHỦ</a></li>
					<li class="header__navbar-items"><a
						class="header__navbar-items-link" href="">MỚI</a></li>
					<li class="header__navbar-items"><a
						class="header__navbar-items-link" href="">THỜI TRANG NAM</a>
						<div class="header__navbar-detail">
							<ul class="header__navbar-detail-list">
								<li class="header__navbar-detail-items"><a href=""
									class="header__navbar-detail-link">Hoodie</a></li>
								<li class="header__navbar-detail-items"><a href=""
									class="header__navbar-detail-link">Coat</a></li>
								<li class="header__navbar-detail-items"><a href=""
									class="header__navbar-detail-link">T-Shirt</a></li>
								<li class="header__navbar-detail-items"><a href=""
									class="header__navbar-detail-link">Sweater</a></li>
							</ul>
						</div></li>
					<li class="header__navbar-items"><a
						class="header__navbar-items-link" href="">THỜI TRANG NỮ</a>
						<div class="header__navbar-detail">
							<ul class="header__navbar-detail-list">
								<li class="header__navbar-detail-items"><a href=""
									class="header__navbar-detail-link">Hoodie</a></li>
								<li class="header__navbar-detail-items"><a href=""
									class="header__navbar-detail-link">Coat</a></li>
								<li class="header__navbar-detail-items"><a href=""
									class="header__navbar-detail-link">T-Shirt</a></li>
								<li class="header__navbar-detail-items"><a href=""
									class="header__navbar-detail-link">Sweater</a></li>
							</ul>
						</div></li>
					<li class="header__navbar-items"><a
						class="header__navbar-items-link" href="">SALE</a></li>
					<li class="header__navbar-items"><a
						class="header__navbar-items-link" href="">THƯƠNG HIỆU</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- End Header Navbar -->
	<!--  -->

</header>
<!-- End Header -->


<!-- Form Login / Register -->
<!-- Login -->
<div id="login" class="modal">
	<div class="modal__overlay"></div>
	<div class="modal__wrap">
		<form class="modal-content animate" action="/action_page.php"
			method="post">
			<div class="imgcontainer">
				<span
					onclick="document.getElementById('login').style.display='none'"
					class="close" title="Close Modal">&times;</span> <img
					src="/img/avatar.jpg" alt="Avatar" class="avatar">
			</div>

			<div class="container-modal">
				<label class="log__label" for="uname"><b>Username</b></label> <input
					class="log__input" type="text" placeholder="Enter Username"
					name="uname" required> <label class="log__label" for="psw"><b>Mật
						khẩu</b></label> <input class="log__input" type="password"
					placeholder="Enter Password" name="psw" required>

				<button class="btn-log" type="submit">ĐĂNG NHẬP</button>
				<label> <input type="checkbox" checked="checked"
					name="remember"> Remember me
				</label> <span class="psw">Forgot <a href="#">password?</a></span>
			</div>
		</form>
	</div>
</div>

<!-- Register -->
<div id="register" class="modal">
	<div class="modal__overlay"></div>
	<div class="modal__wrap">
		<form class="modal-content animate" action="/action_page.php"
			method="post">
			<div class="imgcontainer">
				<span
					onclick="document.getElementById('register').style.display='none'"
					class="close" title="Close Modal">&times;</span> <img
					src="/img/avatar.jpg" alt="Avatar" class="avatar">
			</div>

			<div class="container-modal">
				<label class="log__label" for="uname"><b>Email</b></label> <input
					class="log__input" type="text" placeholder="Nhập Email của bạn"
					name="uname" required> <label class="log__label"
					for="uname"><b>Số điện thoại</b></label> <input class="log__input"
					type="text" placeholder="Nhập số điện thoại" name="uname" required>

				<label class="log__label" for="uname"><b>Họ và tên</b></label> <input
					class="log__input" type="text" placeholder="Nhập tên của bạn"
					name="uname" required> <label class="log__label" for="psw"><b>Mật
						khẩu của bạn</b></label> <input class="log__input" type="password"
					placeholder="Nhập mật khẩu" name="psw" required> <label
					class="log__label" for="psw"><b>Nhập lại mật khẩu</b></label> <input
					class="log__input" type="password" placeholder="Nhập mật khẩu"
					name="psw" required>

				<button class="btn-log" type="submit">ĐĂNG KÍ</button>
				<label>
			</div>
		</form>
	</div>
</div>