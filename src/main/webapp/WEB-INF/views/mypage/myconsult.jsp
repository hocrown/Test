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
	<div><h1>상담내역</h1></div>
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
      <th scope="col">제목</th>
      <th scope="col">내용</th>
      <th scope="col">등록일</th>
      <th scope="col">답변여부</th>
      
  
    </tr>
  </thead>
  <tbody>
    <tr>
     
      <td><a href="/mypage/myconsultInfo"> 제목이 들어가는 곳입니다.</a></td>     
      <td>니용이들어가는 곳입니다.니용이들어가는 곳입니다.니용이들어가는 곳입니다.</td>
      <td>2023-02-09 </td>  
      <td>X</td>            
     
    
    </tr>
    <tr>
      <td>제목이 들어가는 곳입니다.</td>     
      <td>니용이들어가는 곳입니다.니용이들어가는 곳입니다.니용이들어가는 곳입니다.</td>
      <td>2023-02-09 </td>  
      <td>X</td>                   
    
    
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










