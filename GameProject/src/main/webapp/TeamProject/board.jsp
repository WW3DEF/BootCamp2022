<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<link rel="stylesheet" href="TeamProject/css/header.css">
<link rel="stylesheet" href="TeamProject/css/board.css">
<title>�Խ���</title>
</head>
<body>
	<div id="header">
	  <a href="MainPage.sign"><img src="TeamProject/css/image/Alogo.png" width=70px height=70px></a><h2>| Board</h2>
	</div>
	<div class="container">
	<table class="table table-hover">
		<caption id="bgcaption"><h1>�Խ���</h1></caption>
		<caption id="smcaption"><a href="boardmodify.bmd"><button id="btnwrite">�Խñ� �ۼ�</button></a></caption>
		<caption>
			<div class="d-flex justify-content-center">
				<nav aria-label="Page navigation example">
				  <ul class="pagination">
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
			</div>
		</caption>
		<thead>
			<tr>
				<th>��ȣ</th>
				<th>����</th>
				<th>�۾���</th>
				<th>�ۼ���</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>����</td>
				<td>����</td>
				<td>����</td>
				<td>����</td>
			</tr>
			<tr>
				<td>����</td>
				<td>����</td>
				<td>����</td>
				<td>����</td>
			</tr>
			<tr>
				<td>����</td>
				<td>����</td>
				<td>����</td>
				<td>����</td>
			</tr>
		</tbody>
	</table>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>