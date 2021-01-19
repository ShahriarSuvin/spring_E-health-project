<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="adminHeader.jsp"></jsp:include>


			<div class="col-md-12">
				<h2 class="text-center ">All Receiptionist Information</h2>
				<hr/>
				<table class="table table-bordered">
					<tr>
						<th>ID</th>
						<th>FullName</th>
						<th>Email</th>
						<th>Username</th>
						<th>Mobile No</th>
						<th>Address</th>
						<th>Qualification</th>
						<th>Action</th>
					</tr>
					<c:forEach var="rnst" items="${receiptionlist}">
					
					<tr>
						<td>${rnst.id}</td>
						<td>${rnst.fullname}</td>
						<td>${rnst.email}</td>
						<td>${rnst.username}</td>
						<td>${rnst.phnNo}</td>
						<td>${rnst.address}</td>
						<td>${rnst.qualification}</td>
						
						<td>
							<a href="/receiption/show/${rnst.id}" class="btn btn-success">Details</a>
							<a href="/receiption/delete/${rnst.id}" class="btn btn-danger">delete</a>
						</td>
					
					</tr>				
					
					</c:forEach>
					  
				</table>

			</div>
			
	
<jsp:include page="adminFooter.jsp"></jsp:include>
