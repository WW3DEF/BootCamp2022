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
    <link rel="stylesheet" href="resources/css/Gameinfo.css">
    <link rel="stylesheet" href="resources/css/header.css">
    <script type="text/javascript" src="resources/jsfolder/clickinsert.js?ver=1"></script>
</head>
<body>
    <div id="header">
        <a href="MainPage.sign"><img src="resources/css/image/Alogo.png" width=70px height=70px></a><h2>| GAME</h2>
    </div>
    <div id="imageSection">
        <img src="resources/css/image/deceitinfo.jpg" width="100%" height="100%">
                <div id="FirstInfo">
                <h1 id="GameTitle">Deceit</h1>
                <h3 id="Developer">World Makers</h3>
                <div id="GameTag">
                    <span>PVP</span>
                    <span>무료 플레이</span>
                    <span>공포</span>
                    <span>FPS</spanw>
                </div>
                <h2 id="GamePrice">무료</h2>
                <input type="button" value="장바구니에 담기" id="putInCart">
                <h4 id="AvildDate">출시 2017년 3월 4일</h4>
                <div id="StackView">
                    <img src="resources/css/image/PartyPlay.png" width=40px height=40px><span>멀티 플레이</span>
            </div>
        </div>
    </div>
    <div id="TwoSection">
        <h3 id="TSinfo">
           <p>Deceit는 믿음과 거짓에 대한 당신의 본능을 시험하는 멀티플레이어 1인칭 슈팅 게임입니다.</p>

            <p>당신은 정신병원에서 낯선 목소리를 듣고 잠에서 깨어납니다.</p>
            <p>주변에는 다섯 명의 다른 사람이 있습니다.</p>
            <p>그룹 중 3분의 1이 바이러스에 감염되었는데, 과연 누가 탈출하게 될까요?</p>
        </h3>
    </div>
    <div id="ThirdSection">
        <h4 id="System">시스템 요구사항</h4>
        <div id="minSys">
            최소:<br>
            64비트 프로세서와 운영 체제가 필요합니다<br>
            운영체제: Windows 7 (64비트)<br>
            프로세서: Core 2 Duo E7600 / Athlon II X3<br>
            메모리: 8 GB RAM<br>
            그래픽:  NVIDIA GeForce GTX 550 Ti / AMD Radeon HD 5770 / Intel Broadwell Iris Pro<br>
            DirectX: 버전 11<br>
            저장공간: 20 GB 사용 가능 공간<br>
            추가 사항: Recommended to play on low settings
        </div>
        <div id="maxSys">
            권장:<br>
            64비트 프로세서와 운영 체제가 필요합니다<br>
            운영체제: Windows 10 (64비트)<br>
            프로세서: Core i5 / Phenom II<br>
            메모리: 16 GB RAM<br>
            그래픽: NVIDIA GeForce GTX 660 이상<br>
            DirectX: 버전 11<br>
            저장공간: 20 GB 사용 가능 공간
        </div>
    </div>
</body>
</html>