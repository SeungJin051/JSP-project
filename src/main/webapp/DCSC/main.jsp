<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/NavFooter.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35fd48b615e5a4b7d75de965feed2452"></script>
<!-- 부트스트랩  -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- 부트스트랩  -->
<title>DCSC</title>
<style>
	.container {
	  padding: 0;
	}
</style>

<body>
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a href="main.jsp"><img src="images/dit.png" alt="" class="dit-img"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="free.jsp">자유게시판</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">재학생</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">졸업생</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="shop.jsp">중고장터</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="announcement.jsp">공지사항</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link nav-job" href="job.jsp">|&nbsp; &nbsp; &nbsp; 채용공고 &nbsp; &nbsp; &nbsp;|</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control" type="search" placeholder="검색" aria-label="Search">
                </form>
                <ul class="navbar-nav mb-lg-1 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            정보
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="profile.jsp">프로필</a></li>
                            <li><a class="dropdown-item" href="#">나의 문의내역</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">채팅</a></li>
                            <li><a class="dropdown-item" href="admin_pass.jsp">관리자메뉴</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="px-4 pt-5 my-5 text-center border-bottom">
        <h1 class="display-4 fw-bold">DCSC</h1>
        <div class="col-lg-6 mx-auto">
            <p class="lead mb-4">동의과학대학교 컴퓨터소프트웨어과 학생들을 위한 커뮤니티입니다.</p>
            <div class="d-grid gap-2 d-sm-flex justify-content-sm-center mb-5">
                <button type="button" class="btn btn-primary btn-lg px-4 me-sm-3" data-bs-toggle="modal"
                    data-bs-target="#exampleModal">
                    문의하기
                </button>        		
            </div>
		</div>		
	</div>
	
	<div class="container">
	        <div id="map" style="width:500px;height:400px;"></div>
 	</div>
		
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">문의</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="mb-3">
                                <label for="recipient-name" class="col-form-label">제목</label>
                                <input type="text" class="form-control" id="recipient-name" placeholder="제목을 입력해주세요.">
                            </div>
                            <div class="mb-3">
                                <label for="message-text" class="col-form-label">내용</label>
                                <textarea class="form-control" id="message-text" placeholder="내용을 입력해주세요."></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary">전송</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                    </div>
                </div>
            </div>
        </div>
</body>

<script>
    function w3_open() {
        document.getElementById("main").style.marginLeft = "25%";
        document.getElementById("mySidebar").style.width = "25%";
        document.getElementById("mySidebar").style.display = "block";
        document.getElementById("openNav").style.display = 'none';
    }
    function w3_close() {
        document.getElementById("main").style.marginLeft = "0%";
        document.getElementById("mySidebar").style.display = "none";
        document.getElementById("openNav").style.display = "inline-block";
    }
    
    var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
    var options = { //지도를 생성할 때 필요한 기본 옵션
    	center: new kakao.maps.LatLng(35.16479652960647, 129.07126421879522), //지도의 중심좌표.
    	level: 3 //지도의 레벨(확대, 축소 정도)
    };

    var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
    
 	// 마커가 표시될 위치입니다 
    var markerPosition  = new kakao.maps.LatLng(35.16479652960647, 129.07126421879522); 

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
    
 // 커스텀 오버레이에 표시할 컨텐츠 입니다
 // 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
 // 별도의 이벤트 메소드를 제공하지 않습니다 
 var content = '<div class="wrap">' + 
             '    <div class="info" style="background-color: #ffffff; background-color: rgba( 255, 255, 255, 0.7 ); color: black; padding:30px; border-radius:20px;">' + 
             '        <div class="title">' + 
             '            동의과학대학교 미래관' + 
             '            <span class="close" onclick="closeOverlay()" title="닫기">X</span>' + 
             '        </div>' + 
             '        <div class="body">' + 
             '            <div class="img">' +
             '                <img src="images/dit.png" width="73" height="70">' +
             '           </div>' + 
             '            <div class="desc">' + 
             '                <div class="ellipsis">동의과학대학교 컴퓨터소프트웨어과(미래관 5층) 501호</div>' + 
             '                <div class="jibun ellipsis">(47230) 부산 부산진구 양지로 54</div>' + 
             '                <div><a href="https://www.dit.ac.kr/cs/" target="_blank" class="link">학과 홈페이지</a></div>' + 
             '            </div>' + 
             '        </div>' + 
             '    </div>' +    
             '</div>';

 // 마커 위에 커스텀오버레이를 표시합니다
 // 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
 var overlay = new kakao.maps.CustomOverlay({
     content: content,
     map: map,
     position: marker.getPosition()       
 });

	 overlay.setMap(null);     
 
 // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
 kakao.maps.event.addListener(marker, 'click', function() {
     overlay.setMap(map);
 });

 // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
 function closeOverlay() {
     overlay.setMap(null);     
 }
 
</script>

</html>
