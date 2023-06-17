<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DCSC</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/NavFooter.css">
<!-- 부트스트랩  -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
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
</script>

<body>
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a href="main.html"><img src="images/dit.png" alt="" class="dit-img"></a>
            <a class=" navbar-brand" href="#"></a>
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
                            <li><a class="dropdown-item" href="profile.html">프로필</a></li>
                            <li><a class="dropdown-item" href="#">나의 문의내역</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">채팅</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <main>
        <div class="mx-5pricing-header p-5 pb-md-4 text-start"
            style="background-image: linear-gradient(to top, #9890e3 0%, #b1f4cf 100%); border-radius: 20px; margin: 35px 100px 35px 100px;">
            <h1 class=" fw-normal">공지사항</h1>
            <p class="fs-5 text-white m-lg-3">
                <strong>컴퓨터소프트웨어학과</strong>의 최신 뉴스, 이벤트 및 정보를 공유하는 공간입니다.
            </p>
        </div>
        <hr>
        <ul class="container">
            <li>
                <div>
                    <i class="bi bi-person-circle"></i>
                    <span>임승진</span>
                    <span> · 34분 전</span> <br> <br>
                    <h4>데이터베이스를 어떻게 구상해야 할지 모르겠어요</h4>
                    <p class="text-muted">안녕하세요. 코테를 진행하다가 어디서 틀렸는지 모르겠어서 조언을 구하고자 합니다. 문제와 제가 작성한 코드는 다음과 같습니다.
                        문제 내 코드 class
                        Solution { public String solution(String s) { String answer = ""; // 스플릿으로 예시 문자열 배열형태로
                        반환 String[] sArr = s.spli</p>
                    <div class="text-end">
                        <span>#과제</span>
                        <span>#질문</span>
                        <i class="bi bi-eye"></i>
                        <span>23</span>
                        <i class="bi bi-chat"></i>
                        <span>2</span>
                    </div>
                    <hr>
                </div>
            </li>
        </ul>
     </main>

        <!-- 페이징네이션 ++  -->
        <div class="container ">
            <div class="row">
                <div class="col">
                    <ul class="pagination justify-content-center">
                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <hr>
        <footer class="py-3 my-4">
            <img src="images/dit.png" alt="" class="dit-img">
            <ul>
                <li class="nav-item">
                    <a class="nav-link" href="https://github.com/kimsinyoung2" target="_blank"> <i
                            class="bi bi-github"></i>
                        김신영</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" target="_blank"> <i class="bi bi-github"></i>
                        김효민</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://github.com/SeungJin051" target="_blank"> <i
                            class="bi bi-github"></i>
                        임승진</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" target="_blank"> <i class="bi bi-github"></i>
                        전경민</a>
                </li>
            </ul>
            <br>
            <br>
            <br>
            <div class="footer-info">
                <p class="text-center text-muted">주소 | (47230) 부산광역시 부산진구 양지로 54
                    TEL : 051-852-0011~3 FAX : 051-860-3270</p>
                <p class="text-center text-muted">&copy; 2023 DONG-EUI INSTITUTE OF TECHNOLOGY. ALL RIGHTS RESERVED.
                </p>
            </div>
        </footer>
</body>

</html>