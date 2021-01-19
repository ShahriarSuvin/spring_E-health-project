<jsp:include page="header.jsp"></jsp:include>

<section style="margin-top: 160px;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">

				<div class="">					

					<h5 class="text-center">Send your message to us and we will Contact with you quickly via email or phone. Thanks a lot for staying with us.</h5>
					<hr />
					<form action="/usermessage" method="post">
					<div class="form-group">
						<label>Name</label>
						<input class="form-control" type="text" placeholder="enter your name" name="name"/>
					</div>
					<div class="form-group">
						<label>Email</label>
						<input class="form-control" type="email" placeholder="enter your mail address" name="email"/>
					</div>
						<div class="form-group">
						<label for="inputAddress">Type your Message</label> <textarea type="text" rows="8" name="msg"
							class="form-control" id="inputAddress" placeholder=" your Message"></textarea>
					</div>
						
						<button type="submit" class="btn btn-primary pull-right">Submit</button>
					</form>
				</div>

			</div>
		</div>
	</div>
</section>

<jsp:include page="footer.jsp"></jsp:include>