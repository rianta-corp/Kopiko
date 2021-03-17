$(document).ready(function() {
	
	findAllCategoryAndPaymentMethod();
	var $paymentMethodName = $('#paymentMethodName');
	$('#btnAddPayment').on('click', function() {
		var paymentMethodEntity = {
			paymentMethodName: $paymentMethodName.val()
		}
		$.ajax({
			url: '/payment/api/add',
			type: 'POST',
			dataType: 'JSON',
			data: paymentMethodEntity, /**Must to have data from clinet */
			success: function() {
				findAllPaymentMethod();
				$paymentMethodName.val("");
				console.log('Add new payment success', paymentMethodName);
			},
			error: function() {
				alert('Add new payment falied');
			}
		})
	})

	/** Show form update payment method */
	$('#paymentMethodInfo').on('click', '.edit-btn', function() {
		$.ajax({
			url: '/payment/api/find/' + $(this).data("id"),
			type: 'GET',
			dataType: 'JSON',
			success: function(responseData) {
				$('#paymentMethodIdUpdate').val(responseData.paymentMethodId);
				$('#paymentMethodNameUpdate').val(responseData.paymentMethodName);
			},
			error: function() {
				alert('Show form payment falied');
			}
		})
	})

	/* Update update payment method */
	$('#btnUpdatePayment').on('click', function() {
		var $paymentMethodId = $('#paymentMethodIdUpdate');
		var $paymentMethodName = $('#paymentMethodNameUpdate');
		var paymentMethodEntity = {
			paymentMethodId: $paymentMethodId.val(),
			paymentMethodName: $paymentMethodName.val(),
		}
		$.ajax({
			url: '/payment/api/update',
			type: 'PUT',
			dataType: 'JSON',
			data: paymentMethodEntity,
			success: function(responseData) {
				findAllPaymentMethod();
				console.log('Update payment method success', responseData);
			},
			error: function() {
				alert('Update payment method falied');
			}
		})
	})

	/** Delete payment method*/
	$('#paymentMethodInfo').on('click', '.delete-btn', function() {
		$.ajax({
			url: '/payment/api/delete/' + $(this).data('id'),
			type: 'DELETE',
			success: function() {
				findAllPaymentMethod();
				alert('Delete payment method success')
			},
			error: function() {
				alert('Delete payment method failed')
			}
		})
	})

	/** Search by payment method name */
	$('#btnSearch').on('click', function() {
		var paymentMethodName = $('#keyword').val();
		$.ajax({
			url: '/payment/api/search/' + paymentMethodName,
			type: 'GET',
			data: paymentMethodName,
			success: function(paymentMethods) {
			  	renderPaymentMethod(paymentMethods);
				console.log('Search payment method by keyword: ' + paymentMethodName + ' success');
			},
			error: function() {
				alert('Search payment method by keyword: ' + paymentMethodName + ' failed');
			}
		})
	})
})

function findAllPaymentMethod() {
	$.ajax({
		url: '/payment/api/findAll',
		type: 'GET',
		dataType: 'JSON',
		success: function(paymentMethods) {
			 renderPaymentMethod(paymentMethods);
			console.log('findAllPaymentMethod');
			console.log(paymentMethods);
		},
		error: function() {
			alert('Find all failed');
		}
	})
}
/** Test home page */
function findAllCategoryAndPaymentMethod() {
	$.ajax({
		url: '/payment/v1/api/home',
		type: 'GET',
		dataType: 'JSON',
		success: function(responseModel) {
			console.log(responseModel.object.categoryList);
			renderCategory(responseModel.object.categoryList);
			renderPaymentMethod(responseModel.object.paymentMethodList);
		},
		error: function() {
			alert('Find all failed');
		}
	})
}
function renderCategory(categoryList) {
	var $categoryInfo = $('#categoryInfo');
	var rowHTML = "";
	$('#categoryInfo tbody').empty();
	$.each(categoryList, function(key, value) {
		rowHTML = "<tr class='text-center'>"
			+ "<td >" + value.categoryId + "</td>"
			+ "<td >" + value.categoryCode + "</td>"
			+ "<td >" + value.categoryName + "</td>"
			+ "<td >" + value.parentCategoryId + "</td>"
			+ "<td class='actions-btn'>"
			+ "<a class='edit-btn' data-id='" + value.categoryId + "'>Update</a> | <a class='delete-btn' data-id='" + value.categoryId + "'>Delete</a> "
			+ "</td>"
			+ "</tr> "
		$categoryInfo.append(rowHTML);
	})
}

function renderPaymentMethod(paymentMethods) {
	var $paymentMethodInfo = $('#paymentMethodInfo');
	var rowHTML = "";
	$('#paymentMethodInfo tbody').empty();
	$.each(paymentMethods, function(i, paymentMethod) {
		rowHTML = "<tr class='text-center'><td class='paymentMethodId'>" + paymentMethod.paymentMethodId + "</td>"
			+ "<td class='paymentMethodId'>" + paymentMethod.paymentMethodName + "</td>"
			+ "<td class='actions-btn'>"
			+ "<a class='edit-btn' data-id='" + paymentMethod.paymentMethodId + "'>Update</a> | <a class='delete-btn' data-id='" + paymentMethod.paymentMethodId + "'>Delete</a> "
			+ "</td>"
			+ "</tr> "
		$paymentMethodInfo.append(rowHTML);
	})
}
