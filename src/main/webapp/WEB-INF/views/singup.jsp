<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
    font-family:'Open Sans', sans-serif;
}

.sing-header{
    margin-top: 200px;
    margin-bottom: 100px;
    text-align: center;
    font-size: 10px;
    flex-direction: column;
    align-items: center;
}

.sing-form{
    display: flex;
    flex-direction: column;
    margin: 0px 30px;
    width:300px;     
    font-size:5px;
}
.sing-form input{
padding: 20px 0px;
  border: none;
 /*  border-bottom:2px solid rgba(0,0,0,0.2); */
  padding: 10px 0px;
  font-size: 15px;
  margin-bottom: 5px;
}

.sing-form input::placeholder{
	font-size:6px;
}
.sing-form input[type="button"]{
	padding:5px;	
}
.sing-form input:not([type="submit"]){
	border-bottom:2px solid rgba(0,0,0,0.2);
}
.sing-form input[type="button"]{
	margin-top:10px;
	padding:8px;
	border-radius:5px;
	background-color: orange;
	font-size:5px;
}
  
</style>
<meta charset="UTF-8">
 <link rel="stylesheet" href="sryle.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
</head>
<body>
    <header class="sing-header">
        <h1 class="sing-header__title">회원가입</h1>
    </header>
    <form class="sing-form"  >
       	이름 <input type="text" placeholder="이름 입력"/>
        아이디 <input type="text" placeholder="아이디 입력"/>
        비밀번호 <input type="text" placeholder="비밀번호 입력"/>
        비밀번호 재확인 <input type="text" placeholder="비밀번호 재확인 입력"/>
        닉네임 <input type="text" placeholder="닉네임 입력"/>
        주소 <input type="text" placeholder="주소 입력"/>
        번호 <input type="text" placeholder="번호 입력"/>
        Email <input type="text" placeholder="Email 입력"/>
        인증번호 <input type="text" placeholder="인증번호 입력"/>
    	<input type="button" value="회원가입"/>     
    </form>
   
    <form class="btn-bar">
    </form>
       
    <script
      src="https://kit.fontawesome.com/6478f529f2.js"
      crossorigin="anonymous"></script>
</body>
</html>
</body>
</html>