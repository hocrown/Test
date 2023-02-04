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
	<div><h1>반려동물정보</h1></div>
	<div class="class2">
	 <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
          <button class="btn btn-outline-success" type="button" style="width: 135px" onClick="location.href='/mypage/mypetWriteForm'">등록하기</button>
        </form>
        </div>
        </div>
	<table class="table table-sm " >
	
    <tr>
      <th scope="col">no.</th>
      <th scope="col">이름(애칭)</th>
      <th scope="col">견종,묘종,기타</th>
      <th scope="col">생일</th>
      <th scope="col">성별</th>
  
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td><a href="/mypage/mypetInfo"> 뭉뭉이</a></td>     
      <td>골든리트리버</td>
      <td>2023-02-09 </td>              
      <td>남</td>
    
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>냥냥이</td>     
      <td>고양이</td>
      <td>2023-02-09 </td>              
      <td>여</td>
    
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










