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
    <link rel="stylesheet" href="TeamProject/css/Gameinfo.css">
    <link rel="stylesheet" href="TeamProject/css/header.css">
    <script type="text/javascript" src="TeamProject/jsfolder/clickinsert.js?ver=1"></script>
</head>
<body>
    <div id="header">
        <a href="MainPage.sign"><img src="TeamProject/css/image/Alogo.png" width=70px height=70px></a><h2>| GAME</h2>
    </div>
    <div id="imageSection">
        <img src="TeamProject/css/image/battlefieldinfo.jpg" width="100%" height="100%">
                <div id="FirstInfo">
                <h1 id="GameTitle">BattleField 1™</h1>
                <h3 id="Developer">Electronic Arts</h3>
                <div id="GameTag">
                    <span>FPS</span>
                    <span>액션</span>
                    <span>전쟁</span>
                </div>
                <h2 id="GamePrice">11,000원</h2>
                <input type="button" value="장바구니에 담기" id="putInCart">
                <h4 id="AvildDate">출시 2016년 10월 20일</h4>
                <div id="StackView">
                    <img src="TeamProject/css/image/SoloPlay.png" width=30px height=30px><span>싱글 플레이</span>
                    <img src="TeamProject/css/image/PartyPlay.png" width=40px height=40px><span>멀티 플레이</span>
            </div>
        </div>
    </div>
    <div id="TwoSection">
        <h3 id="TSinfo">
           <p>“Exhilarating Multiplayer”<br>
               9/10 – IGN</p>

            <p>“Instant Classic”<br>
                9/10 – Game Revolution</p>
            
            <p>강력한 Battlefield 커뮤니티에 참여하고 비평가들의 찬사를 받은 1인칭 슈팅 게임의 대규모 전투에 뛰어드세요.</p>
            <p>비평가들에게 인정받은 Battlefield™ 은 2016년 E3의 Games Critics Awards Best에서 최고의 액션 게임 상을 수상했으며,</p>
            <p>2016년 Gamescom에서도 최고의 액션 게임 상을 받았습니다.</p>
        </h3>
    </div>
    <div id="ThirdSection">
        <h4 id="System">시스템 요구사항</h4>
        <div id="minSys">
            최소:<br>
            운영체제: 64-bit Windows 7, Windows 8.1 and Windows 10<br>
            프로세서: Processor (AMD): AMD FX-6350 Processor (Intel): Intel Core i5 6600K<br>
            메모리: 8 GB RAM<br>
            그래픽: Graphics card (AMD): AMD Radeon™ HD 7850 2GB Graphics card (NVIDIA): NVIDIA GeForce® GTX 660 2GB<br>
            DirectX: 버전 11<br>
            저장공간: 50 GB 사용 가능 공간<br>
        </div>
        <div id="maxSys">
            권장:<br>
            운영체제: 64-bit Windows 10 or later<br>
            프로세서: Processor (AMD): AMD FX 8350 Wraith Processor (Intel): Intel Core i7 4790 or equivalent<br>
            메모리: 16 GB RAM<br>
            그래픽: Graphics card (AMD): AMD Radeon™ RX 480 4GB Graphics card (NVIDIA): NVIDIA GeForce® GTX 1060 3GB<br>
            DirectX: 버전 11<br>
            저장공간: 50 GB 사용 가능 공간<br>
        </div>
    </div>
</body>
</html>