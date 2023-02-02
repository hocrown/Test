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
	<div><h1>공지사항</h1></div>
	<div class="class2">
	 <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
          <button class="btn btn-outline-success" type="submit" style="width: 135px">글쓰기</button>
        </form>
        </div>
        </div>
	<table class="table table-sm " >
	
    <tr>
      <th scope="col">no.</th>
      <th scope="col">title</th>
      <th scope="col">contents</th>
      <th scope="col">writer</th>
      <th scope="col">date</th>
  
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td><a href="/admin/adminNoticeInfo"> 공지사항 테스트입니다.</a></td>     
      <td>공지사항 테스트 중입니다. 내용이 들어가는 부분입니다.</td>
      <td>관리자 </td>              
      <td>YYYY-MM-DD</td>
    
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>공지사항테스트</td>     
      <td>공지사항 테스트 중입니다. 내용이 들어가는 부분입니다. 조금더 길게 진행중</td>
      <td>관리자 </td>              
      <td>YYYY-MM-DD</td>
    </tr>
  
  </tbody>
</table>
	
	</div>

	
</body>


