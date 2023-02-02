<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<style>
  .admininfo{
    position:absolute; 
    top:10%; 
    left:20%; 
    width:70%;
  }
.class2{
    width: 300px;
    float: right;
}
.full{
    width: 1100px;
   
}
.full{
     width: 1200px;
   
}
.screen1{
    width: 400px;
    float: left;
}
.screen2{
    width: 800px;
    height:400px;
    float: left;
} 
.screen3{
    width: 100%;
    height:100px;
    float: left;
}  
.btn-admin {
float: right;
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
			<div><h1>반려동물정보</h1></div>
			<div class="colmenu">
	     	
			<div class="row g-3">
            <div class="col-sm-8">
              <label for="username" class="form-label">이름(애칭)</label>
              <div class="input-group has-validation">
                
                <input type="text" class="form-control" id="username" placeholder="{DB 기존 정보 출력해오기}" required>
              <div class="invalid-feedback">
                  Your 이름 is required.
                </div>
              </div>
            </div>
			</div>
			
			<div class="row g-3">	
            <div class="col-sm-8">
              <label for="email" class="form-label">견종,묘종 <span class="text-muted">(기타)</span></label>
              <input type="email" class="form-control" id="email" placeholder="{DB 기존 정보 출력해오기}">
              <div class="invalid-feedback">
                Please enter a valid 견종,묘종 address for shipping updates.
              </div>
            </div>
			 </div>
			 
			 <div class="row g-3">
            <div class="col-sm-8">
              <label for="firstName" class="form-label">생일</label>
              <input type="text" class="form-control" id="firstName" placeholder="{DB 기존 정보 출력해오기}" value="" required>
              <div class="invalid-feedback">
                Valid first 생일 is required.
              </div>
            </div>
            </div>
			 
			 <div class="row g-3">	
            <div class="col-sm-8">
              <label for="address" class="form-label">성별</label>
              <input type="text" class="form-control" id="address" placeholder="{DB 기존 정보 출력해오기}" required>
              <div class="invalid-feedback">
                Please enter your  성별.
              </div>
            </div>
			 </div>

				 
		       
	    	</div>
	    	
		</div>
		 <div> <button type="submit" class="btn-admin" >등록하기</button></div>
		
			<div> <button type="button" class="btn-admin" onClick="location.href='/mypage/mypet'">반려동물정보 목록</button></div>
	</div>
	<div class="screen3"> 
	    <%@ include file="footer.jsp"%>
	    </div>
</body>


