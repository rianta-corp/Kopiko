<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- include taglib -->
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title><tiles:insertAttribute name="title" /></title>
<link href="<c:url value='/template/admin/dist/css/styles.css'/>"
	rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<!-- HEADER -->
	<tiles:insertAttribute name="header" />
	<!-- END HEADER -->

	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<!-- HEADER -->
			<tiles:insertAttribute name="menu" />
			<!-- END HEADER -->
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<!-- BODY -->
					<tiles:insertAttribute name="body" />
					<!-- END BODY -->
				</div>
			</main>
			<!-- FOOTER -->
			<tiles:insertAttribute name="footer" />
			<!-- END FOOTER -->
		</div>
	</div>
	
</body>
</html>
