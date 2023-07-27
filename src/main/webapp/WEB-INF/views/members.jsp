<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="header.jsp"></jsp:include>
	<h4 class="p-2" style="border-bottom:2px solid green;">All Members List</h4>
	<c:if test="${msg ne null }">
		<div class="alert alert-success">
			${msg }
		</div>			
	</c:if>
	<table class="table table-bordered">
		<thead class="table-dark">
			<tr>
				<th>Member ID</th>
				<th>Full Name</th>
				<th>Address</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Phone</th>
				<th>Insurance Type</th>
				<th>Insurance Amt.</th>
				<th>Max Claim. Amt.</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="m">
			<tr>
				<td>${m.memberid }</td>
				<td>${m.fname } ${m.lname }</td>
				<td>${m.address }</td>
				<td>${m.email }</td>
				<td>${m.gender }</td>
				<td>${m.phone }</td>
				<td>${m.insurance_type }</td>
				<td>${m.insurance_amount }</td>
				<td>${m.max_claim_amount }</td>
				<td><a href="/update?member_id=${m.memberid}" class="btn btn-primary btn-sm">Update</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
<jsp:include page="footer.jsp"></jsp:include>