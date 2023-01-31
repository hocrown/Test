<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <header class="sing-header">
        <i class="fas fa-user-plus"></i>
        <h1 class="sing-header__title">회원가입</h1>
    </header>
    <form class="sing-form">
        이름 <input type="text" placeholder="이름 입력"/>
        아이디 <input type="text" placeholder="아이디 입력"/>
        <input type="button" value="중복확인"/>
        비밀번호 <input type="text" placeholder="비밀번호 입력"/>
        비밀번호 재확인 <input type="text" placeholder="비밀번호 재확인 입력"/>
        닉네임 <input type="text" placeholder="닉네임 입력"/>
        주소 <input type="text" placeholder="주소 입력"/>
        번호 <input type="text" placeholder="번호 입력"/>
        Email <input type="text" placeholder="Email 입력"/>
        <input type="button" value="본인인증"/>
        인증번호 <input type="text" placeholder="인증번호 입력"/>
        <input type="button" value="인증확인"/>
    </form>
   
    <form class="btn-bar">
    <input type="button" value="회원가입"/>
    <input type="button" value="취소"/>
    </form>
       
    <script
      src="https://kit.fontawesome.com/6478f529f2.js"
      crossorigin="anonymous"></script>
</body>
</html>