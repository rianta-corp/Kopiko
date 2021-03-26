var table;
var url = '/admin/brand/findAll';
function initTableData() {
	/** Data from an URL */
	$.get(url, function(responseData) {
		/*alert(`data=${JSON.stringify(responseData)}`)*/
		table = $('#dataTable').DataTable({
			orderCellsTop: true,
			fixedHeader: true,
			processing: true,
			data: responseData,
			columns: [
				{ data: 'brandId' },
				{ data: 'brandImgUrl' },
				{ data: 'brandName' },
				{ data: 'info' },
				{
					render: function(data, type, row) {
						return `<div class="action-btns text-center">
								<a class="edit-btn" data-id="${row.brandId}" data-name="${row.brandName}" data-toggle="modal" data-target="#myModal">
									<i class="fas fa-edit"></i>
								</a> | 
								<a class="delete-btn" data-id="${row.brandId}" data-name="${row.brandName}" data-toggle="modal" data-target="#confirmDeleteModal">
									<i class="fas fa-trash-alt"></i>
								</a>
							</div>`
					}
				}
			],
			dom: 'Bfrtip',
			buttons: [
				{
					text: 'Add New Brand',
					action: function(e, dt, node, config) {
						$('.modal-title').text('Add New Brand');
						$('#brandId').parent().addClass("d-none");
						$('#myModal').modal('toggle')
						resetForm();
					}
				}
			]
		});
	}).fail(function() {
		alert("Cannot get data from URL");
	})
}

$(document).ready(function() {
	initTableData();

	/** Hover change background tag thead */
	$("#list-header").on({
		mouseenter: function() {
			$(this).css("background-color", "lightgray");
		},
		mouseleave: function() {
			$(this).css("background-color", "lightblue");
		}
	})

	/** Add input search header datatable */
	$('#dataTable thead tr').clone(true).appendTo('#dataTable thead');
	$('#dataTable thead tr:eq(1) th').each(function(i) {
		var title = $(this).text();
		$(this).html('<input type="text" placeholder="Search ' + title + '" />');
		$('input', this).on('keyup change', function() {
			if (table.column(i).search() !== this.value) {
				table.column(i).search(this.value).draw();
			}
		});
	});
	$('#dataTable thead tr:eq(1) th').addClass('d-none')

	/** Show modal form update brand */
	$("#dataTable").on('click', '.edit-btn', function() {
		$('#brandId').parent().removeClass("d-none");
		$('.modal-title').text('Edit Brand');
		$.ajax({
			url: '/admin/brand/find/' + $(this).data('id'),
			type: 'GET',
			success: function(responseData) {
				$("#brandId").val(responseData.brandId);
				$("#brandName").val(responseData.brandName);
				$("#info").val(responseData.info);
				$("#brandImgUrl").val(responseData.brandImgUrl);
			}
		})
	})

	/** Submit Update Brand */
	$("#btnSubmitBrand").on('click', function(event) {
		event.preventDefault();
		var $brandId = $("#brandId")
		var $brandImgUrl = $("#brandImgUrl")
		var $brandName = $("#brandName")
		var $info = $("#info")
		var isAction = $brandId.val() == undefined || $brandId.val() == "";
		var brandEntity = {
			brandId: $brandId.val() ? $brandId.val() : null,
			brandImgUrl: $brandImgUrl.val(),
			brandName: $brandName.val(),
			info: $info.val(),
		}
		console.log('brandEntity: ' + JSON.stringify(brandEntity))
		
		$("#brandInfoForm").validate({
			rules: {
				brandName: {
					required: true,
					minlength: 2,
					maxlength: 100,
				}
			},
			messages: {
				brandName: {
					required: "Brand Name  is required",
					minlength: "Your brand name must consist of at least 2 characters",
					maxlength: "Your brand name must less than 100 characters"
				}
			},
			errorElement: "div",
			errorClass: "error-message-invalid"
		});
		if ($("#brandInfoForm").valid()) {
			$.ajax({
				url: '/admin/brand/' + (isAction ? "add" : "update"),
				type: 'POST',
				dataType: 'JSON',
				data: brandEntity,
				enctype: 'multipart/form-data',
				success: function(responseData) {
					if (responseData.resonseCode == 100) {
						/**Reload datatable */
						reloadDataTable();
						$('#myModal').modal('toggle');
						$('#announcemnet strong:eq(0)').removeClass("text-warning").addClass("text-success");
						$('#notification').text((isAction ? "Add New Brand " : "Update Brand ") + "Success!");
						$("#announcemnet").toast('show');
					} else {
						$('#announcemnet strong:eq(0)').removeClass("text-success").addClass("text-warning");
						$('#notification').text("The value you entered has been duplicated!");
						$("#announcemnet").toast('show');
					}
				},
				error: function(e) {
					console.log('error brandEntity: ' + JSON.stringify(brandEntity))
					alert('Update failed! ' + JSON.stringify(e));
				}
			})
		}

	})

	/** Show modal delete brand */
	$("#dataTable").on('click', '.delete-btn', function() {
		$("#deleteBrandName").text($(this).data("name"));
		$("#btnSubmitDelete").attr('data-id', $(this).data('id'));
	})

	/** Submit delete brand */
	$("#btnSubmitDelete").on('click', function() {
		console.log('.data("") = ' + $(this).data('id') + ', .attr= ' + $(this).attr('data-id'));
		$.ajax({
			url: '/admin/brand/delete/' + $(this).attr('data-id'),
			type: 'DELETE',
			success: function(responseData) {
				reloadDataTable();
				$('#confirmDeleteModal').modal('toggle');
				$('#announcemnet strong:eq(0)').removeClass("text-warning").addClass("text-success");
				$('#notification').text("Delete Brand Success!");
				$("#announcemnet").toast('show');
				console.log(responseData + ' success: ' + $(this).data('id'))
			},
			error: function(e) {
				console.log('error: ' + $(this).data('id'))
				alert('Delete brand failed ' + JSON.stringify(e));
			}
		})
		console.log('Brand id after:' + $(this).data('id'))
	})
})

function reloadDataTable() {
	$('#dataTable').dataTable().fnDestroy();
	initTableData();
}

function resetForm() {
	$("#brandId").val('');
	$("#brandName").val('');
	$("#brandImgUrl").val('');
	$("#info").val('');
}


