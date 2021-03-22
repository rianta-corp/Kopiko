<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Page Title - SB Admin</title>
<link href="<c:url value='/template/admin/dist/css/styles.css'/>"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="bg-primary">
	<!-- <div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">Login</h3>
								</div>
								<div class="card-body">
									<form method="post" action="/api/v1/login">
										<div class="form-group">
											<label class="small mb-1" for="username">Username</label> <input
												class="form-control py-4" id="username" name="username"
												type="text" placeholder="Enter username" />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="password">Password</label> <input
												class="form-control py-4" id="password" name="password"
												type="password" placeholder="Enter password" />
										</div>
										<div class="form-group">
											<div class="custom-control custom-checkbox">
												<input class="custom-control-input"
													id="rememberPasswordCheck" type="checkbox" /> <label
													class="custom-control-label" for="rememberPasswordCheck">Remember
													password</label>
											</div>
										</div>
										<div
											class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
											<a class="small" href="/forget-password">Forgot Password?</a>
											<input class="btn btn-primary" id="submit" type="submit" value="Login" />
										</div>
									</form>
								</div>
								<div class="card-footer text-center">
									<div class="small">
										<a href="/register">Need an account? Sign up!</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<div id="layoutAuthentication_footer">
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2020</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div> -->

	<font color="red">${errorMessage}</font>
	<!-- <form method="post" action="j_spring_security_check" > -->
	<form method="post" action="login-check">
		Name : <input type="text" name="username" /> <br /> Password : <input
			type="text" name="password" /> <br /> <input type="checkbox"
			name="remember-me-custom" id="remember-me" /> <label
			for="remember-me">Remember Me</label> <br /> <input type="submit" />
	</form>

	<%
	if (request.getParameter("error") != null) {
	%>
	<div style="color: red; margin: 10px 0px;">
		Login Failed!!!<br /> Reason :
		<%
	if (session != null) {
		Object attrSession = session.getAttribute("SPRING_SECURITY_LAST_EXCEPTION");
		if (attrSession != null) {
	%>
		<p><%=attrSession%></p>
		<p><%=(((java.lang.RuntimeException) attrSession).getMessage())%></p>
		<%
		}
		}
		%>
	</div>
	<%
	}
	%>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/template/admin/dist/js/scripts.js'/>"></script>
	<%-- 	<script src="<c:url value='/template/web/js/web-login.js'/>"></script> --%>
</body>
</html>