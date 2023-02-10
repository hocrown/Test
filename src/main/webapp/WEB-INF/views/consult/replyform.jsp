<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../header.jsp" %> 
 
<style>
.full{
    width: 1500px;
}
.screen1{	
    padding-left:500px;
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
.choose1{
 width: 100%;
   display :inline-block;
    float: left;
}  
.choose{
  
    float: left;
} 
</style>

<div class="full"  >
	<div class="screen1">				
		<div class= "replyWriteForm"  style= "align: center; text-align: center; boarder: 1px solid #dddddd">
    	<div>문진글 작성</div>
    	<form action="<c:url value='/consult/replyinsert'/>" method="post" enctype="multipart/form-data" class="form-horizontal">
	    		<div >제목</div>
		    	<div><input type="text"  value="${consultTitle}"  name="consultTitle" maxlength="500" style= "width:700px" readonly/></div>
		    	<div class="choose1">
		    	<input type="hidden" value="${consultingId}" name="consultingId">
           		</div>
	    		<div>답변 내용</div>
	    		<div><textarea placeholder="답변 내용"  name="commentContent" maxlength="5000" style= "height:350px; width:700px"></textarea></div>
	    		<div><input  type="file" class="form-control" value="파일업로드" ></div><br>
		    	<div><input type="submit" class="btn btn-info" value="등록하기" ></div><br>
    			<div><input type="button" onClick="location.href='/index'" value="홈으로" ></div>
				</form>
			</div> 	
		</div>           
	</div>     
	<div class="screen3">
	<%@ include file="../footer.jsp" %>   
	</div>