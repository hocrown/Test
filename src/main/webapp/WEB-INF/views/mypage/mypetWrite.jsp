<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  width:40%;
} 
.screen3{
   position:absolute; 
  top:130%; 
   
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
			<div><h1>반려동물등록</h1></div>
			<div class="colmenu">
				<form action="<c:url value='/mypage/mypet/insert'/>" method="post" id="petjoinForm" name="joinForm" class="form-horizontal">
			
			<!--이름입력-->	     	
			<div class="row g-3">
            <div class="col-sm-8">
              <label for="username" class="form-label">이름(애칭)</label>
              <div class="input-group has-validation">                
               <input type="text" class="form-control" name="petName" id="petName" value="${petmodel.petName}"
			  	class="form-control" placeholder="반려동물 이름입력" required>                
              </div>
            </div>
			</div>			
		
			<!--견종,묘종 입력  -->
			<div class="row g-3">	
            <div class="col-sm-8">
               <label  class="form-label">종 분류</label>
               <select class="form-select" id="petSpecies" name="petSpecies" value="${petmodel.petSpecies}" required>
	            	<option value="강아지" selected="selected">강아지</option>
	            	<option value="고양이">고양이</option>
	            	<option value="토끼">토끼</option>
	            	<option value="파충류">파충류</option>
	            	<option value="설치류">설치류</option>
	            	<option value="조류">조류</option>
	            	<option value="어류">어류</option>
	            	<option value="기타">기타</option>
   			   	</select>
            </div>
			</div>
			 
			 <!-- 생일 입력 -->
			 <div class="row g-3">
            <div class="col-sm-8">
              <label for="firstName" class="form-label">생일</label>
              <input type="date" class="form-control" id="date" name="petFamilyDate" max="2077-06-20" min="1990-01-01"
         		value="${petmodel.petFamilyDate}" required>
            </div>
            </div>
            
			<!--성별입력 --> 
			<div class="row g-3">	
            <div class="col-sm-8">
            <label for="address" class="form-label">성별</label>
	            <select class="form-control" id="petSex" name="petSex" value="${petmodel.petSex}" required>
	   		       	<option value="male" selected="selected">남아</option>
	            	<option value="female">여아</option>
	           	</select>
	            </div>
			</div>
		       
			<!-- 중성화 여부  -->
			<div class="row g-3">	
			<div class="col-md-8">
        	<label for="petNEUT" class="form-label">중성화 여부</label>
            <select class="form-select" id="petNeut" name="petNeut" required>
            	<option value="Y" selected="selected">했음</option>
            	<option value="N">안했음</option>
            </select>
            </div>
            </div>
	    	
			<!--pet 성격  --> 
		 	 <div class="row g-3">	
            <div class="col-sm-8">
              <label for="address" class="form-label">성격</label>
			<input type="text" class="form-control" name="petCharacter" id="petCharacter" value="${petmodel.petCharacter}"
			  	class="form-control" placeholder="성격입력" required>
            </div>
            
			 	<div> <input onclick="petChk()" class="btn btn-primary" type="submit" value="등록">
			 	<button type="button" class="btn-admin"  onClick="location.href='/mypage/mypet'">반려동물정보 목록</button></div>
			 </div>			 			
	
	<!-- <div class="screen3"> 
	    </div> -->
		       
			 	
	    	</form>
	    	</div>
	    	<div class="screen3">
	    <%@ include file="../footer.jsp"%>
		</div>
		</div>
	</div>
<script>

function petChk() {

  alert("펫 정보 등록완료");



}

</script>
</body>


