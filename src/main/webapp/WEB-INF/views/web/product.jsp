<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" type="text/css"
	href="<c:url value ='/template/web/plugins/bootstrap/css/bootstrap.min.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value ='/template/web/plugins/font-awesome/css/font-awesome.min.css'/>">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="<c:url value ='/template/web/css/product-page.css'/>">
<link rel="stylesheet"
	href="<c:url value='/template/web/jquery/PagingStyle.css'/>" />

<style>
@import
	url(http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css)
	;

.col-item {
	border: 1px solid #E1E1E1;
	border-radius: 5px;
	background: #FFF;
}

.col-item .photo img {
	margin: 0 auto;
	width: 100%;
}

.col-item .info {
	padding: 10px;
	border-radius: 0 0 5px 5px;
	margin-top: 1px;
}

.col-item:hover .info {
	background-color: #F5F5DC;
}

.col-item .price {
	/*width: 50%;*/
	float: left;
	margin-top: 5px;
}

.col-item .price h5 {
	line-height: 20px;
	margin: 0;
}

.price-text-color {
	color: #219FD1;
}

.col-item .info .rating {
	color: #777;
}

.col-item .rating {
	/*width: 50%;*/
	float: left;
	font-size: 17px;
	text-align: right;
	line-height: 52px;
	margin-bottom: 10px;
	height: 52px;
}

.col-item .separator {
	border-top: 1px solid #E1E1E1;
}

.clear-left {
	clear: left;
}

.col-item .separator p {
	line-height: 20px;
	margin-bottom: 0;
	margin-top: 10px;
	text-align: center;
}

.col-item .separator p i {
	margin-right: 5px;
}

.col-item .btn-add {
	width: 50%;
	float: left;
}

.col-item .btn-add {
	border-right: 1px solid #E1E1E1;
}

.col-item .btn-details {
	width: 50%;
	float: left;
	padding-left: 10px;
}

.controls {
	margin-top: 20px;
}

[data-slide="prev"] {
	margin-right: 10px;
}
</style>

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
			<br>
		</div>
		<div class="row pb-4 mt-4 mb-4">
			<div class="col-md-6" style="display: flex; justify-content: center;">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">

					<!-- Indicators -->
					<c:set var="listImageSize" scope="session"
						value="${product.getListProductImage().size()-1}" />
					<c:set var="listImage" scope="session"
						value="${product.getListProductImage()}" />

					<c:set var="listProductDetail" scope="session"
						value="${product.getListProductDetail()}" />


					<!-- The slideshow -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img
								src="<c:url value='/uploads/images/${listImage.get(0).getImageUrl()}'/>"
								alt="#" width="100%" class="img img-responsive ">
						</div>
						<c:forEach var="i" begin="1" end="${listImageSize}">
							<div class="carousel-item">
								<img
									src="<c:url value='/uploads/images/${listImage.get(i).getImageUrl()}'/>"
									alt="#" width="100%" class="img img-responsive">
							</div>
						</c:forEach>
					</div>

					<div class="carousel-indicators">
						<img
							src="<c:url value='/uploads/images/${listImage.get(0).getImageUrl()}'/>"
							alt="#" data-target="#myCarousel" data-slide-to="0"
							class="active img img-responsive" />
						<c:forEach var="i" begin="1" end="${listImageSize}">
							<img
								src="<c:url value='/uploads/images/${listImage.get(i).getImageUrl()}'/>"
								alt="#" data-target="#myCarousel" data-slide-to="${i}"
								class="img img-responsive" />
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
			<div class="col-md-6">
				<div class="category-information">
					<div>

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

						<div class="pt-3 form-group">
							<p class="font-weight-normal">Chọn size:</p>
							<select name="size" id="size"
								class="m-2 btn btn-light product-name float-left category-size">
								<c:choose>
									<c:when
										test="${listProductDetail != null && listProductDetail.size() != 0}">
										<c:forEach var="detail" items="${listProductDetail}">
											<option value="${detail.size}">${detail.size}</option>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<option value="default">Mặc định</option>
									</c:otherwise>
								</c:choose>

							</select>
						</div>

						<div class=" btn-add-card">
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

	</div>

	<div class="container pt-4 mb-4 mt-4">
		<div class="row">
			<div class="row">
				<div class="col-md-9">
					<h3>Carousel Product Cart Slider</h3>
				</div>
				<div class="col-md-3">
					<!-- Controls -->
					<div class="controls pull-right hidden-xs">
						<a class="left fa fa-chevron-left btn btn-success"
							href="#carousel-example" data-slide="prev"></a><a
							class="right fa fa-chevron-right btn btn-success"
							href="#carousel-example" data-slide="next"></a>
					</div>
				</div>
			</div>
			<div id="carousel-example" class="carousel slide hidden-xs"
				data-ride="carousel">
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<div class="row">
							<div class="col-sm-3">
								<div class="col-item">
									<div class="photo">
										<img src="http://placehold.it/350x260" class="img-responsive"
											alt="a" />
									</div>
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Sample Product</h5>
												<h5 class="price-text-color">$199.99</h5>
											</div>
											<div class="rating hidden-sm col-md-6">
												<i class="price-text-color fa fa-star"></i><i
													class="price-text-color fa fa-star"> </i><i
													class="price-text-color fa fa-star"></i><i
													class="price-text-color fa fa-star"> </i><i
													class="fa fa-star"></i>
											</div>
										</div>
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">Add
													to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="col-item">
									<div class="photo">
										<img src="http://placehold.it/350x260" class="img-responsive"
											alt="a" />
									</div>
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Product Example</h5>
												<h5 class="price-text-color">$249.99</h5>
											</div>
											<div class="rating hidden-sm col-md-6"></div>
										</div>
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">Add
													to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="col-item">
									<div class="photo">
										<img src="http://placehold.it/350x260" class="img-responsive"
											alt="a" />
									</div>
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Next Sample Product</h5>
												<h5 class="price-text-color">$149.99</h5>
											</div>
											<div class="rating hidden-sm col-md-6">
												<i class="price-text-color fa fa-star"></i><i
													class="price-text-color fa fa-star"> </i><i
													class="price-text-color fa fa-star"></i><i
													class="price-text-color fa fa-star"> </i><i
													class="fa fa-star"></i>
											</div>
										</div>
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">Add
													to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="col-item">
									<div class="photo">
										<img src="http://placehold.it/350x260" class="img-responsive"
											alt="a" />
									</div>
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Sample Product</h5>
												<h5 class="price-text-color">$199.99</h5>
											</div>
											<div class="rating hidden-sm col-md-6">
												<i class="price-text-color fa fa-star"></i><i
													class="price-text-color fa fa-star"> </i><i
													class="price-text-color fa fa-star"></i><i
													class="price-text-color fa fa-star"> </i><i
													class="fa fa-star"></i>
											</div>
										</div>
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">Add
													to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-sm-3">
								<div class="col-item">
									<div class="photo">
										<img src="http://placehold.it/350x260" class="img-responsive"
											alt="a" />
									</div>
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Product with Variants</h5>
												<h5 class="price-text-color">$199.99</h5>
											</div>
											<div class="rating hidden-sm col-md-6">
												<i class="price-text-color fa fa-star"></i><i
													class="price-text-color fa fa-star"> </i><i
													class="price-text-color fa fa-star"></i><i
													class="price-text-color fa fa-star"> </i><i
													class="fa fa-star"></i>
											</div>
										</div>
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">Add
													to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="col-item">
									<div class="photo">
										<img src="http://placehold.it/350x260" class="img-responsive"
											alt="a" />
									</div>
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Grouped Product</h5>
												<h5 class="price-text-color">$249.99</h5>
											</div>
											<div class="rating hidden-sm col-md-6"></div>
										</div>
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">Add
													to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="col-item">
									<div class="photo">
										<img src="http://placehold.it/350x260" class="img-responsive"
											alt="a" />
									</div>
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Product with Variants</h5>
												<h5 class="price-text-color">$149.99</h5>
											</div>
											<div class="rating hidden-sm col-md-6">
												<i class="price-text-color fa fa-star"></i><i
													class="price-text-color fa fa-star"> </i><i
													class="price-text-color fa fa-star"></i><i
													class="price-text-color fa fa-star"> </i><i
													class="fa fa-star"></i>
											</div>
										</div>
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">Add
													to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="col-item">
									<div class="photo">
										<img src="http://placehold.it/350x260" class="img-responsive"
											alt="a" />
									</div>
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Product with Variants</h5>
												<h5 class="price-text-color">$199.99</h5>
											</div>
											<div class="rating hidden-sm col-md-6">
												<i class="price-text-color fa fa-star"></i><i
													class="price-text-color fa fa-star"> </i><i
													class="price-text-color fa fa-star"></i><i
													class="price-text-color fa fa-star"> </i><i
													class="fa fa-star"></i>
											</div>
										</div>
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">Add
													to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a
													href="http://www.jquery2dotnet.com" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container pb-4 mt-4 mb-4">
		<h3 class="font-weight-bold py-3">Thông Tin Chi Tiết</h3>
		<div>${product.getDescription()}</div>
	</div>


	<div class="container pb-4 mt-4 mb-4">
		<h3 class="font-weight-bold py-3">Bình Luận</h3>

		<form action="/comment/${product.productId}" method="post">
			<div class="form-group">
				<label for="commentTitle" class="form-label font-weight-normal">Tiêu
					đề</label> <input type="text" class="form-control" id="title" name="title"
					placeholder="Nhập tiêu đề">
			</div>
			<div class="form-group">
				<label for="commentContent" class="form-label font-weight-normal">Nội
					dung</label>
				<textarea class="form-control" id="content" rows="5" name="content"
					placeholder="Nhập nội dung"></textarea>
			</div>
			<button type="submit" class="btn btn-dark text-light">Bình
				luận</button>
		</form>


		<div style="display: block; width: 100%">
			<ul id="listComment" style="display: block; width: 100%">
				<c:forEach items="${product.getListComment()}" var="comment">
					<li class="row comment">
						<div class="col-md-3">
							<div>
								<img src="https://tiki.vn/assets/img/avatar.png" alt="#"
									class="img img-resonsive mt-4 ml-4">
							</div>
							<div>
								<h4 class="font-weight-normal mt-3">${comment.getAccount().getFullName()}</h4>
							</div>
						</div>

						<div class="col-md-9">
							<p class="font-weight-bold mt-3">${comment.title }</p>
							<p class="">${comment.getContent()}</p>
							<p class="" style="font-size: 12px">Nhận xét vào:
								${comment.getDateCreated()}</p>
						</div>

					</li>
				</c:forEach>

			</ul>
		</div>
	</div>


	<div class="container pt-4 mb-4 mt-4">
		<div class="row">
			<div class="row">
				<div class="col-md-9">
					<h3 class="mt-4 mb-4">Sản Phẩm Liên Quan</h3>
				</div>
				<div class="col-md-3">
					<!-- Controls -->
					<div class="controls pull-right hidden-xs">
						<a class="left fa fa-chevron-left btn btn"
							href="#carousel-example" data-slide="prev"></a><a
							class="right fa fa-chevron-right btn" href="#carousel-example"
							data-slide="next"></a>
					</div>
				</div>
			</div>
			<div id="carousel-example" class="carousel slide hidden-xs"
				data-ride="carousel">
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<div class="row">
							<div class="col-sm-3">
								<div class="col-item">
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Product A</h5>
												<h5 class="price-text-color">$7.99</h5>
											</div>
											<div class="rating hidden-sm col-md-6">
												<i class="price-text-color fa fa-star"></i> <i
													class="price-text-color fa fa-star"></i>
											</div>
										</div>
									</div>

									<div class="photo">
										<img
											src="http://www.prepbootstrap.com/Content/images/template/productslider/product_001.jpg"
											class="img-responsive" alt="a" />
									</div>
									<div class="info">
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a href="#"
													class="hidden-sm">Add to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a href="#" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>

							<div class="col-sm-3">
								<div class="col-item">
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Product B</h5>
												<h5 class="price-text-color">$9.99</h5>
											</div>
											<div class="rating hidden-sm col-md-6">
												<i class="price-text-color fa fa-star"></i> <i
													class="price-text-color fa fa-star"></i> <i
													class="price-text-color fa fa-star"></i>
											</div>
										</div>
									</div>

									<div class="photo">
										<img
											src="http://www.prepbootstrap.com/Content/images/template/productslider/product_002.jpg"
											class="img-responsive" alt="a" />
									</div>
									<div class="info">
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a href="#"
													class="hidden-sm">Add to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a href="#" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="col-item">
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Product C</h5>
												<h5 class="price-text-color">$7.58</h5>
											</div>
											<div class="rating hidden-sm col-md-6">
												<i class="price-text-color fa fa-star"></i> <i
													class="price-text-color fa fa-star"></i>
											</div>
										</div>
									</div>

									<div class="photo">
										<img
											src="http://www.prepbootstrap.com/Content/images/template/productslider/product_003.jpg"
											class="img-responsive" alt="a" />
									</div>
									<div class="info">
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a href="#"
													class="hidden-sm">Add to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a href="#" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="col-item">
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Another product</h5>
												<h5 class="price-text-color">$3.75</h5>
											</div>
											<div class="rating hidden-sm col-md-6">
												<i class="price-text-color fa fa-star"></i> <i
													class="price-text-color fa fa-star"></i> <i
													class="price-text-color fa fa-star"></i> <i
													class="price-text-color fa fa-star"></i>
											</div>
										</div>
									</div>

									<div class="photo">
										<img
											src="http://www.prepbootstrap.com/Content/images/template/productslider/product_001.jpg"
											class="img-responsive" alt="a" />
									</div>
									<div class="info">
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a href="#"
													class="hidden-sm">Add to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a href="#" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-sm-3">
								<div class="col-item">
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Product</h5>
												<h5 class="price-text-color">$7.17</h5>
											</div>
											<div class="rating hidden-sm col-md-6">
												<i class="price-text-color fa fa-star"></i> <i
													class="price-text-color fa fa-star"></i>
											</div>
										</div>
									</div>

									<div class="photo">
										<img
											src="http://www.prepbootstrap.com/Content/images/template/productslider/product_001.jpg"
											class="img-responsive" alt="a" />
									</div>
									<div class="info">
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a href="#"
													class="hidden-sm">Add to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a href="#" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>

							<div class="col-sm-3">
								<div class="col-item">
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Product</h5>
												<h5 class="price-text-color">$19.99</h5>
											</div>
											<div class="rating hidden-sm col-md-6">
												<i class="price-text-color fa fa-star"></i> <i
													class="price-text-color fa fa-star"></i>
											</div>
										</div>
									</div>

									<div class="photo">
										<img
											src="http://www.prepbootstrap.com/Content/images/template/productslider/product_002.jpg"
											class="img-responsive" alt="a" />
									</div>
									<div class="info">
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a href="#"
													class="hidden-sm">Add to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a href="#" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="col-item">
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Product</h5>
												<h5 class="price-text-color">$1.99</h5>
											</div>
											<div class="rating hidden-sm col-md-6">
												<i class="price-text-color fa fa-star"></i> <i
													class="price-text-color fa fa-star"></i> <i
													class="price-text-color fa fa-star"></i>
											</div>
										</div>
									</div>

									<div class="photo">
										<img
											src="http://www.prepbootstrap.com/Content/images/template/productslider/product_003.jpg"
											class="img-responsive" alt="a" />
									</div>
									<div class="info">
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a href="#"
													class="hidden-sm">Add to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a href="#" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="col-item">
									<div class="info">
										<div class="row">
											<div class="price col-md-6">
												<h5>Product</h5>
												<h5 class="price-text-color">$1.09</h5>
											</div>
											<div class="rating hidden-sm col-md-6">
												<i class="price-text-color fa fa-star"></i> <i
													class="price-text-color fa fa-star"></i> <i
													class="price-text-color fa fa-star"></i> <i
													class="price-text-color fa fa-star"></i>
											</div>
										</div>
									</div>

									<div class="photo">
										<img
											src="http://www.prepbootstrap.com/Content/images/template/productslider/product_001.jpg"
											class="img-responsive" alt="a" />
									</div>
									<div class="info">
										<div class="separator clear-left">
											<p class="btn-add">
												<i class="fa fa-shopping-cart"></i><a href="#"
													class="hidden-sm">Add to cart</a>
											</p>
											<p class="btn-details">
												<i class="fa fa-list"></i><a href="#" class="hidden-sm">More
													details</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
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


<script src="<c:url value='/plugins/jquery/jquery-3.5.1.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/template/web/plugins/bootstrap/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/template/web/jquery/paging.js'/>"></script>

<script type="text/javascript">
	$("#listComment").JPaging();
</script>


