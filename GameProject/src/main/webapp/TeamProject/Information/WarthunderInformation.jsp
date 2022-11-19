<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        *{margin: 0; padding: 0;}
    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GameInformation</title>
    <link rel="stylesheet" href="../css/Gameinfo.css">
    <link rel="stylesheet" href="../css/header.css">
    <script type="text/javascript" src="../jsfolder/clickinsert.js?ver=1"></script>
</head>
<body>
    <div id="header">
        <a href="../MainPage.do"><img src="../css/image/Alogo.png" width=70px height=70px></a><h2>| GAME</h2>
    </div>
    <div id="imageSection">
        <img src="../css/image/warthunderinfo.jpg" width="100%" height="100%">
                <div id="FirstInfo">
                <h1 id="GameTitle">War Thunder</h1>
                <h3 id="Developer">Gaijin Entertainment</h3>
                <div id="GameTag">
                    <span>무료 플레이</span>
                    <span>차량 전투</span>
                    <span>3인칭</span>
                    <span>액션</spanw>
                </div>
                <h2 id="GamePrice">무료</h2>
                <input type="button" value="장바구니에 담기" id="putInCart">
                <h4 id="AvildDate">출시 2013년 8월 15일</h4>
                <div id="StackView">
                    <img src="../css/image/SoloPlay.png" width=30px height=30px><span>싱글 플레이</span>
                    <img src="../css/image/PartyPlay.png" width=40px height=40px><span>온라인 협동</span>
            </div>
        </div>
    </div>
    <div id="TwoSection">
        <h3 id="TSinfo">
           <p>War Thunder는 제 2차 세계대전부터 현대전까지의 항공기, 전차, 함선, 헬리콥터를 플레이 할 수 있는 온라인 게임 역사상 가장 거대한 스케일을 가지고 있는 밀리터리 MMO 게임입니다.</p>

            <p>지금 게임에 참여하셔서 War Thunder가 제공하는 지상, 공중, 해상의 거대한 전장 서사시에 직접 참여하십시오.</p>
        </h3>
    </div>
    <div id="ThirdSection">
        <h4 id="System">시스템 요구사항</h4>
        <div id="minSys">
            최소:<br>
            운영체제: Windows 7 SP1/8/10<br>
            프로세서: Dual-Core 2.2 GHz<br>
            메모리: 4 GB RAM<br>
            그래픽: DirectX 10.1 level video card: AMD Radeon 77XX / NVIDIA GeForce GTX 660. The minimum supported resolution for the game is 720p.<br>
            DirectX: 버전 11<br>
            저장공간: 17 GB 사용 가능 공간<br>
        </div>
        <div id="maxSys">
            권장:<br>
            운영체제: Windows 10 (64bit)<br>
            프로세서:  Intel Core i5 or Ryzen 5 3600 or better<br>
            메모리: 16 GB RAM<br>
            그래픽: DirectX 11 level video card or higher and drivers: Nvidia GeForce 1060 and higher, Radeon RX 570 and higher<br>
            DirectX: 버전 12<br>
            저장공간: 95 GB 사용 가능 공간<br>
        </div>
    </div>
</body>
</html>