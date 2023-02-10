<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jk" tagdir="/WEB-INF/tags" %>
<fmt:setBundle basename="i18n/board"/>
<!DOCTYPE html>
<html>
	<head>
	<link href="<c:url value="/css/reset.css"/>" rel='stylesheet'/>
	<link href="<c:url value="/css/pet_table.css"/>" rel='stylesheet' />
	<link href="<c:url value="/css/like.css"/>" rel='stylesheet' />
	<link href="<c:url value="/css/follow.css"/>" rel='stylesheet' />
	<link href="<c:url value="/css/modal.css"/>" rel='stylesheet'/>
	<link href="<c:url value="/css/bootstrap.css"/>" rel='stylesheet'/>
	<link href="<c:url value="/css/bootstrap.min.css"/>" rel='stylesheet'/>
	
	<!-- favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="/img/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/img/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/img/favicon-16x16.png">
	<link rel="manifest" href="/img/site.webmanifest">
	<link rel="mask-icon" href="/img/safari-pinned-tab.svg" color="#5bbad5">
	<meta name="msapplication-TileColor" content="#da532c">
	<meta name="theme-color" content="#ffffff">
	
	<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
	<script src="/js/bootstrap.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/toggle-like.js"></script>
	<script src="/js/toggle-follow.js"></script>
	<script src="/js/insertPetNo.js"></script>

	<meta charset="UTF-8">
	<title>MyPetCareMain</title>
		
	<style>							
	table {
    margin-left:auto; 
    margin-right:auto;	    
	}					
	</style>
					
	</head>
	<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
		<div class="b-example-divider"></div>
	  		<div class="container">
		    	<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom" style="font-size:24px;">
			   		<a href="/index" style = "text-decoration: none;  font-size : 30px; width:300;" ><img src="/img/mypetcareLogo.jpg" height="100"></a>
				      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
				        <li><a href="#" class="nav-link px-2 link-secondary" onClick="location.href='/index'" style="margin-right:2em">Home</a></li>
				        <li><a href="#" class="nav-link px-2 link-dark" onClick="location.href='/features'" style="margin-right:2em">Features</a></li>
				        <li><a href="#" class="nav-link px-2 link-dark" onClick="location.href='/board/menu/1/${sessionScope.userNo}/1'" style="margin-right:2em">FAQs</a></li>
				      </ul>	
			      	  <div class="col-md-3 text-end">
			      	  <c:choose>
			      	  <c:when test="${empty sessionScope.userId}">
				          <button type="button" class="btn btn-outline-primary me-2" onClick="location.href='/login/main'" >Login</button>
				          <button type="button" class="btn btn-primary" onClick="location.href='/user/signup'">Sign-up</button>
				      </c:when>
				      <c:when test="${userId eq 'admin'}">
				      		<button type="button" class="btn btn-primary" onClick="location.href='/main/logout'">Logout</button>
				          
				      </c:when>
				      <c:when test="${not empty sessionScope.userId}">
							<button type="button" class="btn btn-primary" onClick="location.href='/main/logout'">Logout</button>
				          	<button type="button" class="btn btn-primary" onClick="location.href='/mypage/main'">Mypage</button>
				      </c:when>
				       </c:choose>    
			          </div>
		    	</header>
	
		    	
	  		</div>

	
				
				
		