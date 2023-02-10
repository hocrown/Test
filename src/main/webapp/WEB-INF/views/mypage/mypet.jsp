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

</style>

<body>
	<div class="full">
		<div class="screen1">
			<%@ include file="mypageMenu.jsp"%>	
		</div>
		<div class="screen2"> 
			<div class = "admininfo">
				<div>
					
					<div class="class2">
						<div><h1>반려동물정보</h1></div>
				 		<form class="d-flex" role="search">				          
				          <button class="btn btn-outline-success" type="button" style="width: 135px" onClick="location.href='/mypage/mypetWrite'">등록하기</button>
			       		</form>
			        </div>
			    </div>
				<table class="table table-sm " >
					<thead>
					    <tr>
					      <th scope="col">no.</th>
					      <th scope="col">이름(애칭)</th>
					      <th scope="col">견종,묘종,기타</th>
					      <th scope="col">생일</th>
					      <th scope="col">성별</th>
					    </tr>
					</thead>
					
					<c:forEach var="pet" items="${petList}">
						<tbody>
						    <tr>
						      <th scope="row">${pet.rnum}</th>
						      <td><a href="/mypage/mypetInfo/${sessionScope.userNo}/${pet.petNo}">${pet.petName}</a></td>     
						      <td>${pet.petSpecies}</td>
						      <td>${pet.petFamilyDate}</td>              
						      <td>${pet.petSex}</td>
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










