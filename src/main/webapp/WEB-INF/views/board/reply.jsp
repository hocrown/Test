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
					<h2><fmt:message key="REPLY_BOARD"/></h2>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb">
						<li><fmt:message key="BOARD" /></li>
						<li class="active"><fmt:message key="REPLY_BOARD"/></li>
					</ol>
				</div>
			</div>
		</div>
		<div class="content">
			<form action="<c:url value='/board/reply'/>" method="post" enctype="multipart/form-data" class="form-horizontal">
				<div class="form-group">
					<label class="control-label col-sm-2" for="userId"><fmt:message key="WRITER"/></label>
					<div class="col-sm-2">
						<input type="text" name="userId" id="userId" value="${sessionScope.userId}" ${!empty sessionScope.userId ? "readonly" : "" } class="form-control" required>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="boardTitle"><fmt:message key="TITLE"/></label>
					<div class="col-sm-8">
						<input type="text" name="boardTitle" id="boardTitle" class="form-control" value="${board.boardTitle}" required>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="boardContent"><fmt:message key="CONTENT"/></label>
					<div class="col-sm-8">
						<textarea name="boardContent" rows="10" cols="100" class="form-control">${board.boardContent}</textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="photo"><fmt:message key="FILE"/></label>
					<div class="col-sm-8">
						<input type="file" id="i_file" name="file">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<input type="hidden" name="boardId" value="${board.boardId}">
						<input type="hidden" name="menuId" value="${board.menuId}">
						<input type="hidden" name="masterId" value="${board.masterId}">
						<input type="hidden" name="replyNum" value="${board.replyNum}">
						<input type="submit" id="i_submit" class="btn btn-info" value="<fmt:message key="REPLY"/>">
						<input type="reset" class="btn btn-info" value="<fmt:message key="CANCEL"/>">
					</div>
				</div>
			</form>
		</div>
		</div>
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	</body>
</html>