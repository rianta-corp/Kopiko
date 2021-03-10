<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"
	prefix="tiles-syntax"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles-syntax:insertAttribute name="title" /></title>
<style>
div {
	width: 100%;
	min-height: 50px;
}
#body {
    min-height: 300px;
}
</style>
</head>
<body>
	<div id="header">
		<tiles-syntax:insertAttribute name="header" />
	</div>
	<div id="body">
		<tiles-syntax:insertAttribute name="body" />
	</div>
	<div id="footer">
		<tiles-syntax:insertAttribute name="footer" />
	</div>
</body>
</html>