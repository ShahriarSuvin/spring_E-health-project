<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="header.jsp"></jsp:include>



<section style="margin-top: 160px;">
	<div class="container">
		<div class="row">
			
			<div class="col-md-12">
				<h2 class="text-center ">Update Doctor Information</h2>
				<hr/>
				<form action="/updateDoctor" method="post">
					<div class="col-md-6">
						<div class="form-group">
							<label for="inputPassword4">Doctor Name</label> 
							<input
								type="text" class="form-control" id="inputPassword4"
							name="Dname" placeholder="Doctor Name" value="${dr.dname}">
						</div>
						<input type="hidden" value="${dr.id}"/>
						<div class="form-group">
							<label>Department</label>
						<select name="Dept" class="form-control" value="${dr.dept}">
							<option>Neurology</option>
								<option>Dental</option>
								<option>Cardiology</option>
								<option>Psycology</option>
								<option>Gynee & Obs</option>
						</select>
						</div>
						
						<div class="form-group">
							<label>Designation</label>
							<input type="text" class="form-control" name="Designation" value="${dr.designation}">
						</div>
						<div class="form-group">
							<label>Visiting Hour</label>
							<input type="text" class="form-control" name="visitHour" value="${dr.visitHour}">
						</div>
						<div class="form-group">
							<label>Password</label>
							<input type="password" class="form-control" name="Dpass" value="${dr.dpass}">
						</div>
					</div>
						
					<div class="col-md-6">
						<div class="form-group">
							<label for="inputEmail4">Email</label> <input type="email" name="Demail"
								class="form-control" id="inputEmail4" placeholder="Email" value="${dr.demail}">
						</div>
						<div class="form-group">
							<label for="inputEmail5">UserName</label> <input type="text" name="username"
								class="form-control" id="inputEmail5" placeholder="" value="${dr.username}">
						</div>
						<div class="form-group">
						<label>Qualification</label> <textarea type="text" rows="3" name="Qualification"
							class="form-control" placeholder="" >${dr.qualification}</textarea>
						</div>
						
						<div class="form-group">
							<label>Registration No</label>
							<input type="text" class="form-control" name="RegiNo" value="${dr.regiNo}">
						</div>
						<div class="form-group">
							<label>Room No</label>
							<input type="text" class="form-control" name="RoomNo" value="${dr.roomNo}">
						</div>
					</div>
					
					<button type="submit" class="btn btn-primary pull-right">Update</button>
				</form>

			</div>
		</div>
	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
