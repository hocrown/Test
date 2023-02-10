<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../header.jsp" %> 
 
<style>
.full{
    width: 1500px;
}
.screen1{	
    padding-left:500px;
    float: left;
}
.screen1-1{	
    width: 800px;
    float: left;
}

.screen3{
    width: 100%;
    height:100px;
    float: left;
}  
.choose1{
  
}  
.choose{
  
   
} 
.choose1-1{
	
	 
}
.choose1-2{
	
}
.choose1-3{
	
}
.choose1-4{
padding-top:100px;
	 
}

. {
  padding-top: calc(0.375rem + 1px);
  padding-bottom: calc(0.375rem + 1px);
  margin-bottom: 0;
  font-size: inherit;
  line-height: 1.5;
}
</style>

<div class="full"  >
	<div class="screen1">				
		<div class= "consultWriteForm"  style= "align: center; text-align: center; boarder: 1px solid #dddddd">
    	<div>문진글 작성</div>
    	<form action="<c:url value='/consult/write'/>" method="post" enctype="multipart/form-data" class="form-horizontal">
    		
	    		<div >제목</div>
		    	<div><input type="text"  placeholder="글 제목"  name="consultTitle" maxlength="500" style= "width:700px"/></div>
		    	
		    	
		    	<div class="choose1">
		    		
		    		<div class="choose1-1">
		    		<div class="choose">
		    		<div><label  class="">분류</label></div>
               		<input type="text" name="consultClass" list="consultClass" required>
                		<datalist id ="consultClass">
	               			<option value="피부과">
	                		<option value="내과">
	                		<option value="외과">
	                		<option value="이비인후과">
	                		<option value="치과">
	                		<option value="중성화관련">
	                		<option value="안과">
	                		<option value="건강검진">
                		</datalist>
               		</div>              
               		</div>
               		
               		<div class="choose1-2">
            		<div class="choose">
						<label  class="">반려동물</label>
              		</div>
              		</div>
              		
              		<div class="choose1-3">
             		<div class="pet-select">
						<ul class="responsive-table">
                      <li class="table-header">
                        <div class="col col-1">선택</div>
                         <div class="col col-2">이름</div>
                           <div class="col col-3">가족이 된 날짜</div>
                      </li>
                      <c:forEach items="${userPet}" var="pet">
                         <li class="table-row">
                           <div class="col col-1" data-label="선택"><input type="radio" class="petNo" name="petNo" value="${pet.petNo}"></div>
                            <div class="col col-2" data-label="${pet.petName}"><input type="hidden" name="petName" value="${pet.petName}">${pet.petName}</div>
                            <div class="col col-3" data-label="${pet.petFamilyDate}"><input type="hidden" name="petFamilyDate" value="${pet.petFamilyDate}">${pet.petFamilyDate}</div>
                        </li>
                     </c:forEach>
                     
                    </ul>
					</div>
   					</div>

   				<input type="text" id="petNo" value="">
    				
           		<div class="choose1-4">
	    		<div>내용</div>
	    		<div><textarea placeholder="글 내용"  name="consultContent" maxlength="5000" style= "height:350px; width:700px"></textarea></div>
	    		<div><input type="file" name="consultFile" id="consultFile"><span id="droparea" class="help-block"><fmt:message key="FILESIZE_ERROR"/></span>
	    		</div><br>
		    	<div><input type="submit" class="btn btn-info" value="등록하기" ></div><br>
    			<div><input type="button" onClick="location.href='../index'" value="홈으로" ></div>
    			</div>
				</form>
			</div> 	
		</div>    
			</div>         
	</div>     
	<div class="screen3">
	<%@ include file="../footer.jsp" %>   
	</div>