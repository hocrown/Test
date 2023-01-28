<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>


<body>
   
  
    <div class= "boardWriteForm"  style= "align: center; text-align: center; boarder: 1px solid #dddddd">
    	<div>문진글 작성</div>
	    	<div >제목</div>
		    	<div><input type="text"  placeholder="글 제목"  name="title" maxlength="50" style= "width:700px " /></div>
		    		<div>내용</div>
	    		<div><textarea type="text" placeholder="글 내용"  name="content" maxlength="500" style= "height:350px; width:700px" ></textarea></div>
    		<div><input  type="file" class="file" value="파일업로드" ></div><br>
    	<div><input type="submit" class="boardwrite" value="등록하기" ></div><br>
    	<div><input type="button" onClick="location.href='../index'" value="홈으로" ></div>
   </div> 	
    	
    
</body>
<br><br><br><br>

<%@ include file="footer.jsp"%>
