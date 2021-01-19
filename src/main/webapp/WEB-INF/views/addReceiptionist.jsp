<jsp:include page="adminHeader.jsp"></jsp:include>

<section style="margin-top: 10px;">
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h2 class="text-center ">Add Receiptionist</h2>
				<hr/>
				<form action="/addReceiptionist" method="post">
					<div class="col-md-6">
						<div class="form-group">
							<label for="inputPassword4">Full Name</label> 
							<input
								type="text" class="form-control" id="inputPassword4"
							name="fullname">
						</div>
						<div class="form-group">
							<label for="inputPassword5">User Name</label> 
							<input
								type="text" class="form-control" id="inputPassword5"
							name="username">
						</div>
						<div class="form-group">
						<label>Address</label> <textarea type="text" rows="3" name="address"
							class="form-control" placeholder=""></textarea>
						</div>
						
						
						<div class="form-group">
							<label>Password</label>
							<input type="password" class="form-control" name="pass">
						</div>
					</div>			
					
						
						
					<div class="col-md-6">
						<div class="form-group">
							<label for="inputEmail4">Email</label> <input type="email" name="email"
								class="form-control" id="inputEmail4" placeholder="Email">
						</div>
						<div class="form-group">
							<label>Mobile No</label>
							<input type="text" class="form-control" name="phnNo">
						</div>
						<div class="form-group">
						<label>Qualification</label> <textarea type="text" rows="3" name="Qualification"
							class="form-control" placeholder=""></textarea>
						</div>
						
						
						<button type="submit" class="btn btn-primary " style="width:100%; margin-top:27px;">Add </button>
					</div>
					
					
				</form>
				
				
				
				
				
				

			</div>
		</div>
	</div>
</section>
<jsp:include page="adminFooter.jsp"></jsp:include>
