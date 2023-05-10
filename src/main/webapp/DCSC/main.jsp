<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>DCSC</title>
<style>
    #icon {
        margin-top: 4px;
        margin-right: 4px;
        font-size: 2rem;
    }

    .footer-info {
        margin-top: -100px;
    }

    li {
        list-style: none;
    }

    footer #footer-bor {
        margin-top: -70px;
        display: flex;
    }

    footer li {
        float: left;
    }

    .form-control {
        border-radius: 15px;
    }

    .nav-job {
        color: black;
    }

    .nav-hr {
        padding-top: 7px;
    }

    #navbarDropdown {
        margin-right: 80px;
    }

    .nav-item {
        margin: 15px;
        font-weight: 600;
    }

    .nav-item :hover {
        color: #6CB52D
    }

    .dit-img {
        width: 150px;
        margin-right: 0px;
    }

    .navbar {
        padding: 15px;
        border-bottom: 1px solid #ddd;
    }

    .w3-container {
        margin-bottom: 40px;
    }

    .main-images {
        border-radius: 8px;
        margin-bottom: 40px;
        max-width: 800px;
        height: 500px;
    }

    #main h1 {
        margin-left: 30px;
    }

    .card-group {
        margin: 30px;
    }

    .card {
        padding: 20px;
    }

    @media (max-width: 800px) {

        footer {
            display: none;
        }

    }
</style>
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
                        <a class="nav-link" href="free.html">자유게시판</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">재학생</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">졸업생</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="shop.html">중고장터</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="announcement.html">공지사항</a>
                    </li>
                    <li class="nav-item nav-hr">
                        |
                    </li>
                    <li class="nav-item">
                        <a class="nav-link nav-job" href="#">채용공고</a>
                    </li>
                    <li class="nav-item nav-hr">
                        |
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

    <div class="px-4 pt-5 my-5 text-center border-bottom">
        <h1 class="display-4 fw-bold">동의과학대학교 컴퓨터소프트웨어과</h1>
        <div class="col-lg-6 mx-auto">
            <p class="lead mb-4">동의과학대학교 컴퓨터소프트웨어과 학생들을 위한 커뮤니티입니다.</p>
            <div class="d-grid gap-2 d-sm-flex justify-content-sm-center mb-5">
                <button type="button" class="btn btn-primary btn-lg px-4 me-sm-3" data-bs-toggle="modal"
                    data-bs-target="#exampleModal">
                    문의하기
                </button>
                <!-- <button type="button" class="btn btn-outline-secondary btn-lg px-4">나의 문의내역</button> -->
            </div>
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

        <div class="overflow-hidden" style="max-height: 30vh;">
            <div class="container px-5">
                <img src="https://static.standard.co.uk/2021/06/07/12/erik-jan-leusink-IbPxGLgJiMI-unsplash.jpg?width=968&auto=webp&quality=50&crop=968%3A645%2Csmart"
                    class="img-fluid border rounded-3 shadow-lg mb-4" alt="Example image" width="700" height="500"
                    loading="lazy">
            </div>
        </div>
    </div>

    <div class="row row-cols-1 row-cols-md-2 g-4 card-group">
    </div>
    <hr>
    <footer class="py-3 my-4">
        <img src="images/dit.png" alt="" class="dit-img">
        <ul>
            <li class="nav-item">
                <a class="nav-link" href="#"> <i class="bi bi-github"></i>
                    김신영</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"> <i class="bi bi-github"></i>
                    김효민</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"> <i class="bi bi-github"></i>
                    임승진</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"> <i class="bi bi-github"></i>
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