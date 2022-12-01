<%@page import="java.util.ArrayList"%>
<%@page import="signUp.ProfileDao"%>
<%@page import="signUp.ProfileDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/profile.css">
<link rel="stylesheet" href="resources/jsfolder/profilechange.js">
</head>
<body>
	<div id="header">
	  <a href="MainPage.sign"><img src="resources/css/image/Alogo.png" width=70px height=70px></a><h2>| PROFILE</h2>
	</div>
	<h1>profile</h1>
	
    <div id="section">
         <img src="resources/css/image/unknownAvatar.jpg" alt="이미지 없음" srcset="">
         <h2>이름</h2>
         <h3>자기 소개</h3>
         <a href="profilemodify.sign"><button id="btnModify">프로필 수정</button></a>
    </div>
    <div id="navArea">
	    <div id="nav">
	    	<ul>
	    		<li>ㅇㅇ</li>
	    		<li>ㅇㅇ</li>
	    		<li>ㅇㅇ</li>
	    	</ul>
	    </div>
    </div>
</body>
<%
	//세션값을 받아와서 이메일 이외 정보인 해당 유저의 이름과 정보글을 가져와서 표시함
	String email = (String)session.getAttribute("email");
			
			ProfileDao dao = new ProfileDao();
			ArrayList<ProfileDto> dtos = dao.profileNameSearch(email);
			for(ProfileDto dto : dtos) {
				
			if(dto.getinFor() != null) {
				%>
				<script>
					// 프로필 소개글의 데이터가 존재하는 경우 
					let name = document.querySelector("#pname");
						name.innerHTML="&nbsp;&nbsp;&nbsp;<%=dto.getName()%>";
						let info = document.querySelector("#pinfo");
						info.innerHTML="&nbsp;&nbsp;&nbsp;<%=dto.getinFor()%>.";
				</script>

<%
					} else {
						// 프로필의 소개글의 값이 null인 경우
%>
						<script>
						let name = document.querySelector("#pname");
						name.innerHTML="&nbsp;&nbsp;&nbsp;<%=dto.getName()%>";
						let info = document.querySelector("#pinfo");
						info.innerHTML="&nbsp;&nbsp;&nbsp;설정된 소개글이 없습니다.";
						</script>
<%
			}
		}
%>
</html>
