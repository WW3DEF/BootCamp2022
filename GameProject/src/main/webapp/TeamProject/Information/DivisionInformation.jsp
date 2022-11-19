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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div id="header">
        <a href="../MainPage.do"><img src="../css/image/Alogo.png" width=70px height=70px></a><h2>| GAME</h2>
    </div>
    <div id="imageSection">
        <img src="../css/image/divisioninfo.jpg" width="100%" height="100%">
                <div id="FirstInfo">
                <h1 id="GameTitle">Tom clancys The Division</h1>
                <h3 id="Developer">Ubisoft</h3>
                <div id="GameTag">
                    <span>오픈 월드</span>
                    <span>무료 플레이</span>
                    <span>3인칭</span>
                    <span>생존</spanw>
                </div>
                <h2 id="GamePrice">33,000원</h2>
                <input type="button" value="장바구니에 담기" id="putInCart">
                <h4 id="AvildDate">출시 2016년 3월 8일</h4>
                <div id="StackView">
                    <img src="../css/image/SoloPlay.png" width=30px height=30px><span>싱글 플레이</span>
                    <img src="../css/image/PartyPlay.png" width=40px height=40px><span>온라인 협동</span>
            </div>
        </div>
    </div>
    <div id="TwoSection">
        <h3 id="TSinfo">
           <p>치명적인 전염병으로 도시가 붕괴 직전의 상태가 된 후... 구원의 희망은 오직 Division의 요원들에게 달렸습니다.</p>

            <p>임무를 완수하고, 다크존을 탐험하고, 혼자 또는 세 명의 친구들과 함께 적 진영에 맞서 싸우십시오. </p>
            <p>격렬한 PvP와 PvE를 즐길 수 있는 최종 게임 콘텐츠를 경험해보십시오.</p>
        </h3>
    </div>
    <div id="ThirdSection">
        <h4 id="System">시스템 요구사항</h4>
        <div id="minSys">
            최소:<br>
            운영체제: Windows® 7, Windows 8.1, Windows 10 (64-bit versions only)<br>
            프로세서: Intel Core i5-2400 | AMD FX-6100, or better<br>
            메모리: 6 GB RAM<br>
            그래픽: NVIDIA GeForce GTX 560 with 2 GB VRAM (current equivalent NVIDIA GeForce GTX 760) | AMD Radeon HD 7770 with 2 GB VRAM, or better - See supported List*<br>
            DirectX: 버전 11<br>
            저장공간: 40 GB 사용 가능 공간
        </div>
        <div id="maxSys">
            권장:<br>
            운영체제: Windows® 7, Windows 8.1, Windows 10 (64-bit versions only)<br>
            프로세서: Intel Core i7-3770 | AMD FX-8350, or better<br>
            메모리: 8 GB RAM<br>
            그래픽: NVIDIA GeForce GTX 970 | AMD Radeon R9 290, or better - See supported List*<br>
            DirectX: 버전 11<br>
            저장공간: 40 GB 사용 가능 공간
        </div>
    </div>
</body>
</html>