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
     width: 1200px;
   
}
.screen1{
    width: 400px;
    float: left;
}
.screen2{
    width: 800px;
    height:700px;
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
  </style>


<body>
	<div class="full">
		<div class="screen1">
			<%@ include file="mypageMenu.jsp"%>	
		</div>
		<div class="screen2"> 
		<div><h1>의료인 정보</h1></div>
		<div class="colmenu">
	     	<div class="row g-3">
            <div class="col-sm-8">
              <label for="firstName" class="form-label">UserId</label><br>
              <label for="firstName" class="form-label">DB에서 ID가져옴</label>
            </div>
             </div>                    
            
            <div class="row g-3">
            <div class="col-sm-8">
              <label for="firstName" class="form-label">Name</label><br>
              <label for="firstName" class="form-label">DB에서 이름가져옴</label>            
            </div>
            </div>

			<div class="row g-3">
            <div class="col-sm-8">
              <label for="username" class="form-label">Nickname</label>
              <div class="input-group has-validation">
                
                <input type="text" class="form-control" id="username" placeholder="{DB 기존 정보 출력해오기}" required>
              <div class="invalid-feedback">
                  Your Nickname is required.
                </div>
              </div>
            </div>
			</div>
			
			<div class="row g-3">	
            <div class="col-sm-8">
              <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control" id="email" placeholder="{DB 기존 정보 출력해오기}">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>
			 </div>
			 
			 <div class="row g-3">
            <div class="col-sm-8">
              <label for="firstName" class="form-label">Phone</label>
              <input type="text" class="form-control" id="firstName" placeholder="{DB 기존 정보 출력해오기}" value="" required>
              <div class="invalid-feedback">
                Valid first Phone is required.
              </div>
            </div>
            </div>
			 
			 <div class="row g-3">	
            <div class="col-sm-8">
              <label for="address" class="form-label">Address</label>
              <input type="text" class="form-control" id="address" placeholder="{DB 기존 정보 출력해오기}" required>
              <div class="invalid-feedback">
                Please enter your  address.
              </div>
            </div>
			 </div>
			 
			 <div class="col-sm-8">
              <label for="address2" class="form-label">postnum <span class="text-muted">(Optional)</span></label>
              <input type="text" class="form-control" id="address2" placeholder="새{DB 기존 정보 출력해오기}">
            </div>
			 
            <div class="col-sm-8">
              <label for="address2" class="form-label">Address Detail <span class="text-muted">(Optional)</span></label>
              <input type="text" class="form-control" id="address2" placeholder="{DB 기존 정보 출력해오기}">
            </div>

            <div class="col-md-8">
              <label for="country" class="form-label">의료인여부</label><br>
              <label for="country" class="form-label">DB에서 의료인여부 가져오기</label>
              
             
            </div>

		
			       <div> <button type="button" class="btn-admin" >탈퇴하기</button></div>
				 <div> <button type="button" class="btn-admin" >변경</button></div>
				 
		
		
				 
		       
	    	</div>
	    </div>
	</div>
	<div class="screen3"> 
	    <%@ include file="footer.jsp"%>
	    </div>
</body>


