<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<ol class="breadcrumb mb-4">
	<li class="breadcrumb-item"><a href="/admin/home">Dashboard</a></li>
	<li class="breadcrumb-item"><a href="/admin/product/list">Control
			Product</a></li>
	<li class="breadcrumb-item active">Update Product</li>
</ol>
<div class="card mb-4 mt-3">
	<div class="card-header">
		<i class="fas fa-table mr-1"></i> Sản Phẩm
	</div>
	<div class="card-body">
		<form>
			<div class="form-group">
				<label for="productId">ID Sản Phẩm</label> <input type="text"
					class="form-control" id="productId"
					value="${productDTO.getProductId()}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="productName">Tên Sản Phẩm</label> <input type="text"
					class="form-control" id="productName"
					value="${productDTO.getProductName()}">
			</div>
			<div class="form-group">
				<label for="categoryId">Danh Mục</label> <select
					class="form-control" id="categoryId">
					<c:forEach items="${listCategory}" var="category">
						<c:if
							test="${productDTO.getCategoryId() ==  category.getCategoryId()}">
							<option value="${category.getCategoryId()}" selected="selected">${category.getCategoryName()}</option>
						</c:if>
						<c:if
							test="${productDTO.getCategoryId() !=  category.getCategoryId()}">
							<option value="${category.getCategoryId()}">${category.getCategoryName()}</option>
						</c:if>
					</c:forEach>
				</select>
			</div>
			<div class="form-group">
				<label for="brandId">Thương Hiệu</label> <select
					class="form-control" id="brandId">
					<c:forEach items="${listBrand}" var="brand">
						<c:if test="${productDTO.getBrandId() ==  brand.getBrandId()}">
							<option value="${brand.getBrandId()}" selected="selected">${brand.getBrandName()}</option>
						</c:if>
						<c:if test="${productDTO.getBrandId() !=  brand.getBrandId()}">
							<option value="${brand.getBrandId()}">${brand.getBrandName()}</option>
						</c:if>
					</c:forEach>
				</select>
			</div>

			<div class="form-group">
				<label for="description">Mô Tả</label>
				<textarea class="form-control" id="description" rows="10">${productDTO.getDescription()}</textarea>
			</div>

			<div class="form-group">
				<label for="status">Trạng Thái</label> <select class="form-control"
					id="status">
					<c:forEach items="${listStatus}" var="status">
						<c:if test="${status.getStatusId() ==  status.getStatusId()}">
							<option value="${status.getStatusId()}" selected="selected">${status.getStatusName()}</option>
						</c:if>
						<c:if test="${status.getStatusId() !=  status.getStatusId()}">
							<option value="${status.getStatusId()}">${status.getStatusName()}</option>
						</c:if>

					</c:forEach>
				</select>
			</div>

			<div class="form-group">
				<button type="button" class="btn btn-primary float-left"
					onclick="window.location.href='/admin/product/list'">Back</button>
				<p id="msg" class="ml-4 pt-1 float-left"></p>
				<button type="submit" class="btn btn-primary mb-2 float-right"
					id="update">Lưu</button>
			</div>


		</form>

	</div>
</div>
<script src="<c:url value='/plugins/jquery/jquery-3.5.1.min.js'/>"></script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="<c:url value='/template/admin/dist/js/scripts.js'/>"></script>
<script src="<c:url value='/plugins/jquery/jquery.validate.min.js'/>"></script>
<script src="<c:url value='/template/admin/js/update-product.js'/>"></script>
