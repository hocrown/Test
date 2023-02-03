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
		<c:choose>
			<c:when test="${sessionScope.userId eq 'adminId'}">
				<%@ include file="../admin/adminMenu.jsp"%>
			</c:when>
			<c:otherwise>
				<%@ include file="../service/serviceMenu.jsp"%>	
			</c:otherwise>
		</c:choose>
		</div>
		<div class="screen2">
			<div class="colmenu">
				<br>
				<h4>글 삭제</h4>
				<br>
				<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<br>
						<div class="mb-1 text-muted">해당 글을 삭제하시겠습니까?</div>
						<br>
					</div>
				</div>
			</div>
			<form action='<c:url value="/board/delete"/>' class="form-inline" method="post">
					<input type="hidden" name="boardId" value="${boardId}">
					<input type="hidden" name="replyNum" value="${replyNum}">
					<input type="hidden" name="menuId" value="${menuId}">
					<div class="form-group">
						<div class="col-sm-2">
							<input type="button" onClick="location.href='/board/menu/${menuId}/${page}'" class="btn btn-primary" value="목록">
							<input type="submit" class="btn btn-primary" value="삭제">
						</div>
					</div>
			</form>
		</div>
	</div>
<div class="screen3"> 
	<%@ include file="../footer.jsp"%>
</div>
</body>