<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- include taglib -->
<%@ include file="/common/taglib.jsp"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title" /></title>

<!-- CSS -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
<link rel="stylesheet"
	href="<c:url value = '/template/web/plugins/bootstrap-4.6.0-dist/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value = '/template/web/plugins/font-awesome/css/all.min.css'/>">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value = '/template/web/css/main.css'/>">
<link rel="stylesheet"
	href="<c:url value = '/template/web/css/base.css'/>">
<link rel="stylesheet"
	href="<c:url value = '/template/web/css/modal.css'/>">
<link rel="stylesheet"
	href="<c:url value = '/template/web/css/style.css'/>">
<link rel="stylesheet"
	href="<c:url value = '/template/web/css/reponsive.css'/>">
<link rel="stylesheet"
	href="<c:url value = '/template/web/css/user.css'/>">
</head>
<body>
	<div class="appkopiko">
		<!-- HEADER -->
		<tiles:insertAttribute name="header" />
		<!-- END HEADER -->

		<!-- CONTENT -->
		<tiles:insertAttribute name="body" />
		<!-- CONTENT -->

		<!-- FOOTER -->
		<tiles:insertAttribute name="footer" />
		<!-- END FOOTER -->
	</div>


	
</body>
</html>