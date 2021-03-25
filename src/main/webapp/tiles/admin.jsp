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
<link href="<c:url value='/template/admin/dist/css/styles.css'/>" rel="stylesheet" />
<link href="<c:url value='/template/web/plugins/datatables/css/dataTables.bootstrap.min.css'/>" rel="stylesheet"/>
<link href="<c:url value='/template/web/plugins/datatables/css/dataTables.bootstrap4.min.css'/>" rel="stylesheet"/>
<link href="<c:url value='/template/web/plugins/datatables/css/buttons.dataTables.min.css'/>" rel="stylesheet"/>
<link href="<c:url value='/template/web/plugins/font-awesome/css/all.min.css'/>" rel="stylesheet"/>
<link href="<c:url value='/template/admin/dist/css/admin.css'/>" rel="stylesheet"/>

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
