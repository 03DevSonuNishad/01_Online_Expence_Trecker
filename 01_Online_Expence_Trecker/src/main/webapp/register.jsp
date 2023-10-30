<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="component/all_css.jsp"%>
<style type="text/css">
.card-sh {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 03);
}
</style>
</head>
<body class="bg-light">
	<%@ include file="component/navbar.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card card-sh">
					<div class="card-header">
						<p class="text-center fs-3">Registration Here</p>
						<c:if test="${not empty msg }">
							<p class="text-center text-success fs-4">${msg}</p>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="userRegister" method="post">
							<div class="md-3">
								<lable>Enter FullName :</lable>
								<input type="text" name="fullName" class="form-control">
							</div>
							<div class="md-3">
								<lable>Email Id :</lable>
								<input type="email" name="email" class="form-control">
							</div>
							<div class="md-3">
								<lable>Password :</lable>
								<input type="password" name="password" class="form-control">
							</div>
							<div class="md-3">
								<lable>About :</lable>
								<input type="text" name="about" class="form-control">

							</div>
							<br>
							<button class="btn btn-success col-md-12">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>