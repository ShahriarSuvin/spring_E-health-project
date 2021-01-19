<jsp:include page="header.jsp"></jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<section style="margin-top: 160px;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<h2 class="text-center ">Online Appointment Details</h2>
				
				<hr/>
				<form action="/onlineAppoint/search">
					<input type="text" placeholder="Search by token Number" name="search"/>
					<button type="Submit" class="btn-success">Search</button> 
				</form>
				<br/>
				<table class="table table-bordered">
					<tr>
						<th>ID</th>
						<th>Patient Name</th>
						<th>Patient Age</th>
						<th>Email</th>
						<th>Address</th>
						<th>Gender</th>
						<th>Department</th>
						<th>Doctor</th>
						<th>Token No</th>
						<th>Status</th>
					</tr>
					
					<c:forEach var="online" items="${onlineAppoint}">
					
					<tr>
						<td>${online.id}</td>
						<td>${online.pName}</td>
						<td>${online.pAge}</td>
						<td>${online.pEmail}</td>
						<td>${online.pAddress}</td>
						<td>${online.pGender}</td>
						<td>${online.pDepertment}</td>
						<td>${online.pDoctor}</td>
						<td>${online.token}</td>
						<td>
							<a href="appoint/pdf/${online.id}" class="btn btn-success">Done</a>
							
						</td>
					
					</tr>				
					
					</c:forEach>
				</table>
				
			</div>
		</div>
	</div>
</section>

<jsp:include page="footer.jsp"></jsp:include>