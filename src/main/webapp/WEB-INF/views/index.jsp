<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Home Page</title>
<style>
body{
min-height:100vh;
background-repeat:no-repeat;
background:linear-gradient(rgba(255,255,255,.5),rgba(255,255,255,.5)),url('images/bg8.jpg') no-repeat fixed center;
background-size:100% 100%;
}
</style>
</head>
<body> <!-- home page of cms -->    
<div class="jumbotron rounded-0 text-center text-black shadow" style="background-color:#B3F6E3">
	<h1 style="font-family:Georgia;">Claims Management System</h1>
</div>
<div class="container">
	<div class="row">
	<div class="col-sm-5">
		<h2>About:<h5 style="line-height: 40px;" class="text-justify">Claims Management Function means the entirety of the functions which are necessary for or incidental to the receipt, assessment, determination, payment, administration, review, finalisation and recording of a Claim. Claims Management System (CMS) application is basically a system that helps 
		members to do member registration for claims, profile update, Claim Request, 
		Search Claims and View Status, Claim Process. A Claim can be anything such as vehicle insurance claim, loan claim, subsidiary claim etc.</h5></h2>
	</div>
		<div class="offset-2 col-sm-5">
			<div class="card shadow bg-transparent mt-3">
				<div class="card-body">
					<h4 class="p-2 text-center">Login</h4>
					<form method="post">
						<div class="form-group form-row">
							<label class="col-sm-4 col-form-label">User ID</label>
							<div class="col-sm-8">
								<input type="text" required class="form-control" name="userid" placeholder="User Id">
							</div>
						</div>
						
						<div class="form-group form-row">
							<label class="col-sm-4 col-form-label">Password</label>
							<div class="col-sm-8">
								<input type="password" required class="form-control" name="pwd" placeholder="Password">
							</div>
						</div>
						
						<button class="btn btn-danger px-5 float-right">Login</button>
					</form>
					<div class="clearfix"></div>
					<c:if test="${error ne null }">
						<div class="alert alert-danger font-weight-bold text-center mt-2">
							${error}
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>