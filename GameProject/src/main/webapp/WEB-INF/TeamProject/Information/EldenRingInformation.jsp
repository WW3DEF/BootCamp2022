<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        *{margin: 0; padding: 0;}
    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GameInformation</title>
    <link rel="stylesheet" href="resources/css/EldenringInfo.css">
    <link rel="stylesheet" href="resources/css/header.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="resources/jsfolder/InfoHeader.js?ver=1"></script>
    <script type="text/javascript" src="resources/jsfolder/clickinsert.js"></script>
</head>
<body>
    <div id="header">
        <a href="MainPage.sign"><img src="resources/css/image/Alogo.png" width=70px height=70px></a><h2>| GAME</h2>
    </div>
    <div id="Category">
        <img src="resources/css/image/EldenRingLogo.png" width=150px height=70px id="EldenRingLogo"><div id="ScrollForCon"><a id="summary">게임 개요</a><a id="feature">게임 특징</a><a id="systemRequire">시스템 요구사항</a></div>
    </div>
    <div id="FirstSection">
    <div id="FirstInfoGrad">
        <div id="FirstInfo">
        <h1 id="GameTitle">ELDEN RING</h1>
        <h3 id="Developer">BANDAI NAMCO Entertainment Inc.</h3>
        <div id="GameTag">
            <span>다크 판타지</span>
            <span>액션 RPG</span>
            <span>3인칭</span>
        </div>
        <h2 id="GamePrice">64,800원</h2>
        <input type="button" value="장바구니에 담기" id="putInCart">
        <h4 id="AvildDate">출시 2022년 2월 5일</h4>
        <div id="StackView">
            <img src="resources/css/image/SoloPlay.png" width=30px height=30px><span>싱글 플레이</span>
            <img src="resources/css/image/PartyPlay.png" width=40px height=40px><span>온라인 협동</span>
        </div>
        </div>
    </div>
    </div>
    <div id="slideShowBack">
        <div id="screenShots">
        <img src="resources/image/eldenringSC.png" width="300" height="200">
        <img src="resources/image/eldenringSC2.jpg" width="300" height="200">
        <img src="resources/image/eldenringSC3.jpg" width="300" height="200">
        </div>
    </div>
    <div id="TwoSection">
        <div id="TwoSectionStart">
        </div>
        <div id="twoTopMemo">
            <h4 id="FirstMemo">ELDEN RING은 무엇인가요?</h4><br>
            <h3 id="SecondMemo">ELDEN RING의 힘을 휘두르고<br>
            틈새의 땅에서 엘데의 왕이 되세요.</h3>
        </div>
        <div id="twoRightMemo">
            <h4><p>황금률이 파괴되었습니다.</p>
            <p>영원의 여왕 마리카가 다스리던 틈새의 땅에서 황금의 나무의 근원인 ELDEN RING이 산산조각났습니다.</p>
            <p>전원이 반신인 마리카의 자식들은 위대한 룬이라 불리우는 ELDEN RING의 파편과, 그 새로운 힘에 취해 파쇄라는 이름의 전쟁을 일으켰습니다. 그 전쟁은 위대한 의지에 버림받는다는 뜻이기도 했습니다.</p>
            <p>그리고 이제 축복의 인도는 황금의 축복에 이끌려, 틈새의 땅에서 추방된 빛 바랜 이들에게 전해질 것입니다.</p>
            <p>죽었으나 산 자들이여. 그대들의 축복은 사라진 지 오래이니, 틈새의 땅을 따라 안개의 바다를 넘어 ELDEN RING 앞에 서십시오.</p>
            그리고 엘데의 왕이 되십시오. </h4>
        </div>
    </div>
    <div id="ThreeSection">
        <h2>ELDEN RING 주요 특징</h2>
        <div id="ThreeSectionImages">
            
            <img src="resources/css/image/eldenringThreeSection1.jpg" width="300" height="200">
            <div id="ThreeSecFirstInfo">
            <h3 class="InfoTitle">새로운 판타지 월드</h3>
            <h4 class="InfoSub">ELDEN RING의 힘에 엮인 수수께끼를 푸세요. 
            심오한 배경을 지닌 역경, 제각기 독특한 동기에 따라
            플레이어를 돕거나 방해하는 캐릭터, 무시무시한 괴물들을 만나세요.</h4>
            </div>
            
            
            <img src="resources/css/image/eldenringThreeSection2.jpg" width="300" height="200">
            <div id="ThreeSecSecondInfo">
            <h3 class="InfoTitle">틈새의 땅 세계 탐험</h3>
            <h4 class="InfoSub">걸어서든, 말을 타든, 혼자든, 온라인으로 다른 플레이어와 함께하든 멋진 월드를 탐험해 보세요.
            FromSoftware의 어떤 타이틀에도 등장한 적이 없는 풀로 덮인 초원, 늪,  산, 성과 다른 넓디넓은 지역에
            한껏 몰입해 보세요.</h4>
            </div>
            
            <img src="resources/css/image/eldenringThreeSection3.jpg" width="300" height="200">
            <div id="ThreeSecThirdInfo">
            <h3 class="InfoTitle">장르의 척도가 되는 게임플레이</h3>
            <h4 class="InfoSub">캐릭터를 생성하고 월드 곳곳에 있는 온갖 무기와 마법 능력, 
            스킬을 찾아 본인만의 플레이 스타일을 만들어 보세요. 
            어떻게 탐사와 전투를 치를 건지 결정하는 방식에 따라 온갖 선택지를 고를 수 있습니다.</h4>
            </div>
        </div>
    </div>
    <div id="FourthSection">
        <h4 id="System">시스템 요구사항</h4>
        <div id="minSys">
            최소:<br>
            64비트 프로세서와 운영 체제가 필요합니다<br>
            운영체제: Windows 10<br>
            프로세서: INTEL CORE I5-8400 or AMD RYZEN 3 3300X<br>
            메모리: 12 GB RAM<br>
            그래픽: NVIDIA GEFORCE GTX 1060 3 GB or AMD RADEON RX 580 4 GB<br>
            DirectX: 버전 12<br>
            저장공간: 60 GB 사용 가능 공간<br>
            사운드카드: Windows Compatible Audio Device<br>
            추가 사항:
        </div>
        <div id="maxSys">
            권장:<br>
            64비트 프로세서와 운영 체제가 필요합니다<br>
            운영체제: Windows 10/11<br>
            프로세서: INTEL CORE I7-8700K or AMD RYZEN 5 3600X<br>
            메모리: 16 GB RAM<br>
            그래픽: NVIDIA GEFORCE GTX 1070 8 GB or AMD RADEON RX VEGA 56 8 GB<br>
            DirectX: 버전 12<br>
            저장공간: 60 GB 사용 가능 공간<br>
            사운드카드: Windows Compatible Audio Device<br>
            추가 사항:<br>
        </div>
    </div>
</body>
</html>