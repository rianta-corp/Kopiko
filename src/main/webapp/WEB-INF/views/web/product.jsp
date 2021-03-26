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
		<div class="row pb-5 mt-4">
			<div class="col-sm-6">
				<div class="row" style="display: flex; justify-content: center;">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">

						<!-- Indicators -->
						<c:set var="listImageSize" scope="session"
							value="${product.getListProductImage().size()-1}" />
						<c:set var="listImage" scope="session"
							value="${product.getListProductImage()}" />

						<c:set var="listProductDetail" scope="session"
							value="${product.getListProductDetail()}" />
						<div class="carousel-indicators">
							<img src="${listImage.get(0).getImageUrl()}" alt="#"
								data-target="#myCarousel" data-slide-to="0"
								class="active img img-responsive" />
							<c:forEach var="i" begin="1" end="${listImageSize}">
								<img src="${listImage.get(i).getImageUrl()}" alt="#"
									data-target="#myCarousel" data-slide-to="${i}"
									class="img img-responsive" />
							</c:forEach>
						</div>

						<!-- The slideshow -->
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="${listImage.get(0).getImageUrl()}" alt="#"
									width="100%" class="img img-responsive ">
							</div>
							<c:forEach var="i" begin="1" end="${listImageSize}">
								<div class="carousel-item">
									<img src="${listImage.get(i).getImageUrl()}" alt="#"
										width="100%" class="img img-responsive">
								</div>
							</c:forEach>
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

					<div class="col-lg-12 pt-3 ">

						<p class="font-weight-normal" style="font-size: 20px;">${product.getProductName()}</p>
						<p class="font-weight-light">
							Thương hiệu: <a
								href="/search/brand/${product.getBrand().getBrandName()}">${product.getBrand().getBrandName()}</a>
						</p>
						<p class="font-weight-bold float-right">
							<span style="font-size: 32px;">${product.getLongSalePrice()}đ</span>
							<span style="font-size: 12px; text-decoration: line-through;">${product.getLongPrice()}đ</span>
						</p>
					</div>
					<form action="/checkout/cart/add/${product.productId}"
						method="POST">

						<div class="col-lg-12 pt-3">
							<p class="font-weight-normal">Chọn size:</p>
							<select name="size" id="size"
								class="m-2 btn btn-light product-name float-left category-size">
								<c:forEach var="detail" items="${listProductDetail}">
									<option value="${detail.size}">${detail.size}</option>
								</c:forEach>
							</select>
						</div>

						<div class="col-lg-12 btn-add-card"">
							<p class="font-weight-normal">Số lượng:</p>
							<div class="btn-group mt-3" style="margin-right: 15%">
								<button type="button" class="fas fa-minus" data-type="minus"
									data-field="" onclick="sub()"></button>
								<input type="number" id="quantity" name="quantity"
									class="form-control input-number" value="1" min="1" max="100">
								<button type="button" class="fas fa-plus" data-type="plus"
									data-field="" onclick="add()"></button>
							</div>
							<button class="btn margin__btn-add-cart mt-2  submit"
								style="margin-left: 24%">Thêm Vào Giỏ</button>
						</div>
					</form>


				</div>

			</div>
		</div>
		<div class="row connect pt-5 mt-5">
			<!-- Nav tabs -->
			<ul class="nav nav-tabs connect-menu" role="tablist">
				<li class="nav-item"><a
					class="nav-link  connect-menu-name active" data-toggle="tab"
					href="#mota" style="color: black; font-size: 20px">Mô Tả</a></li>
				<li class="nav-item"><a class="nav-link connect-menu-name"
					data-toggle="tab" href="#danhgia"
					style="color: black; font-size: 20px">Bình Luận</a></li>
			</ul>

			<!-- Tab panes -->
			<div class="tab-content" style="overflow: hidden;">
				<div id="mota" class="container tab-pane active">
					<br>
					<h3 class="font-weight-bold py-3">Thông tin chi tiết</h3>
					<div>${product.getDescription()}</div>
				</div>
				<div id="danhgia" class="container tab-pane fade ">
					<div class="row">
						<form action="/comment">
							<div class="mb-3">
								<label for="commentTitle" class="form-label">Tiêu đề</label> <input
									type="text" class="form-control" id="commentTitle"
									placeholder="Nhập tiêu đề">
							</div>
							<div class="mb-3">
								<label for="commentContent" class="form-label">Nội dung</label>
								<textarea class="form-control" id="commentContent" rows="3"
									placeholder="Nhập nội dung"></textarea>
							</div>
							<button type="submit">Bình luận</button>
						</form>
					</div>
					<br>
					<c:forEach items="${product.getListComment()}" var="comment">
						<div class="report">
							<img src="https://tiki.vn/assets/img/avatar.png" alt="#"
								class="img img-resonsive float-left m-4">

							<div class="p-4">
								<h4 class="text-dark  text-uppercase font-weight-bold m-auto">${comment.getAccount().getFullName()}</h4>
								<p class="p-4">${comment.getContent()}</p>
								<p class="p-4 text-muted" style="font-size: 12px">Nhận xét
									vào: ${comment.getDateCreated()}</p>
							</div>

						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	function add() {
		var quantity = parseInt(document.getElementById("quantity").value);
		quantity = quantity + 1;
		document.getElementById("quantity").value = quantity;
	}

	function sub() {
		var quantity = parseInt(document.getElementById("quantity").value);
		quantity = quantity - 1;
		if (quantity < 1)
			quantity = 1;
		document.getElementById("quantity").value = quantity;
	}
</script>
