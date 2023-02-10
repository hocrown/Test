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
			<%@ include file="mypageMenu.jsp"%>	
		</div>
		<div class="screen2"> 
		
			<div class = "admininfo">
				<div>
					<div><h1>상담내역</h1></div>
					<div class="class2">
						<button class="btn btn-outline-success" type="submit" style="width: 135px" onClick="location.href='/consult/writeform'">등록하기</button>
			        </div>
		        </div>
				<table class="table table-sm " >
				<thead>
				    <tr>
						<th scope="col">글번호</th>
						<th scope="col">제목</th>
						<th scope="col">등록일</th>
						<th scope="col">분야</th>
				    </tr>
			    </thead>
			    <c:forEach var="consult" items="${consultList}">
			  		<tbody>
					    <tr>
				    		<td scope="row">${consult.consultingId}</td>
						    <td>
								<c:url var="viewLink" value="/consult/view/mypage/${consult.consultingId}"/>
													<a href="${viewLink}">${consult.consultTitle}</a>
							</td>
						    <td><fmt:formatDate value="${consult.consultRegDate}" pattern="YYYY-MM-dd"/></td>
							<td>${consult.consultClass}</td>
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










