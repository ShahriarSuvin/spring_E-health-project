<jsp:include page="header.jsp"></jsp:include>

<section style="margin-top: 160px;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">

				<div class="">
					

					<h2 class="text-center text-white">Login Form</h2>
					<hr />
					<form action="/receiptionLogin" method="post">
						<div class="form-group">
							<label for="username" class="text-white" >UserName:</label> <input
								id="username" class="form-control" name="userName" required="true"/>
						</div>
						<div class="form-group">
							<label for="password" class="text-white" >Password:</label> <input type="password"
								id="password" class="form-control" name="password"  required="true"/>
						</div>
						
						<p class="text-danger">${msg}</p>
						<div class="cta-btn">
							 <button class="btn btn-skin btn-lg">LOGIN</button>
								
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
</section>

<jsp:include page="footer.jsp"></jsp:include>