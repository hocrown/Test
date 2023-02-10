<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>


<style>
.admininfo{
    position:absolute; 
  top:15%; 
  left:30%; 
  width:50%;
  }
.class2{
    width: 300px;
    float: right;
}
.screen1{
     position:absolute; 
  top:15%; 
  left:16%; 
  width:20%;
     
}
.screen1-1{
    width: 200px;
   
}
.screen2{
    width: 800px;
    height:700px;  
    margin-left:600px;
   
} 
.screen2-1{
    width: 700px;
    height:700px;
    float: left;
   
} 
  </style>


	<body>
		<div class = "full">
		<div class = "screen1">
			<%@ include file="adminMenu.jsp"%>
		</div>
			<div class = "screen2">
				<div class = "admininfo">
					<div>
						<div><h1>병원정보</h1></div>
						<div class="class2"></div>	 					        
				    </div>
				<table class="table table-sm " >					 
				    <thead>				
					    <tr>
					      <th scope="col">no.</th>
					      <th scope="col">Address</th>
					      <th scope="col">Time</th>
					      <th scope="col">Name</th>
					      <th scope="col">phone</th>
					    </tr>
				    </thead>
				    <c:forEach var="hospital" items="${hospitalList}">
					  <tbody>
					    <tr>
					      <th><a href="/admin/adminHospitalInfo/${hospital.hospitalId}">${hospital.hospitalId}</a></th>              
					      <td>${hospital.hospitalAddress}</td>
					      <td>${hospital.hospitalTime}</td>              
					      <td>${hospital.hospitalName}</td>
					      <td>0${hospital.hospitalPhone}</td>
					    </tr>
					  </tbody>
					</c:forEach>	  
			    </table>				
				</div>
		    </div>
		</div>
	</body>


