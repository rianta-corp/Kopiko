<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
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
					<li><a href="#"><i
							class="heading__socials-icon fab fa-facebook"></i></a></li>
					<li><a href="#"><i
							class="heading__socials-icon fab fa-instagram"></i></a></li>
					<li><a href="#"><i
							class="heading__socials-icon fab fa-twitter-square"></i></a></li>
				</ul>
			</div>

			<div class="heading__welcome">
				<span class="heading__welcome-content">Chào mừng đến với
					KopiKo</span> <i class="heading__welcome-icon fas fa-heart"></i>
			</div>
			<c:if test="${sessionScope.account == null}">
				<div class="heading__log">
					<ul class="heading__log-io">
						<li class="heading__log-items"><a class="heading__log-link"
							href="/login">Đăng nhập</a></li>
						<li class="heading__log-items"><a class="heading__log-link"
							href="/register">Đăng ký</a></li>
					</ul>
				</div>
			</c:if>

			<!-- Header Navbar User -->
			<c:if test="${sessionScope.account != null}">
				<div class="heading__navbar-user">

					<img src="/img/avatar.jpg" alt="" class="heading__navbar-user-img">
					<a href="/account" class="heading__navbar-user-name">${sessionScope.account.fullName}</a>

					<ul class="heading__navbar-user-menu">
						<li class="heading__navbar-user-item"><a
							href="/account/profile">Tài khoản của tôi</a></li>
						<li class="heading__navbar-user-item"><a
							href="/account/order">Đơn hàng của tôi</a></li>
						<li class="heading__navbar-user-item"><a href="/logout">Đăng
								xuất</a></li>
					</ul>
				</div>
			</c:if>

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
									<!-- <div class="header__search-history">
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
									</div> -->
								</div>
								<button class="header__search-btn">
									<i class="header__search-btn-icon fas fa-search"></i>
								</button>
							</div>
						</li>
						<li class="nav__mobile-list-item"><a class="nav__mobile-link"
							href="/home">TRANG CHỦ</a></li>
						<li class="nav__mobile-list-item"><a href="/search/new"
							class="nav__mobile-link">MỚI</a></li>
						<li class="nav__mobile-list-item"><a href="/search/man"
							class="nav__mobile-link">THỜI TRANG NAM</a></li>
						<li class="nav__mobile-list-item"><a href="/search/woman"
							class="nav__mobile-link">THỜI TRANG NỮ</a></li>
						<li class="nav__mobile-list-item"><a href="/search/sale"
							class="nav__mobile-link">SALE</a></li>
						<li class="nav__mobile-list-item"><a href="/search/brand"
							class="nav__mobile-link">THƯƠNG HIỆU</a></li>
					</ul>
				</nav>
			</div>
			<!--End Header responsive -->

			<div class="header__logo">
				<a href="/home"><img src="/img/KopiKo.png" alt="Logo"
					class="header__logo-img"></a>
			</div>

			<div class="header__search">
				<div class="header__search-input-wrap">
					<input type="text" class="header__search-input"
						placeholder="Tìm kiếm sản phẩm">
					<!-- <div class="header__search-history">
						<h3 class="header__search-history-heading">Lịch sử tìm kiếm</h3>
						<ul class="header__search-history-list">
							<li class="header__search-history-item"><a href="">Áo
									khoác</a></li>
							<li class="header__search-history-item"><a href="">Áo sơ
									mi</a></li>
							<li class="header__search-history-item"><a href="">Quần
									ka ki</a></li>
						</ul>
					</div> -->
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
						class="header__cart-notice"><c:choose>
							<c:when test="${sessionScope.myCartNum == null}">0</c:when>
							<c:otherwise>${sessionScope.myCartNum}</c:otherwise>
						</c:choose></span>
					<!-- No cart  header__cart-list--no-cart -->
					<div class="header__cart-list">
						<img src="/template/webs/img/no_cart.png" alt="No Cart"
							class="header__cart-no-cart-img"> <span
							class="header__cart-no-cart-msg">Chưa có sản phẩm</span>

						<h4 class="header__cart-heading">Sản phẩm đã thêm</h4>
						<ul class="header__cart-list-item">
							<c:forEach var="map" items="${sessionScope.myCartItems}">
								<li class="header__cart-item"><img
									src="<c:url value='/uploads/images/${map.value.product.imageUrl}'/>"
									alt="" class="header__cart-img">
									<div class="header__cart-item-info">
										<div class="header__cart-item-head">
											<h5 class="header__cart-item-name">${map.value.product.productName}</h5>
											<div class="header__cart-price-wrap">
												<span class="header__cart-item-price">${map.value.product.getLongSalePrice()}đ</span>
												<span class="header__cart-item-multiply">Số lượng:
													${map.value.quantity}</span>
											</div>
										</div>
										<div class="header__cart-item-body">
											<span class="header__cart-item-desc"> Size:
												${map.value.size} </span> <a
												href="/checkout/cart/remove/${map.value.product.productId}"
												class="bg-dark text-light"
												style="border-radius: 3px; padding: 5px">Xoá</a>
										</div>
									</div></li>
							</c:forEach>
						</ul>

						<a href="/checkout/cart/view"
							class="header__cart-view btn btn-primary">Xem giỏ hàng</a>
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
						class="header__navbar-items-link" href="/home">TRANG CHỦ</a></li>
					<li class="header__navbar-items"><a
						class="header__navbar-items-link" href="/search/new">MỚI</a></li>
					<li class="header__navbar-items"><a
						class="header__navbar-items-link" href="/search/men">THỜI
							TRANG NAM</a>
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
						class="header__navbar-items-link" href="/search/women">THỜI
							TRANG NỮ</a>
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
						class="header__navbar-items-link" href="/search/sale">SALE</a></li>
					<li class="header__navbar-items"><a
						class="header__navbar-items-link" href="/search/brand">THƯƠNG
							HIỆU</a></li>
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
<!-- <div id="login" class="modal">
	<div class="modal__overlay"></div>
	<div class="modal__wrap">
		<form class="modal-content animate" action="/login" method="post">
			<div class="imgcontainer">
				<span
					onclick="document.getElementById('login').style.display='none'"
					class="close" title="Close Modal">&times;</span> <img
					src="/img/avatar.jpg" alt="Avatar" class="avatar">
			</div>

			<div class="container-modal">
				<label class="log__label" for="username"><b>Username</b></label> <input
					class="log__input" type="text" placeholder="Enter Username"
					name="username" required> <label class="log__label"
					for="password"><b>Mật khẩu</b></label> <input class="log__input"
					type="password" placeholder="Enter Password" name="password"
					required>

				<button class="btn-log" type="submit">ĐĂNG NHẬP</button>
				<label> <input type="checkbox" checked="checked"
					name="remember-me"> Remember me
				</label> <span class="psw">Forgot <a href="#">password?</a></span>
			</div>
		</form>
	</div>
</div>

Register
<div id="register" class="modal">
	<div class="modal__overlay"></div>
	<div class="modal__wrap">
		<form class="modal-content animate" action="/register" method="post">
			<div class="imgcontainer">
				<span
					onclick="document.getElementById('register').style.display='none'"
					class="close" title="Close Modal">&times;</span> <img
					src="/img/avatar.jpg" alt="Avatar" class="avatar">
			</div>

			<div class="container-modal">
				<label class="log__label" for="email"><b>Email</b></label> <input
					class="log__input" type="text" placeholder="Nhập Email của bạn"
					name="email" required> <label class="log__label"
					for="phone"><b>Số điện thoại</b></label> <input class="log__input"
					type="text" placeholder="Nhập số điện thoại" name=""
					phone"" required> <label class="log__label" for="fullName"><b>Họ
						và tên</b></label> <input class="log__input" type="text"
					placeholder="Nhập tên của bạn" name="fullName" required> <label
					class="log__label" for="password"><b>Mật khẩu của bạn</b></label> <input
					class="log__input" type="password" placeholder="Nhập mật khẩu"
					name="psw" required> <label class="log__label"
					for="password"><b>Nhập lại mật khẩu</b></label> <input
					class="log__input" type="password" placeholder="Nhập mật khẩu"
					required>

				<button class="btn-log" type="submit">ĐĂNG KÝ</button>
			</div>
		</form>
	</div>
</div> -->