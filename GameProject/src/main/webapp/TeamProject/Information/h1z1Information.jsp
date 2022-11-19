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
        <img src="css/image/h1z1info.jpg" width="100%" height="100%">
                <div id="FirstInfo">
                <h1 id="GameTitle">H1Z1</h1>
                <h3 id="Developer">Daybreak Game Company</h3>
                <div id="GameTag">
                    <span>오픈 월드</span>
                    <span>PVP</span>
                    <span>FPS</span>
                    <span>3인칭</span>
                </div>
                <h2 id="GamePrice">무료</h2>
                <input type="button" value="장바구니에 담기" id="putInCart">
                <h4 id="AvildDate">출시 2018년 2월 28일</h4>
                <div id="StackView">
                    <img src="../css/image/PartyPlay.png" width=40px height=40px><span>멀티 플레이</span>
            </div>
        </div>
    </div>
    <div id="TwoSection">
        <h3 id="TSinfo">
           <p>Z1 Battle Royale is a Free to Play, fast-paced, action arcade, competitive Battle Royale.</p>

            <p>Staying true to its "King of the Kill" roots, the game has been revamped and restored to the classic feel, look, and gameplay <br></p>
            
            <p>everyone fell in love with. Play solo, duos, or fives and be the last ones standing.</p>
        </h3>
    </div>
    <div id="ThirdSection">
        <h4 id="System">시스템 요구사항</h4>
        <div id="minSys">
            최소:<br>
            운영체제: Windows 7, 8, 8.1, 10 (64 bit only)<br>
            프로세서: Intel i5 Quad-Core<br>
            메모리: 6 GB RAM<br>
            그래픽: nVidia GeForce GTX 460 series or higher<br>
            DirectX: 버전 10<br>
            저장공간: 20 GB 사용 가능 공간<br>
            사운드카드: DirectX Compatible Sound Card
        </div>
        <div id="maxSys">
            권장:<br>
            운영체제: Windows 7, 8, 8.1, 10 (64 bit only)<br>
            프로세서: Intel Core i5-6600K / AMD Ryzen 5 1600<br>
            메모리: 8 GB RAM<br>
            그래픽: NVIDIA GeForce GTX 960 2GB / AMD Radeon R7 370 2GB or higher<br>
            DirectX: 버전 10<br>
            저장공간: 20 GB 사용 가능 공간<br>
            사운드카드: DirectX Compatible Sound Card
        </div>
    </div>
</body>
</html>