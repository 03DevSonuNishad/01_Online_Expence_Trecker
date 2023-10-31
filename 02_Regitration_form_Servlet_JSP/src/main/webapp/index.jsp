<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<style type="text/css">
.bg-custom {
	background-color: #1b5e20;
}
</style>

</head>
<body>

	<!-- start Navbar  -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<a class="navbar-brand" href="#">Student</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="index.jsp">Register</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<!-- end navbar -->

	<!-- 	form start -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header bg-primary">
						<h4 class="text-center text-white">Student Registration Form</h4>
					</div>
					<div class="card-body">
						<form>
							<div class="form-group">
								<label for="exampleInputEmail1">Full Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">DOB</label> <input type="date"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Address</label>
								<textarea rows="5" cols="" class="form-control"></textarea>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone No</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="exampleRadios" id="exampleRadios1" value="option1"
									checked> <label class="form-check-label"
									for="exampleRadios1">Male</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="exampleRadios" id="exampleRadios2" value="option2">
								<label class="form-check-label" for="exampleRadios2">
									Female</label>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password">
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 	form end -->


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>