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
.full{
    width: 1200px;
   
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
				<%@ include file="adminMenu.jsp"%>	
			</div>
			<div class="screen2"> 
				<div><h1>병원정보</h1></div>
				<table class="table table-sm " >
				  <tbody>				    
				    <tr>      
				     <th>Name</th>
				     <td>${hospital.hospitalName}</td>    
				    </tr>
				    <tr>      
				     <th>Address</th>
				     <td>${hospital.hospitalAddress}</td>    
				    </tr>			    
				    <tr>      
				     <th>phone</th>
				     <td>${hospital.hospitalPhone}</td>    
				    </tr>
				    <tr>      
				     <th>Time</th>
				     <td>${hospital.hospitalTime}</td>    
				    </tr>
				  </tbody>
				</table>
				<div> <button type="button" class="btn-admin" onClick="location.href='/admin/adminHospital'">병원관리 목록</button></div>
			</div>
		</div>
	</body>


