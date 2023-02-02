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
			<%@ include file="serviceMenu.jsp"%>	
		</div>
		<div class="screen2"> 
		<div class = "admininfo">
	<div>
	<div><h1>QnA</h1></div>
	<div class="class2">
	 <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
          <button class="btn btn-outline-success" type="button" style="width: 135px" onClick="location.href='/service/QnaWrite'">작성하기</button>
        </form>
        </div>
        </div>
	<table class="table table-sm " >
	
    <tr>
      
      <th scope="col">title</th>
      <th scope="col">writer</th>
      <th scope="col">date</th>
      <th scope="col">readcount</th>
  
    </tr>
  </thead>
  <tbody>
    <tr>
      
      <td><a href="/service/QnaInfo"> title들어가는곳</a></td>     
      <td>writer들어가는곳</td>
      <td>date들어가는곳</td>              
      <td>readcount들어가는곳</td>
    
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










