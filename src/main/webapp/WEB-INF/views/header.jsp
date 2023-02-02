<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<!DOCTYPE html>
<html>
	<header>
		<meta charset="UTF-8">
		<title>MyPetCareMain</title>
		
		<style>							
		table {
	    margin-left:auto; 
	    margin-right:auto;	    
		}					
		</style>
					
	</header>
	<body>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>		
		<div class="b-example-divider"></div>
	  		<div class="container">
		    	<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
			   		<a href="/index" style = "text-decoration: none;  font-size : 30px; width:300;" >  MyPetCare </a>
				      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
				        <li><a href="#" class="nav-link px-2 link-secondary">Home</a></li>
				        <li><a href="#" class="nav-link px-2 link-dark">Features</a></li>
				        <li><a href="#" class="nav-link px-2 link-dark">Pricing</a></li>
				        <li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
				        <li><a href="#" class="nav-link px-2 link-dark">About</a></li>
				      </ul>	
			      	  <div class="col-md-3 text-end">
			      	  <c:if test="${empty sessionScope.userId}">
				          <button type="button" class="btn btn-outline-primary me-2" onClick="location.href='./login/main'" >Login</button>
				          <button type="button" class="btn btn-primary" onClick="location.href='./signUp/main'">Sign-up</button>
				      </c:if>
				      <c:if test="${not empty sessionScope.userId}">
				      		<button type="button" class="btn btn-primary" onClick="location.href='./mypage/main'"><a href="<c:url value='/main/logout'/>">[<fmt:message key="SIGN_OUT"/>]</a></button>
				          <button type="button" class="btn btn-primary" onClick="location.href='./mypage/main'">Mypage</button>
				      </c:if>
				           
			          </div>
		    	</header>
	  		</div>
