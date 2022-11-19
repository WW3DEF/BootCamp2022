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
        <img src="../css/image/warframeinfo.jpg" width="100%" height="100%">
                <div id="FirstInfo">
                <h1 id="GameTitle">Warframe</h1>
                <h3 id="Developer">Digital Extremes</h3>
                <div id="GameTag">
                    <span>PVE</span>
                    <span>무료 플레이</span>
                    <span>3인칭</span>
                    <span>액션 RPG</spanw>
                </div>
                <h2 id="GamePrice">무료</h2>
                <input type="button" value="장바구니에 담기" id="putInCart">
                <h4 id="AvildDate">출시 2013년 3월 26일</h4>
                <div id="StackView">
                    <img src="../css/image/SoloPlay.png" width=30px height=30px><span>싱글 플레이</span>
                    <img src="../css/image/PartyPlay.png" width=40px height=40px><span>온라인 협동</span>
            </div>
        </div>
    </div>
    <div id="TwoSection">
        <h3 id="TSinfo">
           <p>이 스토리 중심의 부분 유료 온라인 액션 게임에서 그 누구도 멈출 수 없는 강력한 전사로 깨어나 동료들과 함께 싸움에 임하세요.</p>

            <p>여러 행성에 걸쳐 뻗어나가는 성계 이곳저곳에서 전쟁을 벌이는 세력들과 맞서며, 신비로운 인물, 로터스의 안내에 따르며 워프레임을 레벨업하고, 파괴적인 화력을 가진 무기고를 쌓아올리고,</p>
            <p>이 짜릿한, 전혀 새로운 장르의 3인칭 전투 경험 속의 거대한 오픈 월드에서 여러분의 진짜 잠재력을 불러일으키세요.</p>
        </h3>
    </div>
    <div id="ThirdSection">
        <h4 id="System">시스템 요구사항</h4>
        <div id="minSys">
            운영체제: Windows 7 64-비트 (32-비트 미지원)<br>
            프로세서: Intel Core 2 Duo e6400 혹은 AMD Athlon x64 4000+ (~2.2Ghz 듀얼 코어 CPU)<br>
            메모리: 4 GB RAM<br>
            그래픽: DirectX 10+ 사용 가능한 GPU<br>
            DirectX: 버전 10<br>
            저장공간: 35 GB 사용 가능 공간<br>
        </div>
    </div>
</body>
</html>