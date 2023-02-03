<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<style>
  .admininfo{
    position:absolute; 
    top:10%; 
    left:20%; 
    width:70%;
  }

.full{
     width: 1200px;
   
}
.screen1{
    width: 400px;
    float: left;
}
.screen2{
    width: 800px;
    height:400px;
    float: left;
} 
.screen2-1{
    width: 800px;
    height:400px;
    float: right;
} 
.screen3{
    width: 100%;
    height:100px;
    float: left;
}  
.btn-admin {

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

.form-labell {
  padding-top: calc(0.375rem + 1px);
  padding-bottom: calc(0.375rem + 1px);
  margin-bottom: 0;
  font-size: inherit;
  line-height: 1.5;
  font-weight:bold;
}
</style>

<body>
	<div class="full">
		<div class="screen1">
			<%@ include file="../service/serviceMenu.jsp"%>
		</div>
		<div class="screen2">
			<div class="colmenu">
				<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<div class="mb-1 text-muted">제목: ${board.boardTitle}</div> 
						<div class="mb-1 text-muted">작성자: ${board.userId}</div> 
			        	<div class="mb-1 text-muted">작성일: <fmt:formatDate value="${board.boardDate}" pattern="YYYY-MM-dd HH:mm:ss" /></div>
						<br>
						<p class="card-text mb-auto">${board.boardContent}</p>
						<br>
						<c:if test="${!empty board.fileName}">
							<tr>
								<div class="mb-1 text-muted">첨부파일</div>
								<td>
									<c:set var="len" value="${fn:length(board.fileName)}"/>
									<c:set var="filetype" value="${fn:toUpperCase(fn:substring(board.fileName, len-4, len))}"/>
									<c:if test="${(filetype eq '.JPG') or (filetype eq 'JPEG') or (filetype eq '.PNG') or (filetype eq '.GIF')}"><img src='<c:url value="/file/${board.fileId}"/>' class="img-thumbnail"><br></c:if>
									<a href='<c:url value="/file/${board.fileId}"/>'>${board.fileName}(<fmt:formatNumber>${board.fileSize}</fmt:formatNumber>byte)</a>
								</td>
							</tr>
						</c:if>
					</div>
				</div>
			</div>
			<tr>
				<td colspan=2 align="right">
					<a href='<c:url value="/board/menu/${menuId}/${page}"/>'><button type="button" class="btn btn-primary">목록</button></a>
<%-- 						<a href='<c:url value="/board/write/${menuId}"/>'><button type="button" class="btn btn-primary"><fmt:message key="WRITE_NEW_BOARD"/></button></a> --%>
					
					<c:choose>
						<c:when test="${menuId eq 1}">
							<c:if test="${userId eq 'adminId'}">
								<a href='<c:url value="/board/update/${menuId}/${board.boardId}"/>'><button type="button" class="btn btn-primary">수정</button></a>
								<a href='<c:url value="/board/delete/${board.boardId}"/>'><button type="button" class="btn btn-primary">삭제</button></a>			
							</c:if>
						</c:when>
						<c:when test="${menuId eq 2}">
							<c:choose>
								<c:when test="${userId eq 'adminId'}">
									<a href='<c:url value="/board/reply/${board.boardId}"/>'><button type="button" class="btn btn-primary">답글</button></a>
								</c:when>
								<c:when test="${userId eq sessionScope.userId}">
									<a href='<c:url value="/board/update/${menuId}/${board.boardId}"/>'><button type="button" class="btn btn-primary">수정</button></a>
								</c:when>
									<c:when test="${userId eq sessionScope.userId && userId ne 'adminId'}">
									<a href='<c:url value="/board/delete/${board.boardId}"/>'><button type="button" class="btn btn-primary">삭제</button></a>			
								</c:when>
							</c:choose>
						</c:when>
					</c:choose>
				</td>
			</tr>
		</div>
	</div>
<div class="screen3"> 
	<%@ include file="footer.jsp"%>
</div>
</body>