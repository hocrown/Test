<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/member"/>
<head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<style>
	.full{
	    width: 1500px;
	}
	.screen1{	
	    padding-left:700px;
	    padding-top:200px;
	    float: left;
	}
	.screen1-1{	
	    width: 800px;
	    float: left;
	}
</style>
</head>

<body class="text-center" >

	<div class="full">
		<div class="screen1">	
			<c:if test="${empty sessionScope.userId}">
				<form action="<c:url value='/login/main'/>" method="post" class="form-horizontal">
					<img src="/img/cat1.jpg" width="300" >
				    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>				
				    <div class="form-floating">
					    <input type="text" class="form-control" name="userId" id="id" placeholder="<fmt:message key="User Id"/>">
					    <label for="floatingInput">User Id</label>
				    </div>				
				    <div class="form-floating">
				      <input type="password" class="form-control" name="userPw" id="pw" placeholder="<fmt:message key="Password"/>">
				      <label for="floatingPassword">Password</label>
				    </div>
				    <button class="w-100 btn btn-lg btn-primary" type="submit" style="margin: 2 0 2 0;"  >Log in</button>
				    <button class="w-100 btn btn-lg btn-primary" type="button" style="margin: 2 0 2 0;" onClick="location.href='/user/form'">Sign up</button>
				    <button class="w-100 btn btn-lg btn-primary" type="button" style="margin: 2 0 2 0;" onClick="location.href='/index'">Home</button>				    
				    <p class="mt-5 mb-3 text-muted">&copy; MyPetCare2023</p>
				</form>
			</c:if>
			<c:choose>
				<c:when test="${userNo eq 1}"  >
					<% response.sendRedirect("../admin/adminUser");%>
				</c:when>
				<c:when test="${not empty sessionScope.userId}"  >
					<% response.sendRedirect("../index");%>
				</c:when>
			</c:choose>		
		</div>
	</div>
</body>
</html>


      
 

  





