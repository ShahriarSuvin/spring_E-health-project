<jsp:include page="adminHeader.jsp"></jsp:include>

<section style="margin-top: 10px;">
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h2 class="text-center ">Doctor Registration</h2>
				<hr />
				<form action="/addDoctor" method="post"
					enctype="multipart/form-data">
					<div class="col-md-6">
						<div class="form-group">
							<label for="pic">Picture</label> <input type="file" id="pic"
								class="form-control" name="imageFile">
						</div>
						<div class="form-group">
							<label for="inputPassword4">Doctor Name</label> <input
								type="text" class="form-control" id="inputPassword4"
								name="Dname" placeholder="Doctor Name">
						</div>
						<div class="form-group">
							<label>Department</label> <select name="Dept"
								class="form-control">
								<option>Neurology</option>
								<option>Dental</option>
								<option>Cardiology</option>
								<option>Psycology</option>
								<option>Gynee & Obs</option>
							</select>
						</div>

						<div class="form-group">
							<label>Designation</label> <input type="text"
								class="form-control" name="Designation">
						</div>
						<div class="form-group">
							<label>Visiting Hour</label> <input type="text"
								class="form-control" name="visitHour">
						</div>
						<div class="form-group">
							<label>Password</label> <input type="password"
								class="form-control" name="Dpass">
						</div>
					</div>




					<div class="col-md-6">
						<div class="form-group">
							<label for="inputEmail4">Email</label> <input type="email"
								name="Demail" class="form-control" id="inputEmail4"
								placeholder="Email">
						</div>
						<div class="form-group">
							<label for="inputEmail5">UserName</label> <input type="text"
								name="username" class="form-control" id="inputEmail5"
								placeholder="">
						</div>
						<div class="form-group">
							<label>Qualification</label>
							<textarea type="text" rows="3" name="Qualification"
								class="form-control" placeholder=""></textarea>
						</div>

						<div class="form-group">
							<label>Registration No</label> <input type="text"
								class="form-control" name="RegiNo">
						</div>
						<div class="form-group">
							<label>Room No</label> <input type="text" class="form-control"
								name="RoomNo">
						</div>
					</div>

					<button type="submit" class="btn btn-primary pull-right">Add
						Doctor</button>
				</form>







			</div>
		</div>
	</div>
</section>
<jsp:include page="adminFooter.jsp"></jsp:include>
