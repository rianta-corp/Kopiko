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
			<br>
		</div>
		<div class="row pb-5 mt-4 mb-4">
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

						<div class="col-lg-12 pt-3 form-group">
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

						<div class="col-lg-12 btn-add-card">
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

	<div class="container">
		<h3 class="font-weight-bold py-3">Thông Tin Chi Tiết</h3>
		<div>${product.getDescription()}</div>
	</div>


	<div class="container">
		<h3 class="font-weight-bold py-3">Bình Luận</h3>

		<form action="/comment/${product.productId}" method="post">
			<div class="form-group">
				<label for="commentTitle" class="form-label font-weight-normal">Tiêu đề</label> <input
					type="text" class="form-control" id="title" name="title"
					placeholder="Nhập tiêu đề">
			</div>
			<div class="form-group">
				<label for="commentContent" class="form-label font-weight-normal">Nội dung</label>
				<textarea class="form-control" id="content" rows="5" name="content"
					placeholder="Nhập nội dung"></textarea>
			</div>
			<button type="submit" class="btn btn-dark text-light">Bình luận</button>
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

<link rel="stylesheet"
	href="<c:url value='/template/web/jquery/PagingStyle.css'/>" />
<script src="<c:url value='/template/web/jquery/paging.js'/>"></script>
<script type="text/javascript">
	$("#listComment").JPaging();
</script>