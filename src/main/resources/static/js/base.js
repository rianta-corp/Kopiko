$(document).ready(function() {
	findAllPaymentMethod();
	var $paymentMethodName = $('#paymentMethodName');
	var $paymentMethodId = $('#paymentMethodId');
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
	$('#pyamentMethodInfo').on('click', '.edit-btn', function() {
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
	$('#pyamentMethodInfo').on('click', '.delete-btn', function() {
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

function searchPaymentMethodByName() {
	
}

function findAllPaymentMethod() {
	$.ajax({
		url: '/payment/api/findAll',
		type: 'GET',
		dataType: 'JSON',
		success: function(paymentMethods) {
			renderPaymentMethod(paymentMethods);
		},
		error: function() {
			alert('Find all failed');
		}
	})
}
function renderPaymentMethod(paymentMethods) {
	var $pyamentMethodInfo = $('#pyamentMethodInfo');
	var rowHTML = "";
	$('#pyamentMethodInfo tbody').empty();
	$.each(paymentMethods, function(i, paymentMethod) {
		rowHTML = "<tr class='text-center'><td class='paymentMethodId'>" + paymentMethod.paymentMethodId + "</td>"
			+ "<td class='paymentMethodId'>" + paymentMethod.paymentMethodName + "</td>"
			+ "<td class='actions-btn'>"
			+ "<a class='edit-btn' data-id='" + paymentMethod.paymentMethodId + "'>Update</a> | <a class='delete-btn' data-id='" + paymentMethod.paymentMethodId + "'>Delete</a> "
			+ "</td>"
			+ "</tr> "
		$pyamentMethodInfo.append(rowHTML);
	})
}
