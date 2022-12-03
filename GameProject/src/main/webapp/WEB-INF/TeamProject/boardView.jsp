<%@page import="java.util.ArrayList"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  
<%@page import="board.BoardDto"%>
<%@page import="board.BoardDao"%>
<%@page import="comments.CommentsDto"%>
<%@page import="comments.CommentsDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    int category = (int)session.getAttribute("category");
	
	String email = (String)session.getAttribute("email");

	CommentsDao dao = new CommentsDao();
	int bnum = Integer.parseInt(request.getParameter("bnum"));
	ArrayList<CommentsDto> dtos = dao.list(bnum);

	System.out.println(bnum);
	session.setAttribute("bnum", bnum);
    %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/boardForm.css">
<meta charset="UTF-8">
<title>Board View</title>
</head>
<body>
   <div id="header">
     <a href="MainPage.sign"><img src="resources/css/image/Alogo.png" width=70px height=70px></a><h2>| Board</h2>
   </div>
   <h1 class="ins" id="insInfo">${dto.btitle}</h1>
   <div id="insertForm" class="ins">
        <h2 id="btag">${dto.btag}</h3>
        <hr>
        <h3>작성자 : <span id="bwriter">${dto.bwriter}</span></h3>
        <h3 id="bdate">작성일 : ${dto.bdate} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 조회수 : ${dto.bview} </h3>
        <hr>
      <button onClick="location.href='boardUpdate.board?bnum=${dto.bnum}'" class="btn" id="write">수정</button>
      <a href="board.board?category=<%=category%>"><button class="btn" id="cancel">돌아가기</button></a>
   </div>
   			<section>
	        <div class="cobox">
	        	<!-- 댓글수를 위한 변수 가져오기 -->
	            <h2 class="coh3">댓글 </h2>
	            <hr class><br>
	            
	        <!-- 댓글 정보 가져와서 넣어주기 -->
	        <% for(CommentsDto dto : dtos){ %>
	            <div class="codetail">
	               	<span class="cspan"><%=dto.getCobcode() %> </span>
	               	<p class="cp1"><%=dto.getCotag() %></p>
	                <p class="cp2"><%=dto.getCdate() %></p>
	                <div class="cobbox">
	                  	<button>수정</button><button>삭제</button>
	                </div>
	            </div>
	        <% } %>
	            
	            <br><br>

	            <hr class="st4"><br>
	            <!-- 댓글 추가를 위한 form -->
	            <form class="validation-form" novalidate action="CInsert.cmt">
		          	<div class="cominbox">
		              	<span class="cspan"><%=email %></span>
		                <hr class="st">
		                <textarea name="cotag" id="cotag" cols="128" rows="5"></textarea>
		                <hr class="st">
		                <button id="btnco" type="submit">작성하기</button>
		            </div>
				</form>
	        </div>
	    </section>
</body>
</html>