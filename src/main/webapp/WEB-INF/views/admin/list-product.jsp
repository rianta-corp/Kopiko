<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<h1 class="mt-4">Tables</h1>
<ol class="breadcrumb mb-4">
	<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
	<li class="breadcrumb-item active">Tables</li>
</ol>
<div class="card mb-4">
	<div class="card-body">
		DataTables is a third party plugin that is used to generate the demo
		table below. For more information about DataTables, please visit the <a
			target="_blank" href="https://datatables.net/">official
			DataTables documentation</a> .
	</div>
</div>
<div class="card mb-4">
	<div class="card-header">
		<i class="fas fa-table mr-1"></i> DataTable Example
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%"
				cellspacing="0">
				<thead>
					<tr>
						<th>Product ID</th>
						<th>Product Name</th>
						<th>Brand ID</th>
						<th>Category ID</th>
						<th>Date Created</th>
						<th>Status</th>
						<th>Description</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>Product ID</th>
						<th>Product Name</th>
						<th>Brand ID</th>
						<th>Category ID</th>
						<th>Date Created</th>
						<th>Status</th>
						<th>Description</th>
					</tr>
				</tfoot>
				<tbody>
					<tr>
						<td>Tiger Nixon</td>
						<td>System Architect</td>
						<td>Edinburgh</td>
						<td>61</td>
						<td>2011/04/25</td>
						<td>$320,800</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
