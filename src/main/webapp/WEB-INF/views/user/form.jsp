<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/member" />

<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/include/staticFiles.jsp" />
<body>

	<jsp:include page="/WEB-INF/views/include/bodyHeader.jsp" />
	<div class="container">
		<div class="pg-opt">
			<div class="row">
				<div class="col-md-6 pc">
					<h2>
						<fmt:message key="INSERT_USER_INFO" />
					</h2>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb">
						<li><fmt:message key="INSERT_USER_INFO" /></li>
						<li class="active"><fmt:message key="INSERT_USER_INFO"/></li>
					</ol>
				</div>
			</div>
		</div>

		<div class="content">
			<form
				action="<c:url value='/user/insert.do'/>" method="post"
		id="joinForm" class="form-horizontal">
		
		<div class="form-group">
		<label class="control-label col-sm-2" for="userId">아이디</label>
		
		<div class="col-sm-4">
		<input type="text" name="userId" id="userId"
		value="${usermodel['userId']}" ${empty usermodel.userId ? "" : "readonly"}
		title="<fmt:message key='USERID_TITLE'/>" pattern="\w+" class="form-control"
		placeholder="사용자 아이디 " required>
		
		</div>
		<button type="button" >중복확인</button>
	</div>
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="userPw">비밀번호</label>
		<div class="col-sm-4">
		<input type="password" name="userPw" id="userPw"
		value="${usermodel.userPw}" class="form-control" title="<fmt:message
		key='PASSWOED_TITLE'/>" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"
		placeholder="사용자 비밀번호" required>
		</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="password_re"><fmt:message
			key="MEMBER_PW_RE"/></label>
			<div class="col-sm-4">
			<input type="password" name="password_re" id="password_re"
			class="form-control" title="<fmt:message key='PASSWORD_RE_TITLE'/>"
			pattern="(?=.*\d)(?=.*[a-z])(?=*[A-Z]).{6,}" placeholder="비밀번호 재확인" required>
			</div>
		</div>
	
		<div class="form-group">
		<label class="control-label col-sm-2" for="userName"><fmt:message
		key="MEMBER_NAME"/></label>
		<div class="col-sm-4">
		<input type="text" name="userName" id="userName" value="${usermodel.userName}"
		class="form-control" placeholder="사용자 이름" required>
		</div>
		</div>
		
		<div class="form-group">
		<label class="control-label col-sm-2" for="userNickname">닉네임</label>	
		<div class="col-sm-4">
		<input type="text" name="userNickname" id="userNickname" value="${usermodel.userName}"
		class="form-control" placeholder="닉네임입력" required>
		</div>
		<input type="submit" class="btn btn-info-lg" value="중복확인">
		</div>
		
		<div class="form-group">
		<label class="control-label col-sm-2" for="userPhone">전화번호</label>
		<div class="col-sm-4">
		<input type="text" name="userPhone" id="userPhone" value="${usermodel.userPhone}"
		class="form-control" placeholder="사용자 전화번호"  required>
		</div>
		</div>
		
		<div class="form-group">
		<label class="control-label col-sm-2" for="userPostNum">우편주소</label>
		<div class="col-sm-4">
  		<input type="text" id="userPostNum" name="userPostNum" placeholder="우편주소"
  		 value="${usermodel.userPostNum}" readonly onclick="findAddr()" class="form-control">
	  	
	  	<input id="userAddress" name="userAddress" type="text" placeholder="도로명주소"
	  	value="${usermodel.userAddress}" readonly class="form-control"> <br>
	  	</div>
	  	</div>
	  
	  	<div class="form-group">
	  	<label class="control-label col-sm-2" for="userAddress">상세주소</label>
	  	<div class="col-sm-4">
	  	<input type="text" id="userDetailAddress" name="userDetailAddress" placeholder="상세주소"
	  	value="${usermodel.userDetailAddress}" class="form-control">
		</div>
		</div>
		
		<div class="form-group">
		<div class="col-sm-offset-2 col-sm-8">
		<input type="submit" class="btn btn-info" value="<fmt:message
		key="SAVE"/>">
			<input type="reset" class="btn btn-info" value="<fmt:message
		key="CANCEL"/>">		
		</div>
		</div>
	</form>
	</div>
	</div>
	
	<jsp:include page="../footer.jsp"/>
	
	<script>
	function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('userPostNum').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("userAddress").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("userAddress").value = jibunAddr;
            }
        }
    }).open();
}
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>
