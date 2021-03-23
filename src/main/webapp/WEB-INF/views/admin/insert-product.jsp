<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<ol class="breadcrumb mb-4">
	<li class="breadcrumb-item"><a href="/admin/home">Dashboard</a></li>
	<li class="breadcrumb-item"><a href="/admin/product/list">Control Product</a></li>
	<li class="breadcrumb-item active">Add Product</li>
</ol>
<div class="card mb-4 mt-3">
	<div class="card-header">
		<i class="fas fa-table mr-1"></i> Sản Phẩm
	</div>
	<div class="card-body">
		<form method="post">
			<div class="form-group">
				<label for="productName" class="font-weight-bold">Tên Sản
					Phẩm</label> <input type="text" class="form-control" id="productName"
					placeholder="Nhập tên sản phẩm" required>
			</div>
			<div class="form-group">
				<label for="categoryId" class="font-weight-bold">Danh Mục</label> <select
					class="form-control" id="categoryId">
					<c:forEach items="${listCategory}" var="category">
						<option value="${category.getCategoryId()}">${category.getCategoryName()}</option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group">
				<label for="brandId" class="font-weight-bold">Thương Hiệu</label> <select
					class="form-control" id="brandId">
					<c:forEach items="${listBrand}" var="brand">
						<option value="${brand.getBrandId()}">${brand.getBrandName()}</option>
					</c:forEach>
				</select>
			</div>

			<div class="form-group">
				<label for="description" class="font-weight-bold">Mô Tả</label>
				<textarea class="form-control" id="description" rows="10" required></textarea>
			</div>

			<div class="form-group">
				<label for="status" class="font-weight-bold">Trạng Thái</label> <select
					class="form-control" id="status">
					<c:forEach items="${listStatus}" var="status">
						<option value="${status.getStatusId()}">${status.getStatusName()}</option>
					</c:forEach>
				</select>
			</div>


			<div class="form-group">
				<button type="button" class="btn btn-primary float-left"
					onclick="window.location.href='/admin/product/list'">Back</button>
				<p id="msg" class="ml-4 pt-1 float-left"></p>
				<button type="submit" class="btn btn-primary mb-2 float-right"
					id="addNew">Tạo Mới</button>
			</div>
		</form>
	</div>
</div>


<script src="<c:url value='/plugins/jquery/jquery-3.5.1.min.js'/>"></script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="<c:url value='/template/admin/dist/js/scripts.js'/>"></script>
<%-- <script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
	crossorigin="anonymous"></script>
<script
	src="<c:url value='/template/admin/dist/assets/demo/chart-area-demo.js'/>"></script>
<script
	src="<c:url value='/template/admin/dist/assets/demo/chart-bar-demo.js'/>"></script> --%>
<%-- <script
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
	crossorigin="anonymous"></script>
<script
	src="<c:url value='/template/admin/dist/assets/demo/datatables-demo.js'/>"></script> --%>
<script src="<c:url value='/plugins/jquery/jquery.validate.min.js'/>"></script>
<script src="<c:url value='/template/admin/js/insert-product.js'/>"></script>
