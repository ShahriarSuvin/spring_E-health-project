<jsp:include page="header.jsp"></jsp:include>

<section style="margin-top: 160px;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">

				<div class="">					

					
					<form action="/userpdf" method="post">
						<div class="form-group">
						<label for="inputAddress">Username</label> <input type="text"  name="username"
							class="form-control" id="inputAddress" placeholder=" your Message"/>
					</div>
						
						<button type="submit" class="btn btn-primary pull-right">Submit</button>
					</form>
				</div>

			</div>
		</div>
	</div>
</section>

<jsp:include page="footer.jsp"></jsp:include>