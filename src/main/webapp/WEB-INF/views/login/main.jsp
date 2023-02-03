<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/member"/>
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
.screen2{
	padding-left:40px;
    width: 250px;    
    float: left;
} 
.screen3{
    width: 100%;
    height:100px;
    float: left;
}  
.choose1{
 width: 100%;
   display :inline-block;
    float: left;
}  
.choose{
  
    float: left;
} 
</style>

<div class="full"  >
	<div class="screen1">	



<body class="text-center" >

<c:if test="${empty sessionScope.userId}">
	<form action="<c:url value='/login/main'/>" method="post" class="form-horizontal">
  <form >
    <img class="mb-4" src="../../img/maintest.png" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>


    <div class="form-floating">
      <input type="text" class="form-control" name="userId" id="id" placeholder="<fmt:message key="MEMBER_ID"/>">
      <label for="floatingInput"><fmt:message key="MEMBER_ID"/>User Id</label>
    </div>

    <div class="form-floating">
      <input type="password" class="form-control" name="userPw" id="pw" placeholder="<fmt:message key="MEMBER_ID"/>">
      <label for="floatingPassword"><fmt:message key="MEMBER_PW"/>Password</label>
    </div>


      
  
    <button class="w-100 btn btn-lg btn-primary" type="submit" style="margin: 2 0 2 0;"  >Sign in</button>
    <button class="w-100 btn btn-lg btn-primary" type="button" style="margin: 2 0 2 0;" >Sign up</button>
    <button class="w-100 btn btn-lg btn-primary" type="button" style="margin: 2 0 2 0;" onClick="location.href='../index'">Home</button>
    <p class="mt-5 mb-3 text-muted">&copy; MyPetCare2023</p>
    
  </form>
	</form>
</c:if>

<c:choose>
<c:when test="${userId eq 'admin'}"  >
<% response.sendRedirect("../admin/main");%>
</c:when>
<c:when test="${not empty sessionScope.userId}"  >
<% response.sendRedirect("../index");%>
</c:when>
</c:choose>


<div class="container">
	<div class="pg-opt">
        <div class="row">
            <div class="col-md-6 pc">
                <h2><fmt:message key="LOGIN"/><small style="color:red"> <fmt:message key="${not empty message ? message : 'BLANK'}"/></small></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="MEMBER"/></li>
                    <li class="active"><fmt:message key="LOGIN"/></li>
                </ol>
            </div>
        </div>
</div>

</div>
</div>
</div>









    
  </body>
</html>


      
 

  





