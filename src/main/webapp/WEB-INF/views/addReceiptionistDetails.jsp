<jsp:include page="header.jsp"></jsp:include>

<section style="margin-top: 160px;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h2 class="text-center ">View Details</h2>
				<hr/>
				
					
					<%-- <img src="/img/${rnst.img}" alt="" style="height:320px; weight:305px; margin-bottom:10px;" class="text-center"/> --%>
					<table class="table table-bordered">
					<tr>
						<td>Receiptionist ID:</td>
						<td>${rnst.id}</td>
					</tr>
					<tr>
						<td>Full Name:</td>
						<td>${rnst.fullname}</td>
					</tr>
					<tr>
						<td> Email:</td>
						<td>${rnst.email}</td>
					</tr>
					<tr>
						<td>UserName:</td>
						<td>${rnst.username}</td>
					</tr>
					<tr>
						<td>Password:</td>
						<td>${rnst.pass}</td>
					</tr>
					<tr>
						<td>Qualification:</td>
						<td>${rnst.qualification}</td>
					</tr>
					
					<tr>
						<td>Contact No:</td>
						<td>${rnst.phnNo}</td>
					</tr>
					<tr>
						<td>Address:</td>
						<td>${rnst.address}</td>
					</tr>
				</table>
				<a href="/receiptionist/edit/${rnst.id}" class="btn btn-skin btn-lg">Update Information </a>
			</div>
		</div>
	</div>
</section>

<jsp:include page="footer.jsp"></jsp:include>