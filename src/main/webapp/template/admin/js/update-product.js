//$(document).ready(function () {
//
//	$(document).delegate('#update', 'click', function (event) {
//		event.preventDefault();
//
//		var control = "product";
//		var productId = $('#productId').val();
//		var productName = $('#productName').val();
//		var categoryId = $('#categoryId').val();
//		var brandId = $("#brandId").val();
//		var description = $("#description").val();
//		var status = $("#status").val();
//		$.ajax({
//			type: "PUT",
//			contentType: "application/json; charset=utf-8",
//			url: "/api/v1/admin/" + control + "/" + productId,
//			data: JSON.stringify(
//				{
//					'productId': productId,
//					'productName': productName,
//					'categoryId': categoryId,
//					'brandId': brandId,
//					'description': description,
//					'status': status
//				}
//			),
//			cache: false,
//			success: function (result) {
//				$("#msg").html("<span style='color: green'>Cập nhật thành công!</span>").fadeIn().fadeOut(3000, function () {
//					$(this).remove();
//				});
//				window.setTimeout(function () { location.reload() }, 1000)
//			},
//			error: function (err) {
//				$("#msg").html("<span style='color: red'>Cập nhật thất bại!</span>").fadeIn().fadeOut(3000, function () {
//					$(this).remove();
//				});
//			}
//		});
//	});
//});



function previewImages() {

	  var preview = document.querySelector('#previewonly');
	  
	  if (this.files) {
	    [].forEach.call(this.files, readAndPreview);
	  }

	  function readAndPreview(file) {

	    // Make sure `file.name` matches our extensions criteria
	    if (!/\.(jpe?g|png|gif)$/i.test(file.name)) {
	      return alert(file.name + " is not an image");
	    } // else...
	    
	    var reader = new FileReader();
	    
	    reader.addEventListener("load", function() {
	      var image = new Image();
	      image.height = 100;
	      image.margin = 5;
	      image.title  = file.name;
	      image.src    = this.result;
	      preview.appendChild(image);
	    });
	    
	    reader.readAsDataURL(file);
	    
	  }

	}

	document.querySelector('#file-input').addEventListener("change", previewImages);
