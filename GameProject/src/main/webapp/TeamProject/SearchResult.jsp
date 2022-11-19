<%@page import="game.SearchDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="game.SearchDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <style>
        * {margin: 0; padding: 0;}
    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/search.css">
    <title>SearchResult</title>
</head>
<body>
    <div id="header">
        <a href="MainPage.do"><img src="css/image/Alogo.png" width=70px height=70px></a><h2>| Result</h2>
    </div>
    <h2 id="SearchTitle">검색 결과</h2>
    <div id="ResultList">
        <div id="ListHeader">
            <ul>
                <li><h3>분류</h3></li>
                <li><h3>타이틀</h3></li>
                <li><h3>가격</h3></li>
            </ul>
        </div>
        <div id="Result">
			<div id="list1">
			
			</div>
			<div id="list2">
			
			</div>
			<div id="list3">
			
			</div>
			<div id="list4">
			
			</div>
			<div id="list5">
			
			</div>
			<div id="list6">
			
			</div>
			<div id="list7">
			
			</div>
			<div id="list8">
			
			</div>
			<div id="list9">
			
			</div>
			<div id="list10">
			
			</div>
        </div>
    </div>
</body>
<%
	request.setCharacterEncoding("utf-8");

	String Search = request.getParameter("Search");
	SearchDao dao = new SearchDao();
	ArrayList<SearchDto> dtos = dao.SelectGame(Search);
	for(SearchDto dto : dtos) {
		System.out.println(dto.getGname());
%>
	<script>
	document.querySelector("#list<%=dto.getGnum()%>").append(document.createElement("img"));
	document.querySelector("#list<%=dto.getGnum()%>").append(document.createElement("h3"));
	document.querySelector("#list<%=dto.getGnum()%>").append(document.createElement("h4"));
	</script>
<%
	switch(dto.getGnum()) {
		case 1:
%>
		<script>
		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "css/image/Dark_souls_3_cover_art.jpg");
		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";
		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";
		</script>
<%
		break;
		case 2:
%>
		<script>
		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "css/image/eldenring.jpg");
		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";
		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";
		</script>
<%
		break;
		case 3:
%>
		<script>
		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "css/image/BF1.jpg");
		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";
		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";
		</script>
<%
		break;
		case 4:
%>
		<script>
		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "css/image/eft.jpg");
		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";
		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";
		</script>
<%
		break;
		case 5:
%>
		<script>
		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "css/image/csgo.jpg");
		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";
		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";
		</script>
<%
		break;
		case 6:
%>
		<script>
		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "css/image/warThunder.jpg");
		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";
		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";
		</script>
<%
		break;
		case 7:
%>
		<script>
		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "css/image/warframe.jpg");
		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";
		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";
		</script>
<%
		break;
		case 8:
%>
		<script>
		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "css/image/deceit.jpg");
		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";
		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";
		</script>
<%
		break;
		case 9:
%>
		<script>
		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "css/image/division.jpg");
		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";
		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";
		</script>
<%
		break;
		case 10:
%>
		<script>
		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "css/image/h1z1.jpg");
		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";
		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";
		</script>
<%
	}
%>
	<script>
	document.querySelector("#list<%=dto.getGnum()%>").style.height="20%";
	document.querySelector("#list<%=dto.getGnum()%>").style.borderBottomStyle="solid";
	document.querySelector("#list<%=dto.getGnum()%> > img ").style.width="80px";
	document.querySelector("#list<%=dto.getGnum()%> > img ").style.height="80px";
	document.querySelector("#list<%=dto.getGnum()%> > img ").style.margin="25px";
	document.querySelector("#list<%=dto.getGnum()%> > img ").style.marginLeft="40px";
	document.querySelector("#list<%=dto.getGnum()%> > h3").style.position="relative";
	document.querySelector("#list<%=dto.getGnum()%> > h3").style.width="40%";
	document.querySelector("#list<%=dto.getGnum()%> > h3").style.left="43%";
	document.querySelector("#list<%=dto.getGnum()%> > h3").style.top="-60%";
	document.querySelector("#list<%=dto.getGnum()%> > h4").style.position="relative";
	document.querySelector("#list<%=dto.getGnum()%> > h4").style.width="40%";
	document.querySelector("#list<%=dto.getGnum()%> > h4").style.left="82%";
	document.querySelector("#list<%=dto.getGnum()%> > h4").style.top="-85%";
	</script>
<%
	}
%>
</html>