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
		
    <div class= "boardWriteForm"  style= "align: center; text-align: center; boarder: 1px solid #dddddd">
    	<div>Qna 작성</div>
    	<div >카테고리</div>
		    	<div><input type="text"  placeholder="글 제목"  name="title" maxlength="50" style= "width:700px " /></div>
		    	<div >작성자</div>
		    	<div><input type="text"  placeholder="글 제목"  name="title" maxlength="50" style= "width:700px " /></div>
	    	<div >제목</div>
		    	<div><input type="text"  placeholder="글 제목"  name="title" maxlength="50" style= "width:700px " /></div>
		    		<div>내용</div>
	    		<div><textarea type="text" placeholder="글 내용"  name="content" maxlength="500" style= "height:350px; width:700px" ></textarea></div>
    		<div><input  type="file" class="form-control" value="파일업로드" ></div><br>
    	<div><input type="submit" class="boardwrite" value="등록하기" ></div><br>
    	<div><input type="button" onClick="location.href='../index'" value="홈으로" ></div>
   </div> 	
    
	    </div>
	    
	    
	    
	</div>
	<div class="screen3"> 
	    <%@ include file="footer.jsp"%>
	    </div>
	
</body>










