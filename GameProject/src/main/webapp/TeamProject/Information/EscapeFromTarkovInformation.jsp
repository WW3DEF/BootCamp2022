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
        <img src="../css/image/eft_logo_promo.jpg" width="100%" height="100%">
                <div id="FirstInfo">
                <h1 id="GameTitle">EscapeFromTarkov</h1>
                <h3 id="Developer">BattleState Games</h3>
                <div id="GameTag">
                    <span>생존</span>
                    <span>RPG</span>
                    <span>FPS</span>
                    <span>PVP</span>
                </div>
                <h2 id="GamePrice">55,800원</h2>
                <input type="button" value="장바구니에 담기" id="putInCart">
                <h4 id="AvildDate">출시 2016년 8월 4일</h4>
                <div id="StackView">
                    <img src="../css/image/SoloPlay.png" width=30px height=30px><span>싱글 플레이</span>
                    <img src="../css/image/PartyPlay.png" width=40px height=40px><span>온라인 협동</span>
            </div>
        </div>
    </div>
    <div id="TwoSection">
        <h3 id="TSinfo">
            <p>Contract Wars 이후 시간이 흘러.. Tarkov 지역 전체가 봉쇄되고, USEC과 BEAR는 서로 와해됐습니다.<br></p>
            
            <p>유럽연합과 러시아 연방의 합작투자로 조성된 경제특구 노르빈스크의 도시 타르코프에서 유럽연합의 대기업 테라 그룹이 불법적인 연구를 진행하다 발각됐습니다.</p>
            <p>러시아 정부는 민간군사기업 BEAR를 동원하여 폐쇄된 노르빈스크에서 테라 그룹의 불법 행위를 조사하지만, 테라 그룹도 국제연합 산하 보안업체인 USEC을 고용하여 러시아측의 조사활동을 방해하고, 증거를 은폐하고 있습니다.</p>
            <p>양측 간의 격돌로 인해 감당할 수 있는 정도를 뛰어넘어 버려 완전히 몰락해버리고 무법지대가 된 타르코프에서 탈출하십시오.</p>
        </h3>
    </div>
    <div id="ThirdSection">
        <h4 id="System">시스템 요구사항</h4>
        <div id="minSys">
            최소:<br>
            프로세서: 인텔 듀얼코어 2.4Ghz 이상, AMD 듀얼코어 2.6Ghz 이상<br>
            메모리: 16 GB RAM<br>
            그래픽: 메모리 2 GB 이상의 그래픽 카드<br>
            DirectX: 버전 9<br>
            저장공간: 20 GB 이상 사용 가능 공간<br>
            사운드카드: 다이렉트X 지원하는 사운드카드<br>
        </div>
        <div id="maxSys">
            권장:<br>
            프로세서: 인텔 쿼드코어 3.2Ghz 이상, AMD 쿼드코어 3.6Ghz 이상<br>
            메모리: 32 GB RAM<br>
            그래픽: 메모리 4 GB 이상의 그래픽 카드<br>
            DirectX: 버전 11<br>
            저장공간: 20 GB 이상 사용 가능 공간(SSD)<br>
            사운드카드: 다이렉트X 지원하는 사운드카드<br>
        </div>
    </div>
</body>
</html>