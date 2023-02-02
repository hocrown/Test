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
.screen2-1{
    width: 800px;
    height:400px;
    float: right;
} 
.screen3{
    width: 100%;
    height:100px;
    float: left;
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
			<div><h1>상담내역</h1></div>
			<div class="colmenu">
	     	<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
			       <div class="col p-4 d-flex flex-column position-static">
			          <div class="mb-1 text-muted">글번호:</div> 
			          <div class="mb-1 text-muted">작성자:</div> 
			          <div class="mb-1 text-muted">작성일:YYYY-MM-DD</div> 
			          <h3 class="mb-0">신고 title 들어가는곳</h3>			          
			         <p class="card-text mb-auto">신고 content들어가는곳</p>
			       </div>
			       </div>
			       
		
		
				 
		       
	    	</div>
	    	
				<div class="screen2-1"> 
					<div> 
						<button type="button" class="btn-admin" onClick="location.href='/mypage/myscrap'">상담내역목록</button>
				      	<button type="button" class="btn-admin" >수정</button>
				        <button type="button" class="btn-admin" >삭제</button>
			        </div>
				</div>
		</div>
		 
	</div>
	<div class="screen3"> 
	    <%@ include file="footer.jsp"%>
	    </div>
</body>


