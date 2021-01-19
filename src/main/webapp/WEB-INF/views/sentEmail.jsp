<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="adminHeader.jsp"></jsp:include>


			<div class="col-md-12" style="margin-top:">
				<h2 class="text-center ">Replay answer to the User</h2>
				<hr/>
				
			<form action="/sendEmail">
					<div class="form-group">
						<label>To</label>
						<input class="form-control" type="text" name="email" value="${msgs.email}"/>
					</div>
					<div class="form-group">
						<label>From</label>
						<input class="form-control" type="email" name="amail" value="j2eeround44nclc@gmail.com"/>
					</div>
						<div class="form-group">
						<label for="inputAddress">Replay Answer</label> <textarea type="text" rows="8" name="body"
							class="form-control" id="inputAddress" placeholder=" your Answer"></textarea>
					</div>
						
						<button type="submit" class="btn btn-primary pull-right" style="margin-bottom:100px;">Replay</button>
					</form>
			</div>
			
	
<jsp:include page="adminFooter.jsp"></jsp:include>
