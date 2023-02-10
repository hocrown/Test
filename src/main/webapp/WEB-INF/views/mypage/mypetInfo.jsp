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
	
	.form-labell {
	  padding-top: calc(0.375rem + 1px);
	  padding-bottom: calc(0.375rem + 1px);
	  margin-bottom: 0;
	  font-size: inherit;
	  line-height: 1.5;
	  font-weight:bold;
	}
  </style>


<body>
	<div class="full">
		
			<div class="screen1">
				<%@ include file="mypageMenu.jsp"%>	
			</div>
			<div class="screen2"> 
			<form action="<c:url value='/mypage/mypetInfo'/>" method="post" id="petUpdateForm" class="form-horizontal">
				<div><h1>반려동물정보</h1></div>
				<div class="colmenu">		     	
					<div class="row g-3">
			            <div class="col-sm-8">
			              <label for="username" class="form-label">이름(애칭)</label>
				              <div class="input-group has-validation">				                
				                <input type="text" class="form-control" name="petName" id="petName" value="${user.petName}" required>
				                <input type="hidden" class="form-control" name="petNo" id="petNo" value="${user.petNo}">
				                
				              	
				              </div>
			            </div>
					</div>				
				<div class="row g-3">	
		            <div class="col-sm-8">
			            <label  class="form-label">종 분류</label>
			            <select class="form-select" id="petSpecies" name="petSpecies" value="${user.petSpecies}" required>
			            	<option value="강아지" selected="selected">강아지</option>
			            	<option value="고양이">고양이</option>
			            	<option value="토끼">토끼</option>
			            	<option value="파충류">파충류</option>
			            	<option value="설치류">설치류</option>
			            	<option value="조류">조류</opt	ion>
			            	<option value="어류">어류</option>
			            	<option value="기타">기타</option>
		   			   	</select>
			            
			            
		            </div>
				</div>				 
				<div class="row g-3">
		            <div class="col-sm-8">
			            <label for="firstName" class="form-label">생일</label>
			              <input type="date" class="form-control" id="date" name="petFamilyDate" max="2077-06-20" min="1990-01-01" value="${user.petFamilyDate}" required>
			              
		            </div>
	            </div>				 
				<div class="row g-3">	
		            <div class="col-sm-8">
		             <label for="address" class="form-label">성별</label>
			            <select class="form-control" id="petSex" name="petSex" value="${user.petSex}" required>
			   		       	<option value="male" selected="selected">남아</option>
			            	<option value="female">여아</option>
			           	</select>
		            
			              
		            </div>
				</div>    
		    	</div><br>
		    	<div> <button type="submit" class="btn-admin" >수정하기</button>
		    	<button type="button" class="btn-admin" onClick="location.href='/mypage/mypet/${sessionScope.userNo}'">반려동물정보 목록</button></div>						
			</form>	
		</div>			
		
	</div>
	<div class="screen3"> 
	    <%@ include file="../footer.jsp"%>
	</div>
</body>


