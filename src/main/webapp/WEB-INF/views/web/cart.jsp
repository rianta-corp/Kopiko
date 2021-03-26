<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<head>
<link rel="stylesheet"
	href="<c:url value='/template/web/css/cart-page.css'/>">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

</head>

<!-- List giỏ hàng -->
<section id="view">

	<div class="container">
		<div class="row mt-4">
			<h3 class="ml-4">Giỏ Hàng</h3>
		</div>
		<div class="row mt-4">
			<c:choose>
				<c:when test="${sessionScope.myCartNum == 0}">
					<div align="center" class="mb-4" style="width: 100%">
						<h4 align="center">Bạn không có sản phẩm nào trong giỏ!</h4>
						<br>
						<h4 align="center">
							Hãy tiếp tục <a class="button dark br-5" href="/home">Mua
								Hàng</a>
						</h4>
					</div>
				</c:when>
				<c:otherwise>
					<div class="col-md-8">
						<div class="payment-cart">
							<ul class="list-group">
								<c:forEach var="map" items="${sessionScope.myCartItems}">
									<li class="list-group-item rounder-4">
										<div class="cart-item">
											<div class="item-remove">
												<a href="/checkout/cart/remove/${map.key}"
													title="Xoá Sản Phẩm"><span
													class="glyphicon glyphicon-remove-circle	
									"></span></a>
											</div>
											<div class="item-content">
												<h4>${map.value.product.productName}</h4>
												<form method="post"
													action="/checkout/cart/update/${map.key}" class="mb-3">
													Số lượng: <input type="number" id="quantity"
														value="${map.value.quantity}" name="quantity" min="1"
														max="1000"> <input type="submit" name="update"
														value="Lưu" class="dark-btn br-2">
												</form>


												<p>Đơn giá: ${map.value.product.getSalePrice() } đ</p>

											</div>

											<div class="item-image">
												<img class="cart-item-img"
													alt="${map.value.product.productName}"
													src="${map.value.product.imageUrl}">

											</div>
										</div>
									</li>


								</c:forEach>
							</ul>
						</div>
					</div>
					<div class="col-md-4">

						<div class="payment rounder-3">
							<h4 align="center"
								style="padding: 8px; margin: 0; border-bottom: 1px solid #DCDCDC;">Địa
								Chỉ Giao Hàng</h4>
							<h5 style="padding: 20px 40px 0 40px">
								<span>Hoàng Quốc Khánh</span> | <span>0389829122</span>
							</h5>
							<h5 style="padding: 5px 40px">FPT Complex, Phường Hoà Hải, Quận Ngũ Hành Sơn, Đà Nẵng

							</h5>
							<div class="w-100 d-flex justify-content-center">
								<button type="button" class="  button dark rounder-3" id="changeAddress" >Thay đổi</button>
							</div>
						</div>

						<div class="payment rounder-3 mt-2">
							<h4 align="center"
								style="padding: 8px; margin: 0; border-bottom: 1px solid #DCDCDC;">Thanh
								Toán</h4>
							<h5 style="padding: 20px 40px">
								Tổng Tiền: <span style="float: right">${sessionScope.myCartTotal}
									đ</span>
							</h5>
							<form action="/checkout/payment" method="post">
								<input type="submit" name="thanhtoan" value="Thanh Toán"
									class="button dark br-10"
									style="display: block; margin: 0 auto; padding: 10px 100px; border-radius: 25px">
							</form>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>

	</div>
</section>
<script type="text/javascript">
		$("input.product-quantity").on("keypress keyup blur",function (e) {    
		    $(this).val($(this).val().replace(/^[a-zA-Z]+$/, ""));
		        if ((e.which < 48 || e.which > 57)) {
		            e.preventDefault();
		    }
		});
	</script>

<!-- SECTION FOOTER -->