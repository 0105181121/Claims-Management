<%@page import="org.springframework.web.util.UrlPathHelper"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery-3.4.1.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/datatables.js"></script>
<title>Dashboard</title>
<style>
body{
background:linear-gradient(rgba(255,255,255,.7),rgba(255,255,255,0.6)), url('images/bg5.jpeg') no-repeat;min-height:100vh;
background-size:100% 100%;
}
a.list-group-item{
	background-color:rgba(255,255,255,0.4);
}
.list-group{
	min-height: 88.5vh;
    background-color: rgba(255,255,255,0.4);
}
</style>
</head>
<body>
<c:set var="url" value="<%= new UrlPathHelper().getOriginatingRequestUri(request) %>"></c:set>
<div class="jumbotron p-3 rounded-0 mb-0 text-center bg-info text-black">
	<h5 class="float-left">Welcome ! ${sessionScope.uname }</h5>
	<a href="/logout" class="float-right btn btn-primary btn-sm">Logout</a>
	<h4>CLAIMS PORTAL</h4>
</div>
<div class="container-fluid">
	<div class="row">
		<% String url= new UrlPathHelper().getOriginatingRequestUri(request); %>
		<div class="col-sm-2 p-0" style="min-height:88.5vh;">
		<div class="list-group mt-2">  
		  <a href="/dashboard" class="list-group-item list-group-item-action ${url eq '/dashboard'? 'active':'' }">Dashboard</a>
		  <a href="/newmember" class="list-group-item list-group-item-action ${url eq '/newmember'? 'active':'' }">New Member</a>
		  <a href="/members" class="list-group-item list-group-item-action ${url eq '/members'? 'active':'' }">Update Member</a>
		  <a href="/newrequest" class="list-group-item list-group-item-action ${url eq '/newrequest'? 'active':'' }">New Claim Request</a>
		  <a href="/claims" class="list-group-item list-group-item-action ${url eq '/claims'? 'active':'' }">Search Claim</a>
		  <a href="/process" class="list-group-item list-group-item-action ${url eq '/process'? 'active':'' }">Process Claim</a>		 
		</div>
		</div>
		<div class="col-sm-10 p-2">
			<div class="card shadow" style="background-color:rgba(255,255,255,0.4)">
				<div class="card-body" style="min-height:88.5vh;">
				
				