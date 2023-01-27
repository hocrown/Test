<%@ page language="java" contentType="text/html; charset=UTF-8" 
	%>


<%@ include file="header.jsp" %> 
 
<style>
		table {
		
    margin-left:30%; 
   
    
}	
	</style>



<!--   형태,의미,순서-->

<table style="float : right; ">
						<tr>
							<td colspan= "2" ><input type=button onClick="location.href='./board/boardWrite'" value="문진글 작성하기"></td>
						</tr>
						</table>
						
						
						<br><br>
				<table class="table table-striped" style="background-color: #eeeeee; text-align: cneter; border: 1px solid #dddddd; float : right; ">
					<thead>
		
						
					</thead>
					<tbody>
					
						<tr>
							<td><input type=button value="증상별"></td><td><input type=button value="펫종류별"></td>
						</tr>
						<tr>
							<td><input type=button value="피부염"></td><td><input type=button value="기침"></td>
						</tr>
						<tr>
							<td><input type=button value="설사"></td><td><input type=button value="건강검진"></td>
						</tr>
						<tr>
							<td><input type=button value="구토"></td><td><input type=button value="결막염"></td>
						</tr>
						<tr>
							<td><input type=button value="중성화"></td><td><input type=button value="치주염"></td>
						</tr>
						<tr>
							<td><input type=button value="외상"></td><td><input type=button value="외이염"></td>
						</tr>
						
						
						
					</tbody>
				</table>
						
		

	
				<table class="table table-striped" style="background-color: #eeeeee; text-align: center; border: 1px solid #dddddd; width:700px">
					<thead>
					<!--  -->
						
					</thead>
					<tbody>
					<!--  -->
						<tr>
							<td style="text-align: left;">제목</td>
						
						</tr>
						<tr>
						
							<td style="text-align: left;"> 제목 불러오는 코드 예시 -> %=bbs.getBbsTitle()  </td>					
						</tr>
						<tr>
							<td style="text-align: left;">내용</td>
										
						</tr>
						<tr>
							
							<td  style="min-height: 200px; text-align: left;"> bbs.getBbsContent()</td>					
						</tr>
						<tr>
							
							<td  style= "text-align: right;" > 작성자 : %=bbs.getUserID() </td>					
						</tr>
						<tr>
							
							<td  style= "text-align: right;"> 작성일자 : %= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시" + bbs.getBbsDate().substring(14, 16) + "분" </td>					
						</tr>
						
					</tbody>
				</table>
							
		
		<br><br>
		
				<table class="table table-striped" style="background-color: #eeeeee; text-align: center; border: 1px solid #dddddd; width:700px">
					<thead>
					<!--  -->
						
					</thead>
					<tbody>
					<!--  -->
						<tr>
							<td style="text-align: left;">제목</td>
						
						</tr>
						<tr>
						
							<td style="text-align: left;"> 제목 불러오는 코드 예시 -> %=bbs.getBbsTitle()  </td>					
						</tr>
						<tr>
							<td style="text-align: left;">내용</td>
										
						</tr>
						<tr>
							
							<td  style="min-height: 200px; text-align: left;"> bbs.getBbsContent()</td>					
						</tr>
						<tr>
							
							<td  style= "text-align: right;" > 작성자 : %=bbs.getUserID() </td>					
						</tr>
						<tr>
							
							<td  style= "text-align: right;"> 작성일자 : %= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시" + bbs.getBbsDate().substring(14, 16) + "분" </td>					
						</tr>
						
					</tbody>
				</table>
							
-->	
	
	
	

<%@ include file="footer.jsp" %>    