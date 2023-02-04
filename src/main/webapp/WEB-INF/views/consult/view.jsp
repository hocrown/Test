<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../header.jsp" %> 

<style>
.full{
    width: 1500px;
}
.screen1{	
    padding-left:400px;
    float: left;
}
.screen1-1{	
    width: 800px;
    float: left;
}
.screen2{
	padding-left:40px;
    width: 250px;    
    float: left;
} 
.screen3{
    width: 100%;
    height:100px;
    float: left;
}  


.screen2-1 {
  padding: 1.5rem !important;
  margin-bottom: 1rem !important;
  background-color: #f8f9fa !important;
  border-radius: 0.2rem !important;
}
.tbody{
text-align: center;
}

@media (prefers-reduced-motion: reduce) {
  .bt {
    transition: none;
  
}
}

.tablebtn {
  width:80px;
  margin-bottom: 0 !important;
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

</style>


					 
					 	
<div class="full"  >
	<div class="screen1">				
		<div class="screen1-1">
			<c:forEach var="consult" items="${consultList}">
		    	<div class="colmenu">
		    		<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
		        		<div class="col p-4 d-flex flex-column position-static" style=" cursor: pointer;" onclick="location.href='/consult/view/${consult.consultingId}';">
		        			<strong class="d-inline-block mb-2 text-primary">강아지</strong>
		         			<h3 class="mb-0">${consult.consultTitle}</h3>
		           			<div class="mb-1 text-muted">${consult.consultRegDate}</div> 
		        			<p class="card-text mb-auto">${consult.consultContent}</p>
		        		</div>
		      		</div>
		    	</div>
   			</c:forEach>
   			
   			<c:forEach var="comment" items="${commentList}">
		    	<div class="colmenu">
		    		<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
		        		<div class="col p-4 d-flex flex-column position-static">
		        			<strong class="d-inline-block mb-2 text-primary">강아지</strong>
		           			<div class="mb-1 text-muted">${comment.commentDate}</div> 
		        			<p class="card-text mb-auto">${comment.commentContent}</p>
		        		</div>
		      		</div>
		    	</div>
			</c:forEach>
		</div>
		<div class="screen2">
	  		<div class="Screen2-1">
			 	<div>		         
				    <div>			    
						<table>
						    <tbody class="tbody">
						    <tr>
						   		<td colspan="2"><p class="mb-0"><input type=button class="btn btn-primary" onClick="location.href='./consult/writeform'" value="문진글 작성하기"></p>	<td>
							</tr>
						    <tr>
						   		<th>증상별</th>
						   		<th>펫종류별</th>
							</tr>
							<tr>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="피부염"></p></td>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="강아지"></p></td>
							</tr>
							<tr>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="설사"></p></td>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="고양이"></p></td>
							</tr>
							<tr>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="외이염"></p></td>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="파충류"></p></td>
							</tr>
							<tr>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="구토"></p></td>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="설치류"></p></td>
							</tr>
							<tr>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="치주염"></p></td>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="조류"></p></td>
							</tr>
							<tr>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="중성화"></p></td>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="토끼"></p></td>
							</tr>
							<tr>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="외상"></p></td>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="어류"></p></td>
							</tr>
							<tr>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="기침"></p></td>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="고슴도치"></p></td>
							</tr>
							<tr>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="건강검진"></p></td>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="거미"></p></td>
							</tr>
							<tr>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="결막염"></p></td>
							    <td><p class="mb-0"><input type=button class="btn btn-outline-primary" value="기타"></p></td>
							</tr>
							
								
							  </tbody>			           
					    </table>		          
					</div>		
				</div>
		  </div>
	   </div>	     	     
	</div>           
</div>     
<div class="screen3">
	<%@ include file="../footer.jsp" %>   
</div>