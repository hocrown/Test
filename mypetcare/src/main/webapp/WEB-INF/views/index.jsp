<%@ page language="java" contentType="text/html; charset=UTF-8" 
	%>


<%@ include file="header.jsp" %> 
 
<style>
.indexmain {
  width: 100%;
 
  margin-right: auto;
  margin-left: 30%;
 
}

.content{
position:relative;
top:5%;
left:5%;
word-break:break-all;

}


</style>



<!--   형태,의미,순서-->


			<div class=sideMenu style="position: fixed; right: 30px;">		
				<div><td colspan= "2" ><input type=button onClick="location.href='./board/boardWrite'" value="문진글 작성하기"></div>
						
				<div><input type=button value="증상별"><input type=button value="펫종류별"></div>
				<div><input type=button value="피부염"><input type=button value="기침"></div>
				<div><input type=button value="설사"><input type=button value="건강검진"></div>
				<div><input type=button value="구토"><input type=button value="결막염"></div>
				<div><input type=button value="중성화"><input type=button value="치주염"></div>
				<div><input type=button value="외상"><input type=button value="외이염"></div>
			</div>
						
			<main class="indexmain">
	 <div class="menu">
    <div class="col-md-5">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-primary">강아지</strong>
          <h3 class="mb-0">Q. 강아지 기침 관련 질문드립니다.</h3>
           <div class="mb-1 text-muted">2022-02-09</div> 
          <p class="card-text mb-auto">강아지가 너무 기침을 심하게 합니다. 도움을 받고 싶습니다.</p>
        </div>
		 
      </div>
    </div>
    
     <div class="col-md-5">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-success">고양이</strong>
          <h3 class="mb-0">Q. 고양이가 산책을 원합니다.</h3>
          <div class="mb-1 text-muted">Nov 11</div>
          <p class="mb-auto">고양이를 키우고 있습니다. 강아지랑 같이 산적도 없는데 그렇게 산책을 좋아하네요. 산책을 시켜줘도 괜찮을까요?</p>
         
        </div>
        
      </div>
    </div>
    <div class="col-md-5">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-success">고슴도치</strong>
          <h3 class="mb-0">Q. 이곳에 문진글 제목이 들어갑니다.</h3><br>
			<div class="mb-1 text-muted">1시간 전</div>
          <p class="mb-auto">이곳에 문진글 내용이 들어갑니다. 이곳에 문진글 내용이 들어갑니다. 이곳에 문진글 내용이 들어갑니다. 이곳에 문진글 내용이 들어갑니다. 이곳에 문진글 내용이 들어갑니다.</p>
          
        </div>
        
      </div>
    </div>
    
  </div>
  <div class="col-md-4">
      <div class="position-sticky" style="top: 2rem;">
        <div class="p-4 mb-3 bg-light rounded">
          <h4 class="fst-italic">About</h4>
          <p class="mb-0">Customize this section to tell your visitors a little bit about your publication, writers, content, or something else entirely. Totally up to you.</p>
        </div>

        <div class="p-4">
          <h4 class="fst-italic">Archives</h4>
          <ol class="list-unstyled mb-0">
            <li><a href="#">March 2021</a></li>
            <li><a href="#">February 2021</a></li>
            <li><a href="#">January 2021</a></li>
            <li><a href="#">December 2020</a></li>
            <li><a href="#">November 2020</a></li>
            <li><a href="#">October 2020</a></li>
            <li><a href="#">September 2020</a></li>
            <li><a href="#">August 2020</a></li>
            <li><a href="#">July 2020</a></li>
            <li><a href="#">June 2020</a></li>
            <li><a href="#">May 2020</a></li>
            <li><a href="#">April 2020</a></li>
          </ol>
        </div>

        <div class="p-4">
          <h4 class="fst-italic">Elsewhere</h4>
          <ol class="list-unstyled">
            <li><a href="#">GitHub</a></li>
            <li><a href="#">Twitter</a></li>
            <li><a href="#">Facebook</a></li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  
  
  
	</main>
			
			
			
		
			
			
				
							
		
	
	
	
	

<%@ include file="footer.jsp" %>    