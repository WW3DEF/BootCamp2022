<%@page import="java.util.ArrayList"%>
<%@page import="signUp.ProfileDao"%>
<%@page import="signUp.ProfileDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="#">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/profile.css">
</head>
<body>
<div id="header">
  <a href="MainPage.do"><img src="css/image/Alogo.png" width=70px height=70px></a><h2>| PROFILE</h2>
</div>
<h2>&nbsp;&nbsp;&nbsp;&nbsp;PROFILE</h2>

<div>
    <p>
    <img src="css/image/user2.png" id="profileimg"  align = "left">
    <div>
    <h3> &nbsp;&nbsp;&nbsp;이름 </h3> <p id="pname"> &nbsp;&nbsp;&nbsp;조이박 </p>  
    <h3> &nbsp;&nbsp;&nbsp;소개 </h3> <p id="pinfo"> &nbsp;&nbsp;&nbsp;안녕하세요 조이박입니다! </p>
    </div>
</div>
<br>
<br>
<p style='width:80px; position: absolute; top: 25%; left: 70%;'>
    <a href="profilemodify.do"><button class="snip1535">Modify</button></a>
</p>
</body>
<%
	//세션값을 받아와서 이메일 이외 정보인 해당 유저의 이름과 정보글을 가져와서 표시함
	request.setCharacterEncoding("utf-8");
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
