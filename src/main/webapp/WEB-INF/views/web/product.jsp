<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="<c:url value ='/template/web/css/product-page.css'/>">

<!-- category-information -->
<section class="category-infor">
	<div class="container">
		<div class="row">
			<div class="link-menu pt-3">
				<ul class="link-menu-list  flex-column mt-3">
					<li class="nav-item link-menu-name"><a href="#"
						class=" link-page-name">TRANG CHỦ <span> / </span></a></li>
					<li class="nav-item link-menu-name"><a href="#"
						class=" link-page-name"> ÁO QUẦN NAM</a></li>
				</ul>
			</div>
			</br>
		</div>
		<div class="row pl-5">
			<h2 class=" pl-4 category-infor-name text-uppercase font-weight-bold">Ao
				phong nam</h2>
		</div>
		<div class="row pb-5">
			<div class="col-sm-6">
				<div class="row" style="display: flex; justify-content: center;">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">

						<!-- Indicators -->
						<div class="carousel-indicators">
							<img src="/img/category2.jpg" alt="#"
								data-target="#myCarousel" data-slide-to="0"
								class="active img img-responsive"> <img
								src="/img/category3.jpg" alt="#"
								data-target="#myCarousel" data-slide-to="1"
								class="img img-responsive"> <img
								src="/img/category2.jpg" alt="#"
								data-target="#myCarousel" data-slide-to="2"
								class="img img-responsive">
						</div>

						<!-- The slideshow -->
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="/img/category2.jpg" alt="#" width="100%"
									class="img img-responsive">
							</div>
							<div class="carousel-item">
								<img src="/img/category3.jpg" alt="#" width="100%"
									class="img img-responsive">
							</div>
							<div class="carousel-item">
								<img src="/img/category2.jpg" alt="#" width="100%"
									class="img img-responsive">
							</div>
						</div>

						<!-- Left and right controls -->
						<a class="carousel-control-prev" href="#myCarousel"
							data-slide="prev"> <span class="carousel-control-prev-icon"></span>
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <span class="carousel-control-next-icon"></span>
						</a>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="row category-information">
					<div
						class="card-text text-left font-weight-bold d-flex justify-content-center p-2">
						<span class="product__price product__price-old"
							style="font-size: 20px;">599,000 ₫</span> <span
							class="product__price product__price-new pl-3"
							style="font-size: 24px;">500,000 ₫</span>
					</div>
					<div class="col-lg-12 pt-3 ">
						<p class="font-weight-bold float-left">Nhãn hiệu: &nbsp</p>
						<a href="#" class="font-weight-bold product-name float-left">
							bibits hunter</a>
					</div>

					<div class=" p-4">
						<p style="text-align: justify">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Nam fringilla augue nec est
							tristique auctor. Donec non est at libero vulputate rutrum. Morbi
							ornare lectus quis justo gravida semper. Nulla tellus mi,
							vulputate adipiscing cursus eu, suscipit id nulla.</p>
					</div>

					<div class="col-lg-6">
						<p class="font-weight-bold">Kho hàng: &nbsp 1999</p>
					</div>
					<div class="col-lg-12 pt-3 ">
						<p class="font-weight-bold">Chọn kích cỡ:</p>
						<a href="#"
							class="m-2 btn btn-light product-name float-left category-size">Đen
							M (45-50kg) </a> <a href="#"
							class="m-2 btn btn-light product-name float-left category-size">Trắng
							L (50-55kg) </a> <a href="#"
							class="m-2 btn btn-light product-name float-left category-size">Xanh
							Dương XL (55-65kg) </a> <a href="#"
							class="m-2 btn btn-light product-name float-left category-size">
							Tím XXL (>65kg) </a>
					</div>

				</div>
				<div class="row">
					<div class="col-lg-12">
						<form action="#" method="POST" class="btn-add-card">
							<div class="add-respon">
								<div class="add-respon-sl">
									<button type="button"
										class="quantity-left-minus btn btn-danger btn-number float-left fas fa-minus"
										data-type="minus" data-field=""></button>
									<input type="text" id="quantity" name="quantity"
										class="form-control input-number float-left" value="1" min="1"
										max="100">
									<button type="button"
										class="quantity-right-plus btn btn-success btn-number float-left fas fa-plus"
										data-type="plus" data-field=""></button>
								</div>
								<a href="" class="btn  margin__btn-add-cart mt-4">Thêm vào
									Giỏ</a>

							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row connect pt-5 mt-5">
			<!-- Nav tabs -->
			<ul class="nav nav-tabs connect-menu" role="tablist">
				<li class="nav-item"><a
					class="nav-link  connect-menu-name active" data-toggle="tab"
					href="#mota">Mô tả</a></li>
				<li class="nav-item"><a class="nav-link connect-menu-name"
					data-toggle="tab" href="#danhgia">Đánh giá</a></li>
			</ul>

			<!-- Tab panes -->
			<div class="tab-content" style="overflow: hidden;">
				<div id="mota" class="container tab-pane active">
					<br>
					<h3 class="font-weight-bold py-3">Thông tin chi tiết</h3>
					<div>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
						fringilla augue nec est tristique auctor. Donec non est at libero
						vulputate rutrum. Morbi ornare lectus quis justo gravida semper.
						Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id
						nulla. Pellentesque aliquet, sem eget laoreet ultrices, ipsum
						metus feugiat sem, quis fermentum turpis eros eget velit.<br>
						<br> Donec ac tempus ante. Fusce ultricies massa massa. Fusce
						aliquam, purus eget sagittis vulputate, sapien libero hendrerit
						est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Sed tempor, lorem et placerat
						vestibulum, metus nisi posuere nisl, in accumsan elit odio quis
						mi. Cras neque metus, consequat et blandit et, luctus a nunc.
						Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.
					</div>
				</div>
				<div id="danhgia" class="container tab-pane fade ">
					<br>
					<h3 class="font-weight-bold py-3">Khách hàng đánh giá</h3>
					<div class="report">
						<img src="/img/avatar.jpg" alt="#"
							class="img img-resonsive float-left m-4">

						<div class="p-4">
							<h4 class="text-dark  text-uppercase font-weight-bold m-auto">Hồ
								Xuân Lâm</h4>
							<i class="fas fa-star text-warning"></i> <i
								class="fas fa-star text-warning"></i> <i
								class="fas fa-star text-warning"></i> <i
								class="fas fa-star text-warning"></i> <i
								class="fas fa-star text-warning"></i>
						</div>
						<p class="p-4">Lorem, ipsumm dolor sit amet consectetur
							adipisicing elit. Rriciendis earum modi delectus fuglat
							consectetur weaque haru obcaecati, saepe id vitae, dolore
							aliquam! Quos, doloribus quisquam.</p>
					</div>

					<h3 class="font-weight-bold py-3">Viết đánh giá</h3>
					<form action="#" method="POST" class="new-report">
						<div class="row">
							<div class="report-star col-lg-2">
								<div class="d-flex  ">
									<div class="">
										<i class="fas fa-star text-warning "></i> <i
											class="fas fa-star text-warning "></i> <i
											class="fas fa-star text-warning "></i> <i
											class="fas fa-star text-warning "></i> <i
											class="fas fa-star  text-warning"></i>
									</div>
								</div>
								<div class="d-flex">
									<div class="">
										<i class="fas fa-star text-warning"></i> <i
											class="fas fa-star text-warning"></i> <i
											class="fas fa-star text-warning"></i> <i
											class="fas fa-star text-warning"></i> <i
											class="fas fa-star text-dark"></i>
									</div>
								</div>
								<div class="d-flex">
									<div class="">
										<i class="fas fa-star text-warning"></i> <i
											class="fas fa-star text-warning"></i> <i
											class="fas fa-star text-warning"></i> <i
											class="fas fa-star text-dark"></i> <i
											class="fas fa-star text-dark"></i>
									</div>
								</div>
								<div class="d-flex">
									<div class="">
										<i class="fas fa-star text-warning"></i> <i
											class="fas fa-star text-warning"></i> <i
											class="fas fa-star text-dark"></i> <i
											class="fas fa-star text-dark"></i> <i
											class="fas fa-star text-dark"></i>
									</div>
								</div>
								<div class="d-flex">
									<div class="">
										<i class="fas fa-star text-warning"></i> <i
											class="fas fa-star text-dark"></i> <i
											class="fas fa-star text-dark"></i> <i
											class="fas fa-star text-dark"></i> <i
											class="fas fa-star text-dark"></i>
									</div>
								</div>
							</div>
							<div class="report-star col-lg-3 float-left">
								<div class="row">
									<label for="">Mức độ hài lòng:</label> <select
										name="report-stars" id="report">
										<option value="5">Rất hài lòng</option>
										<option value="4">Hài lòng</option>
										<option value="3">Trung bình</option>
										<option value="2">Không hài lòng</option>
										<option value="1">Rất không hài lòng</option>
									</select>
								</div>
								<div class="row py-3">
									<label for="#">Thêm hình ảnh:</label> <input type="file"
										id="img-report" name="Chọn File">
								</div>
							</div>
							<div class="col-lg7" style="overflow: scroll;">
								<div class="row">
									<label for="#">&nbsp; Nhận xét của bạn:</label>
								</div>

								<textarea id="comment" name="comment" cols="55" rows="6"
									required=""></textarea>

							</div>
							<div class="row">
								<a class="btn margin__btn-add-cart" type="button"> Viết đánh
									giá</a>
							</div>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

