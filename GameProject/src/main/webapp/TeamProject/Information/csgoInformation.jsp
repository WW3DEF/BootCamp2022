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
        <img src="../css/image/csgoinfo.jpg" width="100%" height="100%">
                <div id="FirstInfo">
                <h1 id="GameTitle">CS:GO</h1>
                <h3 id="Developer">Valve</h3>
                <div id="GameTag">
                    <span>FPS</span>
                    <span>액션</span>
                    <span>슈팅</span>
                </div>
                <h2 id="GamePrice">무료</h2>
                <input type="button" value="장바구니에 담기" id="putInCart">
                <h4 id="AvildDate">출시 2012년 8월 22일</h4>
                <div id="StackView">
                    <img src="../css/image/SoloPlay.png" width=30px height=30px><span>싱글 플레이</span>
                    <img src="../css/image/PartyPlay.png" width=40px height=40px><span>온라인 협동</span>
            </div>
        </div>
    </div>
    <div id="TwoSection">
        <h3 id="TSinfo">
           <p>Counter-Strike: Global Offensive(CS: GO)는 19년 전 출시 당시 개척한 팀 기반 액션 게임플레이의 수준을 한층 더 끌어올렸습니다.</p>

            <p>CS: GO는 새 맵, 캐릭터, 무기 및 게임 모드를 도입했고, 기존의 클래식 CS 콘텐츠(de_dust2 등)의 개선된 버전을 제공합니다.<br></p>
            
            <p>Valve의 Doug Lombardi는 "그 당시에는 모드였던 Counter-Strike가 1999년 8월에 처음 나오자마자 전 세계에서 가장 많이 플레이된 온라인 PC 액션 게임의 자리를 꿰차면서 게임 업계의 감탄을 이끌어냈던 것을 기억합니다."라며</p>
            <p> "지난 12년간, CS: GO 시리즈는 전 세계적으로 2,500만 장 이상이 판매됐고, 대대적인 경쟁률을 보인 토너먼트가 개최되는 등 전 세계적으로 가장 많이 플레이된 게임 중 하나의 자리를 굳건히 지켜왔습니다. </p>
        </h3>
    </div>
    <div id="ThirdSection">
        <h4 id="System">시스템 요구사항</h4>
        <div id="minSys">
            최소:<br>
            운영체제: Windows® 7/Vista/XP<br>
            프로세서: Intel® Core™ 2 Duo E6600 또는 AMD Phenom™ X3 8750<br>
            메모리: 2 GB RAM<br>
            그래픽: 비디오 카드는 256MB 이상에 DirectX 9와 호환 가능해야 하며 Pixel Shader 3.0을 지원해야 합니다.<br>
            DirectX: 버전 9<br>
            저장공간: 15 GB 사용 가능 공간<br>
        </div>
    </div>
</body>
</html>