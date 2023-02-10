<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>


<style>

   .full{
    width: 1200px;  
}
.screen1{
    position:absolute; 
  top:15%; 
  left:16%; 
  width:20%;  
}

.screen2{
     position:absolute; 
  top:15%; 
  left:30%; 
  width:60%;
} 
.screen3{
   position:absolute; 
  top:100%; 
   
  width:100%;
}  
.commentContent{
  width        : 100px;     /* 너비는 변경될수 있습니다. */
  text-overflow: ellipsis;  /* 위에 설정한 100px 보다 길면 말줄임표처럼 표시합니다. */
  white-space  : nowrap;    /* 줄바꿈을 하지 않습니다. */
  overflow     : hidden;    /* 내용이 길면 감춤니다 */
  display      : block;     /* ie6이상 현재요소를 블럭처리합니다. */
}

</style>

<body>
	<div class="full">
		<div class="screen1">
			<%@ include file="mypageMenu.jsp"%>	
		</div>
		<div class="screen2"> 
		
			<div class = "admininfo">
				<div>
					<div><h1>상담내역</h1></div>
					<div class="class2">
			        </div>
		        </div>
				<table class="table table-sm " >
				<thead>
				    <tr>
						<th scope="col">상담글 번호</th>
						<th scope="col">내용</th>
						<th scope="col">등록일</th>
						<th scope="col">받은 좋아요 수</th>
				    </tr>
			    </thead>
			    <c:forEach var="comment" items="${commentList}">
			  		<tbody>
					    <tr>
				    		<td scope="row">${comment.consultingId}</td>
						    <td id="commentContent" class="commentContent">
						    <c:url var="viewLink" value="/consult/view/mypage/${comment.consultingId}"/>
						    <a href="${viewLink}">${comment.commentContent}</a></td>
						    <td><fmt:formatDate value="${comment.commentDate}" pattern="YYYY-MM-dd"/></td>
							<td>${comment.commentLike}</td>
					    </tr>
					 </tbody>
				</c:forEach> 
				</table>
			</div>
	    </div>
	</div>
	<div class="screen3"> 
	    <%@ include file="../footer.jsp"%>
	    </div>
	
</body>










