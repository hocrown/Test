<%@ page language="java" contentType="text/html; charset=UTF-8" 
	%>


<%@ include file="header.jsp" %> 
 
<style>
.indexBoard{
position: relative; 
left: 480px; 
background-color: #eeeeee; 
text-align: left; 
border: 1px solid #dddddd; 
border-radius: 2em;
width:700px;
height:400px;

}
.content{
position:relative;
top:5%;
left:5%;
word-break:break-all;

}


</style>


<!--   형태,의미,순서-->


			<div class=sideMenu style="position: fixed; right: 30px;">		
				<div><td colspan= "2" ><input type=button onClick="location.href='./board/boardWrite'" value="문진글 작성하기"></div>
						
				<div><input type=button value="증상별"><input type=button value="펫종류별"></div>
				<div><input type=button value="피부염"><input type=button value="기침"></div>
				<div><input type=button value="설사"><input type=button value="건강검진"></div>
				<div><input type=button value="구토"><input type=button value="결막염"></div>
				<div><input type=button value="중성화"><input type=button value="치주염"></div>
				<div><input type=button value="외상"><input type=button value="외이염"></div>
			</div>
						
			<div class=indexBoard>
			<div class=content>
				<div>제목</div>
				<div>제목 불러오는 코드 예시 -> %=bbs.getBbsTitle()</div>
				<div>내용</div>
				<div>bbs.getBbsContent()</div>
				<div>작성자 : %=bbs.getUserID()</div>
				<div>작성일자 : %= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시" + bbs.getBbsDate().substring(14, 16) + "분"</div>	
			</div>
			</div><br><br>
			
			<div class=indexBoard>
			<div class=content>
				<div>제목</div>
				<div>제목 불러오는 코드 예시 -> %=bbs.getBbsTitle()</div>
				<div>내용</div>
				<div>bbs.getBbsContent()</div>
				<div>작성자 : %=bbs.getUserID()</div>
				<div>작성일자 : %= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시" + bbs.getBbsDate().substring(14, 16) + "분"</div>	
			</div>
			</div><br><br>
			<div class=indexBoard>
			<div class=content>
				<div>제목</div>
				<div>제목 불러오는 코드 예시 -> %=bbs.getBbsTitle()</div>
				<div>내용</div>
				<div>bbs.getBbsContent()</div>
				<div>작성자 : %=bbs.getUserID()</div>
				<div>작성일자 : %= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시" + bbs.getBbsDate().substring(14, 16) + "분"</div>	
			</div>
			</div><br><br>9
			
			
			
		
			
			
				
							
		
	
	
	
	

<%@ include file="footer.jsp" %>    