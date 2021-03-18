<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<head>
<link rel="stylesheet"
	href="<c:url value='/template/web/css/cart-page.css'/>">
</head>

<!-- container-private -->
<div class="cart-content">
	<div class="container-private cart-content-container">
		<!-- No Cart -->
		<div class="no-cart">
			<span class="no-cart__content">Chưa có sản phẩm nào trong giỏ
				hàng!</span> <a href="index.html" class="btn btn-return">QUAY TRỞ LẠI
				CỬA HÀNG</a>
		</div>
		<!-- End No Cart -->

		<!-- Has cart -->
		<div class="has-cart">
			<div class="has-cart__list-item">
				<table class="cart-list__table">
					<thead>
						<tr class="cart-list__table-header">
							<td class="cart-list__table-header-1">SẢN PHẨM</td>
							<td class="cart-list__table-header-2">GIÁ</td>
							<td class="cart-list__table-header-3">SỐ LƯỢNG</td>
							<td class="cart-list__table-header-4">TỔNG</td>
						</tr>
					</thead>
					<tbody class="cart-list__table-body">
						<tr class="cart-list__table-item">
							<td>
								<div class="table-item__header">
									<a href="#" class="table-item__header-delete"><i
										class="far fa-times-circle"></i></a> <img src="/img/avatar.jpg"
										alt="" class="table-item__header-img">
									<div class="table-item__header-type">Classic</div>
								</div>
							</td>
							<td>
								<div class="table-item__price">700.000đ</div>
							</td>
							<td>
								<!-- <div class="table-item__quantity">1</div> -->
								<div class="add-respon-sl table-item__quantity">
									<button type="button"
										class="quantity-left-minus btn btn-quantity btn-number float-left fas fa-minus"
										data-type="minus" data-field=""></button>
									<input type="text" id="quantity" name="quantity"
										class="form-control input-number float-left" value="1" min="1"
										max="100">
									<button type="button"
										class="quantity-right-plus btn btn-quantity btn-number float-left fas fa-plus"
										data-type="plus" data-field=""></button>
								</div>
							</td>
							<td>
								<div class="table-item__total">700.000đ</div>
							</td>
						</tr>
						<tr class="cart-list__table-item">
							<td>
								<div class="table-item__header">
									<a href="#" class="table-item__header-delete"><i
										class="far fa-times-circle"></i></a> <img src="/img/avatar.jpg"
										alt="" class="table-item__header-img">
									<div class="table-item__header-type">Classic</div>
								</div>
							</td>
							<td>
								<div class="table-item__price">700.000đ</div>
							</td>
							<td>
								<!-- <div class="table-item__quantity">1</div> -->
								<div class="add-respon-sl table-item__quantity">
									<button type="button"
										class="quantity-left-minus btn btn-quantity btn-number float-left fas fa-minus"
										data-type="minus" data-field=""></button>
									<input type="text" id="quantity-1" name="quantity"
										class="form-control input-number float-left" value="1" min="1"
										max="100">
									<button type="button"
										class="quantity-right-plus btn btn-quantity btn-number float-left fas fa-plus"
										data-type="plus" data-field=""></button>
								</div>
							</td>
							<td>
								<div class="table-item__total">700.000đ</div>
							</td>
						</tr>
						<tr class="cart-list__table-item">
							<td>
								<div class="table-item__header">
									<a href="#" class="table-item__header-delete"><i
										class="far fa-times-circle"></i></a> <img src="/img/avatar.jpg"
										alt="" class="table-item__header-img">
									<div class="table-item__header-type">Classic</div>
								</div>
							</td>
							<td>
								<div class="table-item__price">700.000đ</div>
							</td>
							<td>
								<!-- <div class="table-item__quantity">1</div> -->
								<div class="add-respon-sl table-item__quantity">
									<button type="button"
										class="quantity-left-minus btn btn-quantity btn-number float-left fas fa-minus"
										data-type="minus" data-field=""></button>
									<input type="text" id="quantity-2" name="quantity"
										class="form-control input-number float-left" value="1" min="1"
										max="100">
									<button type="button"
										class="quantity-right-plus btn btn-quantity btn-number float-left fas fa-plus"
										data-type="plus" data-field=""></button>
								</div>
							</td>
							<td>
								<div class="table-item__total">700.000đ</div>
							</td>
						</tr>
						<tr class="cart-list__table-item">
							<td><a href="index.html" class="btn btn-return btn-continue"><i
									class="fas fa-long-arrow-alt-left cart-list__table-item-icon"></i>TRỞ
									VỀ</a></td>
							<td><a href="#" class="btn btn-return btn-update-cart">UPDATE</a></td>
						</tr>
					</tbody>

				</table>
			</div>
			<div class="has-cart__pay">
				<div class="has-cart__pay-detail">
					<table class="cart-list__table-pay">
						<thead>
							<tr class="table-pay__header">
								<td class="table-pay__header-total">TỔNG SỐ LƯỢNG</td>
								<td class="table-pay__header-total-2"></td>
							</tr>
						</thead>
						<tbody class="table-pay__body">
							<tr class="table-pay__body-row">
								<td>
									<div class="table-pay__body-total">Tổng phụ</div>
								</td>
								<td>
									<div class="table-pay__body-price table-item__price">700.000đ</div>
								</td>
							</tr>
							<tr class="table-pay__body-row">
								<td>
									<div class="table-pay__body-shipping">Giao hàng</div>
								</td>
								<td>
									<ul class="table-pay__body-ship-detail">
										<li class="pay__ship-detail">Giao hàng miễn phí</li>
										<li class="pay__ship-detail">Ước tính cho Việt Nam</li>
										<li class="pay__ship-detail">Đổi địa chỉ</li>
									</ul>
								</td>
							</tr>
							<tr class="table-pay__body-row">
								<td>
									<div class="table-pay__body-total">Tổng</div>
								</td>
								<td>
									<div class="table-pay__body-price table-item__price">700.000đ</div>
								</td>
							</tr>
							<tr>
								<td class="btn-offer"></td>
								<td class="btn-offer"><a href="#"
									class="btn btn-return btn-update-cart btn-offer">THANH TOÁN</a>
								</td>
							</tr>
						</tbody>

					</table>
				</div>

				<div class="has-cart__pay-offer">
					<table class="cart-list__table-pay-offer">
						<thead>
							<tr class="table-pay__offer-header">
								<td class="table-pay__offer-header">Phiếu ưu đãi</td>
							</tr>
						</thead>
						<tbody class="table-pay-offer__body">
							<tr class="table-pay-offer__body-input">
								<td><input class="table-pay-offer__body-input-btn"
									type="text" placeholder="Mã ưu đãi"></td>
							</tr>
							<tr class="table-pay-offer__body-btn">
								<td><a href="#"
									class="btn btn-return btn-update-cart btn-offer">ÁP DỤNG</a></td>
							</tr>
						</tbody>

					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End container-private -->