<%@page import="signUp.LoginCheckDao"%>
<%@page import="signUp.LoginCheckDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그인한 정보가 회원정보에 있는지 확인하고 회원정보에 있으면 세션을 만들어 로그인한 이메일값을 담고 메인으로 이동 회원정보에 없으면 다시 로그인화면으로
	request.setCharacterEncoding("utf-8");

	String lemail = request.getParameter("lemail");
	String lpwd = request.getParameter("lpwd");
	
	LoginCheckDto ldto = new LoginCheckDto(lemail, lpwd);
	LoginCheckDao ldao = new LoginCheckDao();
	int check = ldao.checkUser(ldto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
<%
	if (check == 1) {
		session.setAttribute("email", lemail);
		String email = (String)session.getAttribute("email");
		System.out.println(email);
%>		
		<script type="text/javascript">
		location.href="MainPage.jsp"
		</script>
<%
	} else {
%>
		<script type="text/javascript">
		location.href="login.jsp";
		alert('로그인에 실패했습니다. 다시 입력해주세요.');
		</script>
<%
	}
 %>
</html>