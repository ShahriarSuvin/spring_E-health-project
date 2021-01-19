<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="adminHeader.jsp"></jsp:include>


			<div class="col-md-12" style="margin-top:">
				<h2 class="text-center ">All Doctor Information</h2>
				<hr/>
				<table class="table table-bordered">
					<tr>
						<th>ID</th>
						<th>FullName</th>
						<th>Email</th>
						<th>Depertment</th>
						<th>Qualification</th>
						<th>RegiNo</th>
						<th>Designation</th>
						<th>Visiting Hour</th>
						<th>Room No</th>						
						<th>Action</th>
					</tr>
					<c:forEach var="dr" items="${drlist}">
					
					<tr>
						<td>${dr.id}</td>
						<td>${dr.dname}</td>
						<td>${dr.demail}</td>
						<td>${dr.dept}</td>
						<td>${dr.qualification}</td>
						<td>${dr.regiNo}</td>
						<td>${dr.designation}</td>
						<td>${dr.visitHour}</td>
						<td>${dr.roomNo}</td>
						<td>
							<a href="/doctor/show/${dr.id}" class="btn btn-success">Details</a>
							<a href="/doctor/delete/${dr.id}"  class="btn btn-danger">delete</a>
						</td>
					
					</tr>				
					
					</c:forEach>
					  
				</table>

			</div>
			
	
<jsp:include page="adminFooter.jsp"></jsp:include>
