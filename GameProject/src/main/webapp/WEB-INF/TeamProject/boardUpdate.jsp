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
	<h1 class="ins" id="insInfo">�Խ��� > �۾���</h1><h3 id="nickname" class="ins">�г��� : <span id="vwName">������������</span></h3>
	<div id="insertForm" class="ins">
		<input type="text" placeholder="����" name="btitle" class="input" id="intitle">
		<hr>
		<input type="text" placeholder="����" name="btag" class="input" id="intag">
		<button class="btn" id="write">�ۼ�</button>
		<button class="btn" id="cancel">���</button>
	</div>
</body>
</html>