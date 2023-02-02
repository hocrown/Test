<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../header.jsp" %> 
 
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

.sideMenu {
 
  width: 60%;
 
  padding-left: 45%;
  padding-top: 10%;
}


</style>



<!--   형태,의미,순서-->

<!-- 
			<div class=sideMenu style="position: fixed; right: 30px;">		
				<div><td colspan= "2" ><input type=button onClick="location.href='./board/boardWrite'" value="문진글 작성하기"></div>
						
				<div><input type=button value="증상별"><input type=button value="펫종류별"></div>
				<div><input type=button value="피부염"><input type=button value="기침"></div>
				<div><input type=button value="설사"><input type=button value="건강검진"></div>
				<div><input type=button value="구토"><input type=button value="결막염"></div>
				<div><input type=button value="중성화"><input type=button value="치주염"></div>
				<div><input type=button value="외상"><input type=button value="외이염"></div>
			</div>
					 -->
					 
					 	
<main class="indexmain">
	<div class="menu">
	
		<c:forEach var="consult" items="${consultList}">
	    	<div class="col-md-5">
	    		<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
	        		<div class="col p-4 d-flex flex-column position-static" style=" cursor: pointer;" onclick="location.href='/consult/view/${consult.consultingId}';">
	        			<strong class="d-inline-block mb-2 text-primary">강아지</strong>
	         			<h3 class="mb-0">${consult.consultTitle}</h3>
	           			<div class="mb-1 text-muted">${consult.consultRegDate}</div> 
	        			<p class="card-text mb-auto">${consult.consultContent}</p>
	        		</div>
	      		</div>
	    	</div>
   		</c:forEach>
   		
   		
   		
   		
<%--    		<c:forEach var="comment" items="${consultAList}"> --%>
<!-- 	    	<div class="col-md-5"> -->
<!-- 	    		<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"> -->
<!-- 	        		<div class="col p-4 d-flex flex-column position-static"> -->
<!-- 	        			<strong class="d-inline-block mb-2 text-primary">강아지</strong> -->
<%-- 	         			<h3 class="mb-0">${comment.commentTitle}</h3> --%>
<%-- 	           			<div class="mb-1 text-muted">${comment.commentRegDate}</div>  --%>
<%-- 	        			<p class="card-text mb-auto">${comment.commentContent}</p> --%>
<!-- 	        		</div> -->
<!-- 	      		</div> -->
<!-- 	    	</div> -->
<%--    		</c:forEach> --%>
    
    
    <a href='<c:url value="/consult/writeform"/>'><button type="button" class="btn btn-info"></button></a>
    
		<div class="sideMenu">
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
			
			
			
		
			
			
				
							
		
	
	
	
	

<%@ include file="../footer.jsp" %>    