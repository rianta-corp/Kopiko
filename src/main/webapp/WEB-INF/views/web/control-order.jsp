<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>


<!-- Page of infomation of buy -->
<div class="container-fluid bg-light border-bottom pb-5">
	<div class="container position-relative " style="height: 44px;">
		<div class="d-flex align-items-center py-4 h-100 position-absolute">
			<div class="nav-item nav-item-home">
				<a href="" class="nav-link">Trang chủ</a>
			</div>
			<div class="item__pagination"></div>
			<div class="nav-item nav-item-infomation">Đơn hàng của tôi</div>
		</div>
	</div>
	<div class="container-fluid border-bottom"></div>
	<div class="container mt-2">
		<div class="row">
			<div class="col-md-3 ">
				<div class="d-flex w-100">
					<div class="block__img-customer">
						<img src="./asset/img/avatar.jpg" class="img__customer" alt=""
							srcset="">
					</div>
					<div class="name__customer ml-3">
						<h4>Tài khoản của</h4>
						<h3>Phú Thuận</h3>
					</div>
				</div>
				<div class="w-100 mt-3">
					<ul class="d-flex flex-wrap w-100 pl-0">
						<li class="w-100 py-3 px-2 font__size-3"><a href="" class=""><i
								class="fas fa-user pr-5 font__size-4"></i>Thông tin tài khoản</a></li>
						<li class="w-100 py-3 px-2 font__size-3"><a href="" class=""><i
								class="fas fa-tasks pr-5 font__size-4"></i>Quản lý đơn hàng</a></li>
					</ul>
				</div>

			</div>
			<div class="col-md-9 col-sm-12">
				<div class="w-100">
					<h3 class="card-title text-dark my-4">Đơn hàng của tôi</h3>
				</div>
				<div class="w-100 bg-white" style="height: 45vh;">
					<table id="customers">
						<tr>
							<th>Mã đơn hàng</th>
							<th>Ngày mua</th>
							<th>Sản phẩm</th>
							<th>Tổng tiền</th>
							<th>Trạng thái đơn hàng</th>
						</tr>
						<tr>
							<td class="text-warning"><a href="order-detail.html"
								class="text-warning">33333</a></td>
							<td>Larry</td>
							<td>the Bird</td>
							<td>@twitter</td>
							<td>@twitter</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!--  -->
<!--  -->
<!-- /* Đăng ký thông tin */ -->
<div class="container ">
	<div class="navrbar__Signup-information bord-top">
		<h1 class="title-section">ĐĂNG KÝ NHẬN THÔNG TIN</h1>
		<div class="header__search navrbar__Signup-search">
			<div class="header__search-input-wrap">
				<input type="text" class="header__search-input search__text"
					placeholder="Email ...">
			</div>
			<button type="submit" class="header__search-btn">
				<i class="header__search-btn-icon fas fa-search"></i>
			</button>
		</div>
	</div>
</div>
<!-- /* end đăng ký */ -->

<!-- End container-private -->