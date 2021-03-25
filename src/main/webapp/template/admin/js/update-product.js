$(document).ready(function () {

	$(document).delegate('#update', 'click', function (event) {
		event.preventDefault();

		var control = "product";
		var productId = $('#productId').val();
		var productName = $('#productName').val();
		var categoryId = $('#categoryId').val();
		var brandId = $("#brandId").val();
		var description = $("#description").val();
		var price = $('#price').val();
		var salePrice = $('#salePrice').val();
		var status = $("#status").val();

		$.ajax({
			type: "PUT",
			contentType: "application/json; charset=utf-8",
			url: "/api/v1/admin/" + control + "/" + productId,
			data: JSON.stringify(
				{
					'productId': productId,
					'productName': productName,
					'categoryId': categoryId,
					'brandId': brandId,
					'price': price,
					'salePrice': salePrice,
					'description': description,
					'status': status
				}
			),
			cache: false,
			success: function (result) {
				$("#msg").html("<span style='color: green'>Cập nhật thành công!</span>").fadeIn().fadeOut(3000, function () {
					$(this).remove();
				});
				window.setTimeout(function () { location.reload() }, 1000)
			},
			error: function (err) {
				$("#msg").html("<span style='color: red'>Cập nhật thất bại!</span>").fadeIn().fadeOut(3000, function () {
					$(this).remove();
				});
			}
		});
	});
});