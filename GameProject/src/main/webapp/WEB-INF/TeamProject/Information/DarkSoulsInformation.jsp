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
    <script type="text/javascript" src="resources/jsfolder/clickinsert.js?ver=1"></script>
    <link rel="stylesheet" href="resources/css/Gameinfo.css">
    <link rel="stylesheet" href="resources/css/header.css">
</head>
<body>
    <div id="header">
        <a href="MainPage.sign"><img src="resources/css/image/Alogo.png" width=70px height=70px></a><h2>| GAME</h2>
    </div>
    <div id="imageSection">
        <img src="resources/css/image/DakrsouslTwoSection.jpg" width="100%" height="100%">
                <div id="FirstInfo">
                <h1 id="GameTitle">Dark Souls™ lll</h1>
                <h3 id="Developer">BANDAI NAMCO Entertainment Inc.</h3>
                <div id="GameTag">
                    <span>다크 판타지</span>
                    <span>액션 RPG</span>
                    <span>3인칭</span>
                </div>
                <h2 id="GamePrice">49,800원</h2>
                <input type="button" value="장바구니에 담기" id="putInCart">
                <h4 id="AvildDate">출시 2016년 4월 12일</h4>
                <div id="StackView">
                    <img src="resources/css/image/SoloPlay.png" width=30px height=30px><span>싱글 플레이</span>
                    <img src="resources/css/image/PartyPlay.png" width=40px height=40px><span>온라인 협동</span>
            </div>
        </div>
    </div>
    <div id="TwoSection">
        <h3 id="TSinfo">
           <p>-2015년 게임즈컴 ""최고의 RPG"" 상 수상과 35개가 넘는 상을 E3 2015에서 수상-</p>

            <p>DARK SOULS™ III에서, 장르를 새로 개척했다는 평가를 들으며 많은 좋은 평가들을 얻고 있는 다크 소울 시리즈가 계속해서 한계를 넘어서, 더욱 야심찬 단계에 도전하고자 하고 있습니다.<br></p>
            
            <p>불꽃이 사라지고 세계가 폐허로 변하여, 더욱 악랄하고 위험해진 적들과 환경 속으로 여행을 떠나십시오. 플레이어들은 장대한 세계관, 더욱 빨라진 게임 플레이와 잘 짜여진 전투 시스템에 빠져들게 될 것입니다. 시리즈의 전통적인 팬과 새로 시리즈에 입문하시는 분들 모두 더욱 발전된 게임 플레이와 놀라운 그래픽을 경험하실 수 있습니다.</p>
            <p>이제 그저 잔불만이 남아있을 뿐... 한 번 더 준비를 하고 어둠을 밝히십시오!</p>
            <p>더욱 야심찬 단계에 도전하고자 하고 있습니다. 준비를 하고 어둠을 밝히십시오!</p>
        </h3>
    </div>
    <div id="ThirdSection">
        <h4 id="System">시스템 요구사항</h4>
        <div id="minSys">
            최소:<br>
            운영체제: Windows 7 SP1 64bit, Windows 8.1 64bit Windows 10 64bit<br>
            프로세서: Intel Core i3-2100 / AMD® FX-6300<br>
            메모리: 4 GB RAM<br>
            그래픽: NVIDIA® GeForce GTX 750 Ti / ATI Radeon HD 7950<br>
            DirectX: 버전 11<br>
            저장공간: 25 GB 사용 가능 공간<br>
            사운드카드: DirectX 11 sound device<br>
            추가 사항: Internet connection required for online play and product activation
        </div>
        <div id="maxSys">
            권장:<br>
            운영체제: Windows 7 SP1 64bit, Windows 8.1 64bit Windows 10 64bit<br>
            프로세서: Intel Core i7-3770 / AMD® FX-8350<br>
            메모리: 8 GB RAM<br>
            그래픽: NVIDIA® GeForce GTX 970 / ATI Radeon R9 series<br>
            DirectX: 버전 11<br>
            저장공간: 25 GB 사용 가능 공간<br>
            사운드카드: DirectX 11 sound device<br>
            추가 사항: Internet connection required for online play and product activation<br>
        </div>
    </div>
</body>
</html>