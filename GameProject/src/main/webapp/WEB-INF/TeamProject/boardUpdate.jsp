<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/boardForm.css">
<meta charset="EUC-KR">
<title>Board Write</title>
</head>
<body>
	<div id="header">
	  <a href="MainPage.sign"><img src="resources/css/image/Alogo.png" width=70px height=70px></a><h2>| Board</h2>
	</div>
	<h1 class="ins" id="insInfo">게시판 > 글쓰기</h1><h3 id="nickname" class="ins">닉네임 : <span id="vwName">ㅇㅁㄴㅇㄹㄴ</span></h3>
	<div id="insertForm" class="ins">
		<input type="text" placeholder="제목" name="btitle" class="input" id="intitle">
		<hr>
		<input type="text" placeholder="내용" name="btag" class="input" id="intag">
		<button class="btn" id="write">작성</button>
		<button class="btn" id="cancel">취소</button>
	</div>
</body>
</html>