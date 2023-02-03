<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="mypageMenu.jsp"%>

<style>
.main {
  width: 45%;
 
  margin-right: auto;
  margin-left: 20%;
  margin-top: -20%;
}
.menu {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
 
  margin-right: -15px;
  margin-left: -15px;
   
}

</style>


<body>
	
	<main class="main">
	 <div class="menu">
    <div class="col-md-5">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-primary">예방접종 권장일</strong>
          <h3 class="mb-0">2월9일</h3><br>
    <!--       <div class="mb-1 text-muted">최근 방문일 1월1일</div>--> 
          <p class="card-text mb-auto">진료를 받은지 30일이 되어갑니다. 45일 마다 건강 검진을 추천합니다.</p>
        </div>
		 
      </div>
    </div>
    
     <div class="col-md-5">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-success">최근 검진</strong>
          <h3 class="mb-0">30일전</h3>
          <div class="mb-1 text-muted">Nov 11</div>
          <p class="mb-auto">서울시 서초구 판보2동 멍멍 병원에서 진료</p>
         
        </div>
        
      </div>
    </div>
    <div class="col-md-5">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-success">예정일</strong>
          <h3 class="mb-0">예정</h3><br>

          <p class="mb-auto">예정</p>
          
        </div>
        
      </div>
    </div>
    
  </div>
	</main>
</body>


<%@ include file="../footer.jsp"%>