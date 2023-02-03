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
	<div  class = "full">
		<div class="screen1">
			<%@ include file="../service/serviceMenu.jsp"%>
		</div>
		
		<div class="screen2"> 
		<div class="boardWriteForm" style= "align: center; text-align: center; boarder: 1px solid #dddddd">
			<h1>글 작성</h1>
			<form action="<c:url value='/board/write'/>" method="post" enctype="multipart/form-data" class="form-horizontal">
<%-- 				<c:if test="${!empty menuId}"> --%>
<!-- 					<div class="form-group"> -->
<%-- 						<label class="control-label col-sm-2" for="name"><fmt:message key="MENU"/></label> --%>
<!-- 						<div class="col-sm-4"> -->
<!-- 							<select name="menuId" id="menuId" class="form-control" required> -->
<%-- 								<c:forEach var="menu" items="${menuList}"> --%>
<%-- 									<option value="${menu.menuId}" ${menu.menuId eq requestScope.menuId ? "selected" : ""}>${menu.menuName}</option> --%>
<%-- 								</c:forEach> --%>
<!-- 							</select> -->
<!-- 						</div> -->
<!-- 					</div> -->
<%-- 				</c:if> --%>
				
				<div class="form-group">
					<label for="menuId">카테고리</label>
					<div class="col-sm-2">					
						<c:choose>
							<c:when test="${menuId eq 1}">
								<c:set var="menuId" value="1"/>
								<input type="text" value="공지사항" maxlength="50" style= "width:700px " readonly>
							</c:when>
							<c:when test="${menuId eq 2}">
								<c:set var="menuId" value="2"/>
								<input type="text" value="Q&A" maxlength="50" style= "width:700px " readonly>
							</c:when>
						</c:choose>
					</div>
				</div>
				
				<div class="form-group">
					<label for="userId">작성자</label>
					<div class="col-sm-2">
						<input type="text" name="userId" id="userId" value="${sessionScope.userId}" ${!empty sessionScope.userId ? "readonly" : ""} maxlength="50" style= "width:700px " class="form-control">
					</div>
				</div>
				
				<div>
					<label for="boardTitle">제목</label>
					<div>
						<input type="text" placeholder="글 제목" name="boardTitle" id="boardTitle" maxlength="50" style= "width:700px" id="boardTitle" class="form-control" value="${board.boardTitle}" required>
					</div>
				</div>
				<div>
					<label for="boardContent">내용</label>
					<div>
						<textarea placeholder="글 내용" name="boardContent" rows="10" cols="100" maxlength="500" style= "height:350px; width:700px" class="form-control" style="height:350px; width:700px">${board.boardContent}</textarea>							
					</div>
				</div>
				<div>
					<label for="photo">첨부파일</label>
					<div>
						<input type="file" class="form-control" name="boardFile" id="boardFile" ><span id="droparea" class="help-block"><fmt:message key="FILESIZE_ERROR"/></span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<input type="hidden" name="boardId" value="${board.boardId}">
						<input type="hidden" name="masterId" value="${board.masterId}">
						<input type="hidden" name="replyNum" value="${board.replyNum}">
						<input type="hidden" name="menuId" value="${menuId}">
						<input type="submit" id="submit" class="btn btn-primary" value="등록하기">
						<c:if test="${userId eq 'adminId'}">
							<input type="button" onClick="location.href='/board/menu/1/1'" class="btn btn-primary" value="취소">						
						</c:if>
						<c:if test="${userId ne 'adminId'}">
							<input type="button" onClick="location.href='/board/menu/2/1'" class="btn btn-primary" value="취소">						
						</c:if>					
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- <div class="screen3">  -->
<%-- 	    <%@ include file="footer.jsp"%> --%>
<!-- </div> -->
</body>


