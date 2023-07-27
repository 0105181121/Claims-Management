<jsp:include page="header.jsp"></jsp:include>
	<h4 class="p-2" style="border-bottom:2px solid green;">Dashboard</h4>	
	<div class="row text-white text-right">
		<div class="col-sm-3">
			<div class="card shadow bg-primary">
				<div class="card-body">
					<h5>Total Members</h5>
					<h4>${members }</h4>
				</div>
			</div>
		</div>
		
		<div class="col-sm-3">
			<div class="card shadow bg-warning">
				<div class="card-body">
					<h5>Total Claims</h5>
					<h4>${claims }</h4>
				</div>
			</div>
		</div>
		
		
		<div class="col-sm-3">
			<div class="card shadow bg-danger">
				<div class="card-body">
					<h5>Pending Claims</h5>
					<h4>${pendings }</h4>
				</div>
			</div>
		</div>		
		
		<div class="col-sm-3">
			<div class="card shadow bg-success">
				<div class="card-body">
					<h5>Approved Claims</h5>
					<h4>${approved }</h4>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>