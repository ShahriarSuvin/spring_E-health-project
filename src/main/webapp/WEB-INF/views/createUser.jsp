<jsp:include page="header.jsp"></jsp:include>

<section style="margin-top: 160px;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h2 class="text-center ">Create Your Account</h2>
				<hr/>
				<form action="/createUser" method="post">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputPassword4">User Name</label> 
							<input
								type="text" class="form-control" id="inputPassword4"
								name="Uname" placeholder="User Name">
						</div>
						<div class="form-group col-md-6">
							<label for="inputEmail4">Email</label> 
							<input type="email" name="Uemail"
								   class="form-control" id="inputEmail4" placeholder="Email">
						</div>
						
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputPassword5"> Age</label> <input name="Uage"
								type="text" class="form-control" id="inputPassword5"
								placeholder="Enter your Age">
						</div>
						<div class="form-group col-md-6">
							<label for="inputState">Gender</label> 
							<select id="inputState" name="Ugender"
								class="form-control">
								<option selected>Male</option>
								<option>Female</option>
							</select>
						</div>
						
					</div>
					
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputPassword5">Contact Number</label> 
							<input
								type="number" class="form-control" id="inputPassword5"
								name="Ucontact" placeholder="Enter your Number">
						</div>
						<div class="form-group col-md-6">
							<label for="inputEmail5">Password</label> 
							<input type="password" name="Upassword"
								   class="form-control" id="inputEmail5" placeholder="Enter your password">
						</div>
						
					</div>
					<div class="form-group">
						<label for="inputAddress">Address</label> <textarea type="text" rows="5" name="Uaddress"
							class="form-control" id="inputAddress" placeholder="Enter your Address"></textarea>
					</div>
					
					<div class="form-group">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" id="gridCheck">
							<label class="form-check-label" for="gridCheck"> Accept terms and condition
								 </label>
						</div>
					</div>
					<button type="submit" class="btn btn-primary pull-right">Submit</button>
				</form>

			</div>
		</div>
	</div>
</section>

<jsp:include page="footer.jsp"></jsp:include>