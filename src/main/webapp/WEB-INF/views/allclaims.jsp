<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="header.jsp"></jsp:include>
	<h4 class="p-2" style="border-bottom:2px solid green;">Search Claims</h4>
	
	<div class="row">
		<div class="col-sm-10 mx-auto">
		<form onsubmit="return validate(this)">
			<div class="row">
				<div class="col-sm-3">
				<div class="form-group">
					<input type="text" value="${dto.memberid }" placeholder="Enter Member Id" 
					class="form-control" name="memberid">
				</div>
				</div>
				<div class="col-sm-3">
				<div class="form-group">
					<input type="text" value="${dto.mname }" placeholder="Enter Member Name" 
					class="form-control" name="mname">
				</div>
				</div>
				<div class="col-sm-5">
				<div class="form-group form-row">
					<input type="date" value="${dto.from }" class="form-control col-sm-6" name="from">
					<input type="date" value="${dto.to }" class="form-control col-sm-6" name="to">
				</div>
				</div>				
				<div class="col-sm-1">
					<button name="search" class="btn btn-primary">Search</button>
				</div>
			</div>
		</form>
		<c:if test="${error ne null }">
			<div class="alert alert-danger text-center">
				${error }
			</div>			
		</c:if>
		<c:if test="${found eq false and param.search ne null }">
			<div class="alert alert-danger text-center font-weight-bold">
				Record not found.
			</div>
		</c:if>
		</div>
	</div>
	<table class="table table-bordered">
		<thead class="table-dark">
			<tr>
				<th>ID</th>
				<th>Member Id</th>
				<th>Member Name</th>
				<th>Request Date</th>
				<th>Reason</th>
				<th>Claim Amt.</th>
				<th>Process Date</th>
				<th>Status</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="m">
			<tr>
				<td>${m.id }</td>
				<td>${m.memberid }</td>
				<td>${m.fname } ${m.lname }</td>
				<td>${m.req_date }</td>
				<td>${m.reason }</td>
				<td>${m.final_amount }</td>
				<td>${m.process_date }</td>
				<td>
				${m.status }
				<c:if test="${m.status eq 'Rejected' }">
					<div class="text-danger font-weight-bold">${m.rej_reason }</div>
				</c:if>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<script>
	function validate(f){
		let memberid=f.memberid.value;
		let mname=f.mname.value;
		let from=f.from.value;
		let to=f.to.value;
		
		if(memberid==="" && mname==="" && from ==="" && to===""){
			alert("Atleast one field must be provided")
			return false;
		}else{
			return true;
		}
	}
	</script>
<jsp:include page="footer.jsp"></jsp:include>