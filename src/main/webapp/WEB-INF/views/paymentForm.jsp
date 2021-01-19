<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<jsp:include page="adminHeader.jsp" />
<header>
	<style>
.dropdown:hover>.dropdown-menu {
	display: block;
}
.dropdown>.dropdown-toggle:active {
	/*Without this, clicking will make it sticky*/
	pointer-events: none;
}
</style>
</header>
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);
	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<body ng-app="app" ng-controller="appController">
	<form ng-submit="onSubmit()" class="justify-content-center">
		<label for="cust_name">Customer Name</label> 
		<input type="text"
			 name="cust_name" class="form-control" id="cust_name" /> <label
			for="cust_mobile">Mobile Number</label>
			 <input type="number"
			name="cust_mobile" class="form-control" id="cust_mobile" /> <label
			for="cust_email">Email Address</label> 
			<input type="email"
			name="cust_email" class="form-control" id="cust_email" /> <label
			for="cust_address">Customer Address</label>
		<textarea name="cust_address" class="form-control" id="cust_address"></textarea>
		<label for="country">Country</label> 
		<input type="text" name="country"
			class="form-control" id="country" /> 
			<label for="city">City</label>
		<input type="text" name="city" class="form-control" id="city" /> 
		<label for="state">State</label> 
			<input type="text" name="state"
			class="form-control" id="state" />
			 <label for="currency">Currency
			Type</label><br />
			 <select class="form-control" id="currency"
			name="currency">
			<option value="bdt">BDT</option>
			<option value="usd">USD</option>
		</select> <br /> <br /> 
		<label for="amount">Total Amount</label> <input
			type="number" name="amount" class="form-control" id="amount" /> <br />
		<h3>For Payment Through Card</h3>
		<label for="Card_Number">Card Number</label> 
		<input type="number"
			name="Card_Number" class="form-control" id="Card_Number" />
			 <label for="Card_Name">Card Holder's Name</label> 
			 <input type="text"
			name="Card_Name" class="form-control" id="Card_Name" /> 
			<label for="expiryDate">Expire Date</label> 
			<input type="date" name="expiryDate" class="form-control" id="expiryDate" /><br />
		<button type="submit" value="Pay" class="btn btn-success">Pay Now</button>
	</form>
<jsp:include page="adminFooter.jsp" />

<script>
	angular.module('app', [])
	.controller('appController', function($scope, $http){
		 $scope.onSubmit = function(){
			 alert();
			 $http.post("/save-installment", {suggest: "fdskfkds"})
			 .then(function(res){
				 console.log(res);
			 }).catch(function(err){
				 console.log(err);
			 });
		}
	});
</script>