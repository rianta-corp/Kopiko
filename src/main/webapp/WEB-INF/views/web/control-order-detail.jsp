<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/common/taglib.jsp"%>


<!-- page chi tiet hoa don -->
<div class="container-fluid bg-light border-bottom py-5 mb-5">
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
						<img src="/img/avatar.jpg" class="img__customer" alt=""
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
				<div class="w-100 mb-4">
					<h3 class="card-title text-dark my-4">Chi tiết đơn hàng #33333
					</h3>
					<h5 class="font-weight-normal d-flex justify-content-end text-dark">Ngày
						đặt hàng: 16:55 26/11/2019</h5>
				</div>
				<div class="row">
					<div class="col-md-4 mb-5">
						<div class="card border-0">
							<div class="card-title pb-4" style="background-color: #f8f9fa;">
								<h4 class="font-weight-normal">ĐỊA CHỈ NGƯỜI NHẬN</h4>
							</div>
							<div class="css-height-160 card-title pt-4 bg-white pl-3">
								<h4>Đoàn phú Thuận</h4>
								<h5 class="css-h5 font-weight-light">Địa chỉ: số nhà
									10/kiệt 179 Trần Phú ,Tp Huế, Phường Phước Vĩnh, Thành phố Huế,
									Thừa Thiên Huế, Việt Nam</h5>
								<h5 class="css-h5 font-weight-light">Điện thoại: 0334660619</h5>
							</div>
						</div>
					</div>
					<div class="col-md-4 mb-5">
						<div class="card border-0">
							<div class="card-title pb-4" style="background-color: #f8f9fa;">
								<h4 class="font-weight-normal">HÌNH THỨC GIAO HÀNG</h4>
							</div>
							<div class="css-height-160 card-title pt-4 bg-white pl-3">
								<h5 class="css-h5 font-weight-light">Giao vào Thứ sáu,
									29/11</h5>
								<h5 class="css-h5 font-weight-light">Miễn phí vận chuyển</h5>
							</div>
						</div>
					</div>
					<div class="col-md-4 mb-5">
						<div class="card border-0">
							<div class="card-title pb-4" style="background-color: #f8f9fa;">
								<h4 class="font-weight-normal">HÌNH THỨC THANH TOÁN</h4>
							</div>
							<div class="css-height-160 card-title pt-4 bg-white pl-3">
								<h5 class="css-h5 font-weight-light">Thanh toán tiền mặt
									khi nhận hàng</h5>
							</div>
						</div>
					</div>
				</div>
				<div class="w-100 bg-white h-auto mb-5 ">
					<table id="customers" class="rounded">
						<tr>
							<th>Sản phẩm</th>
							<th>Giá</th>
							<th>Số lượng</th>
							<th>Giảm giá</th>
							<th>Tạm tính</th>
						</tr>
						<tr class="border-bottom">
							<td class="w-50">
								<div class="container-fluid">
									<div class="row h-auto">
										<div class="col-md-3 h-100 mt-5 mb-3">
											<img src="/img/avatar.jpg" class="img-fluid"
												style="max-width: 60px; height: 40px;" alt="">
										</div>
										<div class="col-md-9">
											<div class="card bg-transparent border-0">
												<div class="card-title">
													<h4 class="font-weight-normal">
														<a class="text-dark" href="">Ổ Cứng SSD Kingston A400
															(240GB) - Hàng Chính Hãng</a>
													</h4>
												</div>
												<div class="card-text">
													<h6>
														Cung cấp bởi <a href="">Tiki Trading</a>
													</h6>
													<h5 class="css-h5 font-weight-light">Sku:
														1403122591071</h5>
												</div>
											</div>
										</div>
									</div>
								</div>
							</td>
							<td class="align-text-top pt-4">685.000 ₫</td>
							<td class="align-text-top pt-4">1</td>
							<td class="align-text-top pt-4">0 ₫</td>
							<td class="align-text-top pt-4">685.000 ₫</td>
						</tr>
						<tr class="border-bottom">
							<td class="w-50">
								<div class="container-fluid">
									<div class="row h-auto">
										<div class="col-md-3 h-100 mt-5 mb-3">
											<img src="/img/avatar.jpg" class="img-fluid"
												style="max-width: 60px; height: 40px;" alt="">
										</div>
										<div class="col-md-9">
											<div class="card bg-transparent border-0">
												<div class="card-title">
													<h4 class="font-weight-normal">
														<a class="text-dark" href="">Ổ Cứng SSD Kingston A400
															(240GB) - Hàng Chính Hãng</a>
													</h4>
												</div>
												<div class="card-text">
													<h6>
														Cung cấp bởi <a href="">Tiki Trading</a>
													</h6>
													<h5 class="css-h5 font-weight-light">Sku:
														1403122591071</h5>
												</div>
											</div>
										</div>
									</div>
								</div>
							</td>
							<td class="align-text-top pt-4">685.000 ₫</td>
							<td class="align-text-top pt-4">1</td>
							<td class="align-text-top pt-4">0 ₫</td>
							<td class="align-text-top pt-4">685.000 ₫</td>
						</tr>
					</table>
				</div>
				<div class="w-100 bg-transparent h-auto">
					<a class="font__size-3 font-weight-normal mr-3"
						href="./donhangcuatoi.html"> <i
						class="fas fa-long-arrow-alt-left"></i> Quay lại đơn hàng của tôi
					</a> <a href="" style="background-color: var(- -primary-color);"
						class="font__size-3 font-weight-bold ml-3 border p-3 px-5 text-white">Theo
						dõi đơn hàng</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end page chi tiet hoa don -->