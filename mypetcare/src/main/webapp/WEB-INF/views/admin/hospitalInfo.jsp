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
  </style>


<body>
	
	<div class = "admininfo">
	<h1>병원정보</h1>
	<table class="table table-sm " >
	 
  <thead>

    <tr>
      <th scope="col">no.</th>
      <th scope="col">Id</th>
      <th scope="col">Address</th>
      <th scope="col">DetailAddress</th>
      <th scope="col">Name</th>
      <th scope="col">phone</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>hId</td>     
      <td>서울시 서초구 반포2동</td>
      <td>000 건물 몇층 </td>              
      <td>010-1234-1234</td>
      <td>hospitalTest</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>hId</td>     
      <td>서울시 서초구 반포2동</td>
      <td>000 건물 몇층 </td>              
      <td>010-1234-1234</td>
      <td>hospitalTest</td>
    </tr>
  
  </tbody>
</table>
	
	</div>

	</div>
</body>


