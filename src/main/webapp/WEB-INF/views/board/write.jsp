<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/board"/>
<!DOCTYPE html>
<html>
	<jsp:include page="/WEB-INF/views/include/staticFiles.jsp"/>
	<body>
		<jsp:include page="/WEB-INF/views/include/bodyHeader.jsp"/>
		<div class="container">
			<div class="pg-opt">
				<div class="row">
					<div class="col-md-6 pc">
						<h2><fmt:message key="WRITE_NEW_BOARD"/></h2>
					</div>
					<div class="col-md-6">
						<ol class="breadcrumb">
							<li><fmt:message key="BOARD"/></li>
							<li cass="active"><fmt:message key="WRITE_NEW_BOARD"/></li>
						</ol>
					</div>
				</div>
			</div>
			<div class="content">
			<form action="<c:url value='/board/write'/>" method="post" enctype="multipart/form-data" class="form-horizontal">
				<c:if test="${!empty menuId}">
					<div class="form-group">
						<label class="control-label col-sm-2" for="name"><fmt:message key="MENU"/></label>
						<div class="col-sm-4">
							<select name="menuId" id="menuId" class="form-control" required>
								<c:forEach var="menu" items="${menuList}">
									<option value="${menu.menuId}" ${menu.menuId eq requestScope.menuId ? "selected" : ""}>${menu.menuName}</option>
								</c:forEach>
							</select>
						</div>
					</div>
				</c:if>
				<div class="form-group">
					<label class="control-label col-sm-2" for="name"><fmt:message key="USERID"/></label>
					<div class="col-sm-2">
						<input type="text" name="userId" id="userId" value="${sessionScope.userId}" ${!empty sessionScope.userId ? "readonly" : ""} class="form-control">
					</div>
				</div>
<!-- 				<div class="form-group"> -->
<%-- 					<label class="control-label col-sm-2" for="password"><fmt:message key="PASSWORD"/></label> --%>
<!-- 					<div class="col-sm-2"> -->
<!-- 						<input type="password" name=""> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<div class="form-group">
					<label class="control-label col-sm-2" for="boardTitle"><fmt:message key="SUBJECT"/></label>
					<div class="col-sm-8">
						<input type="text" name="boardTitle" id="boardTitle" class="form-control" required>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="boardContent"><fmt:message key="CONTENT"/></label>
					<div class="col-sm-8">
						<textarea name="boardContent" rows="10" cols="100" class="form-control"></textarea>							
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="boardPhoto"><fmt:message key="FILE"/></label>
					<div class="col-sm-8">
						<input type="file" name="boardFile" id="boardFIle"><span id="droparea" class="help-block"><fmt:message key="FILESIZE_ERROR"/></span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<input type="hidden" name="boardId" value="${board.boardId}">
						<input type="hidden" name="masterId" value="${board.masterId}">
						<input type="hidden" name="replyNum" value="${board.replyNum}">
						<input type="submit" id="submit" class="btn btn-info" value="<fmt:message key="SAVE"/>">
						<input type="reset" class="btn btn-info" value="<fmt:message key="CANCLE"/>">						
					</div>
				</div>
			</form>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	</body>
</html>