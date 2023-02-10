<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../header.jsp" %> 

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


.screen2-1 {
  padding: 1.5rem !important;
  margin-bottom: 1rem !important;
  background-color: #f8f9fa !important;
  border-radius: 0.2rem !important;
}
.tbody{
text-align: center;
}

@media (prefers-reduced-motion: reduce) {
  .bt {
    transition: none;
  
}
}

.tablebtn {
  width:80px;
  margin-bottom: 0 !important;
  display: inline-block;
  font-weight: 400;
  color: #212529;
  text-align: center;
  vertical-align: middle;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  background-color: transparent;
  border: 1px solid transparent;
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  line-height: 1.5;
  border-radius: 0.25rem;
  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
  color: #007bff;
  border-color: #007bff;
}


</style>


<div class="full">
	<div class="screen1">				
		<div class="screen1-1">
		    	<div class="colmenu">
		    		<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
		        		<div class="col p-4 d-flex flex-column position-static">
                       <strong class="d-inline-block mb-2 text-primary">${petSpecies}</strong>
                        <h3 class="mb-0">${consult.consultTitle}</h3>
                        <div class="mb-1 text-muted">${consult.consultRegDate}<span id="writeuserName">${userNickname}</span></div>
                        <p class="card-text mb-auto">${consult.consultContent}</p>
                    	<c:set var="len" value="${fn:length(consult.fileName)}"/>
                    <c:set var="filetype" value="${fn:toUpperCase(fn:substring(consult.fileName, len-4, len))}"/>
                    <c:if test="${(filetype eq '.JPG') or (filetype eq 'JPEG') or (filetype eq '.PNG') or (filetype eq '.GIF')}"><img src='<c:url value="/cfile/${consult.fileId}"/>' class="img-thumbnail"><br></c:if>
                    </div>
		      		</div>
		    	</div>
   				<c:forEach var="comment" items="${commentList}">
			    	<div class="colmenu">
			    		<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
			        		<div class="col p-4 d-flex flex-column position-static">
			        			<div>${comment.hospitalName}&nbsp;수의사&nbsp;&nbsp;<strong class="d-inline-block mb-2 text-primary">${comment.userName}</strong><span><button class="btn btn-follow" data-follow-id="${comment.userNo}"></button></span></div>
			           			<div class="mb-1 text-muted"><fmt:formatDate value="${comment.commentDate}" type="both" dateStyle="long"/></div> 
			        			<p class="card-text mb-auto">${comment.commentContent}</p>
			        		</div>
			        		<div>
			        		<button class="btn btn-like" data-comment-id="${comment.commentId}">Like</button>
							<span class="like-count">${comment.commentLike}</span>
							</div>
							</div>
						</div>
				</c:forEach>
		<c:if test="${auth eq 1}">
	    	<a href='<c:url value="/consult/reply/${consultingId}"/>'><button type="button" class="btn btn-info">답변 작성하기</button></a>
		</c:if>
		<div>
		<a href='<c:url value="/consult/list"/>'><button type="button" class="btn btn-info">목록으로</button></a>
		</div>
		</div>
	 <div class="screen2">
	  	<div class="Screen2-1">
		  <div>		         
		  		
				  	<form action="<c:url value='/consult/search'/>" method="post" id="joinForm" name="joinForm" class="form-horizontal">		         
		  	<div class="choose">
		  		<div>
	                <label  class="form-label">증상 분류</label>
	                         <select class="form-select" id="keyword1" name="keyword1" required>
				            	<option value="피부과" selected="selected">피부과</option>
				            	<option value="내과">내과</option>
				            	<option value="외과">외과</option>
				            	<option value="이비인후과">이비인후과</option>
				            	<option value="치과">치과</option>
				            	<option value="중성화관련">중성화관련</option>
				            	<option value="안과">안과</option>
				            	<option value="건강검진">건강검진</option>
			            	</select>
             	</div>
             	<br>
		  		<div>
	                <label  class="form-label">종 분류</label>
	                         <select class="form-select" id="keyword2" name="keyword2" required>
				            	<option value="강아지" selected="selected">강아지</option>
				            	<option value="고양이">고양이</option>
				            	<option value="토끼">토끼</option>
				            	<option value="파충류">파충류</option>
				            	<option value="설치류">설치류</option>
				            	<option value="조류">조류</option>
				            	<option value="어류">어류</option>
				            	<option value="기타">기타</option>
			            	</select>
             	</div>
             	<br>
             	<input type="submit" class="btn btn-outline-primary" value="조회">             	
             </div>    
		  	</form>
		
			</div>
		  	</div>  	     
	</div>           
</div>     
</div>


<div class="screen3">
	<%@ include file="../footer.jsp" %>   
</div>