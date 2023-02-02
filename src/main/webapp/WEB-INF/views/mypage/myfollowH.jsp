<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>


<style>

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


</style>

<body>
	<div class="full">
		<div class="screen1">
			<%@ include file="mypageMenu.jsp"%>	
		</div>
		<div class="screen2"> 
		
		<div class = "admininfo">
	<div>
	<div><h1>팔로우한 병원</h1></div>
	<div class="class2">
	 <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
          <button class="btn btn-outline-success" type="submit" style="width: 135px">등록하기</button>
        </form>
        </div>
        </div>
	<table class="table table-sm " >
	
    <tr>
     
      <th scope="col">병원명</th>
      <th scope="col">주소</th>
      <th scope="col">번호</th>
      <th scope="col">팔로우</th>
  
    </tr>

  <tbody>
    <tr>
     
      <td><a href="/mypage/myfollowHInfo"> 멍멍병원</a></td>     
      <td>서울시특별시 서초구 반포2동 00건물 2층 203호</td>
      <td>02-1234-1234 </td>              
      <td>♥</td>
    
    </tr>
    <tr>
      <td> 냥냥병원</td>     
      <td>서울시특별시 서초구 반포2동 00건물 2층 203호</td>
      <td>02-1234-1234 </td>              
      <td>♡</td>
    
    </tr>
  
  </tbody>
</table>
	
	</div>
    
    
	    </div>
	    
	    
	    
	</div>
	<div class="screen3"> 
	    <%@ include file="footer.jsp"%>
	    </div>
	
</body>










