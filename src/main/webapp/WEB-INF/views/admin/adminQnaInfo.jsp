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
.screen1{
    width: 200px;
    float: left;
}
.screen2{
    width: 700px;
    float: right;
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
			<%@ include file="adminMenu.jsp"%>	
		</div>
		<div class="screen2"> 
		<div><h1>Q&A</h1></div>
		<div class="colmenu">
	     	<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
			       <div class="col p-4 d-flex flex-column position-static">
			          <div class="mb-1 text-muted">글번호:</div> 
			          <div class="mb-1 text-muted">작성자:</div> 
			          <div class="mb-1 text-muted">작성일:YYYY-MM-DD</div> 
			          <h3 class="mb-0">Q&A title 들어가는곳</h3>			          
			         <p class="card-text mb-auto">Q&A content들어가는곳</p>
			       </div>
			       </div>
			      
				 <div> <button type="button" class="btn-admin" >답글</button></div>
				 <div> <button type="button" class="btn-admin" onClick="location.href='/admin/adminQna'">Q&A목록</button></div>
		
		
				 
		       
	    	</div>
	    </div>
	</div>
</body>


