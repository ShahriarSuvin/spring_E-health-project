<jsp:include page="header.jsp"></jsp:include>

<section style="margin-top: 160px;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h2 class="text-center ">View Details</h2>
				<hr/>
				
					
					<img src="/img/${dr.img}" alt="" style="height:320px; weight:305px; margin-bottom:10px;" class="text-center"/>
					<table class="table table-bordered">
					<tr>
						<td>Doctor ID:</td>
						<td>${dr.id}</td>
					</tr>
					<tr>
						<td>Doctor Name:</td>
						<td>${dr.dname}</td>
					</tr>
					<tr>
						<td>Doctor Email:</td>
						<td>${dr.demail}</td>
					</tr>
					<tr>
						<td>Department:</td>
						<td>${dr.dept}</td>
					</tr>
					<tr>
						<td>Registration No:</td>
						<td>${dr.regiNo}</td>
					</tr>
					<tr>
						<td>Qualification:</td>
						<td>${dr.qualification}</td>
					</tr>
					<tr>
						<td>Designation:</td>
						<td>${dr.designation}</td>
					</tr>
					<tr>
						<td>Visiting Hour:</td>
						<td>${dr.visitHour}</td>
					</tr>
					<tr>
						<td>Chember No:</td>
						<td>${dr.roomNo}</td>
					</tr>
					<tr>
						<td>Doctor Password:</td>
						<td>${dr.dpass}</td>
					</tr>
					<tr>
						<td>Username:</td>
						<td>${dr.username}</td>
					</tr>
				</table>
				<a href="/doctor/edit/${dr.id}" class="btn btn-skin btn-lg">Update Information </a>
			</div>
		</div>
	</div>
</section>

<jsp:include page="footer.jsp"></jsp:include>