$(document).ready(function () {

	$(document).delegate('#addNew', 'click', function (event) {
		event.preventDefault();

		var control = "product";
		var productName = $('#productName').val();
		var categoryId = $('#categoryId').val();
		var brandId = $("#brandId").val();
		var description = $("#description").val();
		var status = $("#status").val();
		if ($("form").valid()) {
			$.ajax({
				type: "POST",
				contentType: "application/json; charset=utf-8",
				url: "/api/v1/admin/" + control,
				data: JSON.stringify(
					{
						'productName': productName,
						'categoryId': categoryId,
						'brandId': brandId,
						'description': description,
						'status': status
					}
				),
				cache: false,
				success: function (result) {
					$("#msg").html("<span style='color: green'>Tạo mới thành công!</span>").fadeIn().fadeOut(3000, function () {
						$(this).remove();
					});
					window.setTimeout(function () { location.reload() }, 1000)
				},
				error: function (err) {
					$("#msg").html("<span style='color: red'>Tạo mới thất bại!</span>").fadeIn().fadeOut(3000, function () {
						$(this).remove();
					});
				}
			});
		}
	});
});