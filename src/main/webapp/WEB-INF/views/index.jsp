<%@ page language="java" contentType="text/html; charset=UTF-8" 
	%>


<%@ include file="header.jsp"  %> 
 
<style>
.full{
    width: 1500px;
}
.screen1{	
    padding-left:400px;
    float: left;
}
.screen1-1{	
    width: 800px;
    float: left;
}
.screen2{
	padding-left:40px;
    width: 250px;    
    float: left;
} 
.screen3{
    width: 100%;
    height:100px;
    float: left;
}  
</style>

<div class="full"  >
	<div class="screen1">				
		<div class="screen1-1">
			<div class="colmenu">
				<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<strong class="d-inline-block mb-2 text-primary">강아지</strong>
						<h3 class="mb-0">Q. 강아지 기침 관련 질문드립니다.</h3>
						<div class="mb-1 text-muted">2022-02-09</div> 
						<p class="card-text mb-auto">강아지가 너무 기침을 심하게 합니다. 도움을 받고 싶습니다.</p>
					</div>						 
				</div>			      
			</div>		    
		    <div class="colmenu">
			    <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				    <div class="col p-4 d-flex flex-column position-static">
					    <strong class="d-inline-block mb-2 text-success">고양이</strong>
					    <h3 class="mb-0">Q. 고양이가 산책을 원합니다.</h3>
					    <div class="mb-1 text-muted">Nov 11</div>
					    <p class="mb-auto">고양이를 키우고 있습니다. 강아지랑 같이 산적도 없는데 그렇게 산책을 좋아하네요. 산책을 시켜줘도 괜찮을까요?</p>				         
				    </div>			        
			    </div>
		    </div>
		    <div class="colmenu">
			    <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				    <div class="col p-4 d-flex flex-column position-static">
					    <strong class="d-inline-block mb-2 text-success">고슴도치</strong>
					    <h3 class="mb-0">Q. 이곳에 문진글 제목이 들어갑니다.</h3>
						<div class="mb-1 text-muted">1시간 전</div>
					    <p class="mb-auto">이곳에 문진글 내용이 들어갑니다. 이곳에 문진글 내용이 들어갑니다. 이곳에 문진글 내용이 들어갑니다. 이곳에 문진글 내용이 들어갑니다. 이곳에 문진글 내용이 들어갑니다.</p>				          
				    </div>			        
			    </div>		      		      
		    </div> 
		</div> 
	  <div class="screen2">
		  <div class="p-4 mb-3 bg-light rounded">		         
		  	<p class="mb-0"><input type=button class="btn btn-primary" onClick="location.href='./board/boardWrite'" value="문진글 작성하기"></p>		
		    <div class="p-4">
			    <h4 class="fst-italic">증상별</h4>
				    <ol class="list-unstyled mb-0">
					    <li><p class="mb-0"><input type=button class="btn btn-outline-primary me-2" value="피부염"></p></li>
					    <li><p class="mb-0"><input type=button class="btn btn-outline-primary me-2" value="설사"></p></li>
					    <li><p class="mb-0"><input type=button class="btn btn-outline-primary me-2" value="피부염"></p></li>
					    <li><p class="mb-0"><input type=button class="btn btn-outline-primary me-2" value="구토"></p></li>
					    <li><p class="mb-0"><input type=button class="btn btn-outline-primary me-2" value="피부염"></p></li>
					    <li><p class="mb-0"><input type=button class="btn btn-outline-primary me-2" value="중성화"></p></li>
					    <li><p class="mb-0"><input type=button class="btn btn-outline-primary me-2" value="외상"></p></li>
					    <li><p class="mb-0"><input type=button class="btn btn-outline-primary me-2" value="기침"></p></li>
					    <li><p class="mb-0"><input type=button class="btn btn-outline-primary me-2" value="건강검진"></p></li>
					    <li><p class="mb-0"><input type=button class="btn btn-outline-primary me-2" value="결막염"></p></li>
					    <li><p class="mb-0"><input type=button class="btn btn-outline-primary me-2" value="치주염"></p></li>
					    <li><p class="mb-0"><input type=button class="btn btn-outline-primary me-2" value="외이염"></p></li>				           
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
</div>     
<div class="screen3">
	<%@ include file="footer.jsp" %>   
</div>
  
  

  

			
			
			
		
			
			
				
							
		
	
	
	
	

 