<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>


<style>

.full{
    width: 1200px;  
}
.screen1{
    position:absolute; 
  top:15%; 
  left:16%; 
  width:20%;  
}

.screen2{
     position:absolute; 
  top:15%; 
  left:30%; 
  width:60%;
} 
.screen3{
   position:absolute; 
  top:100%; 
   
  width:100%;
}  


</style>
<body>
	<div class="full">
		<div class="screen1">
			<%@ include file="mypageMenu.jsp"%>	
		</div>
		<div class="screen2"> 		
		<div class="col-md-5" Style="width:30%; float:left;">
	      	<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
	        <div class="col p-4 d-flex flex-column position-static">
	          <strong class="d-inline-block mb-2 text-primary">예방접종 권장일</strong>
	          <h3 class="mb-0">2월9일</h3><br>	    	
	          <p class="card-text mb-auto">진료를 받은지 30일이 되어갑니다. 45일 마다 건강 검진을 추천합니다.</p>
	        </div>			 
	      </div>
    	</div>  
    <div class="col-md-5" Style="width:30%; float:left;">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-success">최근 검진</strong>
          <h3 class="mb-0">30일전</h3>
          <div class="mb-1 text-muted">Nov 11</div>
          <p class="mb-auto">서울시 서초구 판보2동 멍멍 병원에서 진료</p>         
        </div>        
      </div>
    </div>   
    <div class="col-md-5" Style="width:30%; float:left;">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-success">예정일</strong>
          <h3 class="mb-0">예정</h3><br>
          <p class="mb-auto">예정</p>          
        </div>        
      </div>
     </div>        
	 </div>	    
	</div>
	
	<div class="screen3"> 
	    <%@ include file="../footer.jsp"%>
	</div>
		
</body>










