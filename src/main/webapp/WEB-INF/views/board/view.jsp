<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
						<h2><fmt:message key="CONTENT"/></h2>
					</div>
					<div class="col-md-6">
						<ol class="breadcrumb">
							<li><fmt:message key="BOARD" /></li>
							<li class="active"><fmt:message key="CONTENT"/></li>
						</ol>
					</div>
				</div>
			</div>	
			<div class="content">
				<table class="table table-bordered">
					<tr class="pc">
						<td colspan=2 align="right">
							<a href='<c:url value="/board/menu/${menuId}/${page}"/>'><button type="button" class="btn btn-info"><fmt:message key="BOARD_LIST"/></button></a>
							<a href='<c:url value="/board/write/${menuId}"/>'><button type="button" class="btn btn-info"><fmt:message key="WRITE_NEW_BOARD"/></button></a>
							<a href='<c:url value="/board/reply/${board.boardId}"/>'><button type="button" class="btn btn-info"><fmt:message key="REPLY"/></button></a>
							<a href='<c:url value="/board/update/${board.boardId}"/>'><button type="button" class="btn btn-info"><fmt:message key="UPDATE"/></button></a>
							<a href='<c:url value="/board/delete/${board.boardId}"/>'><button type="button" class="btn btn-info"><fmt:message key="DELETE"/></button></a>
						</td>
					</tr>
					<tr>
						<td width="20%"><fmt:message key="BOARD_ID"/></td>
						<td>${board.boardId}</td>
					</tr>
					<tr>
						<td width="20%"><fmt:message key="USER_ID"/></td>
						<td>${board.userId}</td>
					</tr>
					<tr>
						<td width="20%"><fmt:message key="BOARD_DATE"/></td>
						<td><fmt:formatDate value="${board.boardDate}" pattern="YYYY-MM-dd HH:mm:ss" /></td>
					</tr>
					<tr>
						<td><fmt:message key="SUBJECT"/></td>
						<td>${board.boardTitle}</td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>