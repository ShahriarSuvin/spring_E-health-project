<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="adminHeader.jsp"></jsp:include>


			<div class="col-md-12" style="margin-top:">
			
				<h2 class="text-center ">All User Messages</h2>
				<h3>${msg}</h3>
				<hr/>
				<table class="table table-bordered">
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Message</th>												
						<th>Action</th>
					</tr>
					<c:forEach var="mg" items="${msgs}">
					
					<tr>
						<td>${mg.id}</td>
						<td>${mg.name}</td>
						<td>${mg.email}</td>
						<td>${mg.msg}</td>
						
						<td>
							<a href="/user/show/${mg.id}" class="btn btn-success">Replay</a>
							<a href="/user/delete/${mg.id}" class="btn btn-success">delete</a>
						</td>
					
					</tr>				
					
					</c:forEach>
					  
				</table>

			</div>
			
	
<jsp:include page="adminFooter.jsp"></jsp:include>
