<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<style>
   .full{
    width: 1200px;  
}
.screen1{
    position:absolute; 
  top:15%; 
  left:16%; 
  width:20%;  
}

.screen2{
     position:absolute; 
  top:15%; 
  left:30%; 
  width:60%;
} 
.screen3{
   position:absolute; 
  top:100%; 
   
  width:100%;
}  
.btn-admin {

display: inline-block;
  font-weight: 400;
  color: #212529;
  text-align: center;
  vertical-align: middle;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  background-color: transparent;
  border: 1px solid transparent;
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  line-height: 1.5;
  border-radius: 0.25rem;
  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
  color: #007bff;
  border-color: #007bff;
}
  </style>


<body>
	<div class="full">
		<div class="screen1">
			<%@ include file="mypageMenu.jsp"%>	
		</div>
		<div class="screen2"> 
			<form action="<c:url value='/mypage/myinfo'/>" method="post" id="userUpdateForm" class="form-horizontal">
			<div><h1>회원 정보</h1></div>
			<div class="colmenu">
		     	<div class="row g-3">
	            <div class="col-sm-8">
	              <b><label for="firstName" class="form-label">UserId</label></b><br>
	              <label for="firstName" class="form-label">${userId}</label>
	            </div>
	             </div>                    
	            
	            <div class="row g-3">
	            <div class="col-sm-8">
	              <b><label for="firstName" class="form-label">Name</label></b><br>
	              <label for="firstName" class="form-label">${userName}</label>            
	            </div>
	            </div>
	
				<div class="row g-3">
	            <div class="col-sm-8">
	              <label for="username" class="form-label">userNickname</label>
	              <div class="input-group has-validation">
	               
	                <input type="text" class="form-control" name="userNickname" id="userNickName"  value="${user.userNickname}" required>
	              <div class="invalid-feedback">
	                  Your Nickname is required.
	                </div>
	              </div>
	            </div>
				</div>
				
				<div class="row g-3">	
	            <div class="col-sm-8">
	              <label for="Phone" class="form-label">Phone <span class="text-muted">(Optional)</span></label>
	              <input type="Phone" class="form-control" name="userPhone" id="email"  value="0${user.userPhone}">
	              <div class="invalid-feedback">
	                Please enter a valid Phone for shipping updates.
	              </div>
	            </div>
				 </div>						
				 
				 <div class="row g-3">	
	            <div class="col-sm-8">
	              <label for="address" class="form-label">Address</label>
	              <input type="text" class="form-control" name="userAddress" id="address" value="${user.userAddress}" required>
	              <div class="invalid-feedback">
	                Please enter your  address.
	              </div>
	            </div>
				 </div>
				 <div class="row g-3">	
				 <div class="col-sm-8">
	              <label for="address2" class="form-label">postnum <span class="text-muted">(Optional)</span></label>
	              <input type="text" class="form-control" name="userPostNum"  id="address2"  value="${user.userPostNum}">
	            </div>
				</div> 
				<div class="row g-3">	
	            <div class="col-sm-8">
	              <label for="address2" class="form-label">Address Detail <span class="text-muted">(Optional)</span></label>
	              <input type="text" class="form-control" name="userDetailAddress"  id="address2" value="${user.userDetailAddress}">
	            </div>
	             <div> <input type="submit" class="btn-admin" value="변경"></div>
				</div>       
		    	</div>
   			 </form>	   
    	</div>
	</div>
	<div class="screen3"> 
	    <%@ include file="../footer.jsp"%>
	    </div>
</body>


