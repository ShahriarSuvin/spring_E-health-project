<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="header.jsp"></jsp:include>



<section style="margin-top: 160px;">
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h2 class="text-center ">Update Receiptionist Information</h2>
				<hr/>
				
				<form action="/UpdateReceiptionist" method="post">
					<div class="col-md-6">
						
						<div class="form-group">
							<label for="inputPassword4">Full Name</label> 
							<input
								type="text" class="form-control" id="inputPassword4"
							name="fullname" value="${rnst.fullname}">
						</div>
						<div class="form-group">
							<label for="inputPassword5">User Name</label> 
							<input
								type="text" class="form-control" id="inputPassword5"
							name="username"  value="${rnst.username}">
						</div>
						<div class="form-group">
						<label>Address</label> <textarea type="text" rows="3" name="address"
							class="form-control" placeholder="">${rnst.address}</textarea>
						</div>
						
						
						<div class="form-group">
							<label>Password</label>
							<input type="password" class="form-control" name="pass"  value="${rnst.pass}">
						</div>
					</div>			
					
						
						
					<div class="col-md-6">
						<div class="form-group">
							<label for="inputEmail4">Email</label> <input type="email" name="email"
								class="form-control" id="inputEmail4" placeholder="Email"  value="${rnst.email}">
						</div>
						<div class="form-group">
							<label>Mobile No</label>
							<input type="text" class="form-control" name="phnNo"  value="${rnst.phnNo}">
						</div>
						<div class="form-group">
						<label>Qualification</label> <textarea type="text" rows="3" name="Qualification"
							class="form-control" placeholder="">${rnst.qualification}</textarea>
						</div>
						
						
						<button type="submit" class="btn btn-primary " style="width:50%; margin-top:27px;">Update </button>
					</div>
					
					
				</form>
				
			</div>
		</div>
	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
