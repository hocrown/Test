<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="adminMenu.jsp"%>

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
  </style>


<body>
	
	<div class = "admininfo">
	<div>
	<div><h1>신고</h1></div>
	<div class="class2">
	 <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
        </div>
        </div>
	<table class="table table-sm " >
	   
	<thead>
  
	  <tr>
		<th scope="col">no.</th>
		<th scope="col">title</th>
		<th scope="col">contents</th>
		<th scope="col">wirter</th>
		<th scope="col">RegDate</th>
		<th scope="col">report Num</th>

	  </tr>
	</thead>
	<tbody>
	  <tr>
		<th scope="row">1</th>
	   <td><a href="/admin/adminReportInfo"> 신고받은 작성글 타이틀.</a></td>
	   <td>신고받은 작성글 내용이 들어가는 자리입니다. 테스트중 입니다.</td>
	   <td>홍길동</td>
	   <td>YYYY-MM-DD</td>             
		<td>23</td>
		 
	  </tr>
	  <tr>
		<th scope="row">2</th>
	   <td>신고받은 작성글 제목</td>
	   <td>신고받은 작성글 내용이 들어가는 자리입니다. 테스트중 입니다.</td>
	   <td>홍길동</td>
	   <td>YYYY-MM-DD</td>             
		<td>23</td>
	  </tr>
	
	</tbody>
  </table>
	  
	  </div>
  
	  </div>
  </body>


