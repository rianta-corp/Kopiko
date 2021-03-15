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
<link
	href="<c:url value = '/template/web/bootstrap/css/bootstrap.min.css'/>"
	rel="stylesheet">
<link href="<c:url value = '/template/web/css/style.css'/>" rel="stylesheet">
</head>
<body>

	<!-- HEADER -->
	<tiles:insertAttribute name="header" />
	<!-- END HEADER -->

	<!-- CONTENT -->
	<div class="container">
		<tiles:insertAttribute name="body" />
	</div>
	<!-- CONTENT -->
	
	
	<!-- FOOTER -->
	<tiles:insertAttribute name="footer" />
	<!-- END FOOTER -->

	<script type="text/javascript"
		src="<c:url value='/template/web/jquery/jquery.min.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value = '/template/web/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
</body>
</html>