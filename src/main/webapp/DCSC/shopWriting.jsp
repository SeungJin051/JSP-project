<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DCSC</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/NavFooter.css">
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
                            <li><a class="dropdown-item" href="profile.jsp">프로필</a></li>
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
    <div class="container">
        <div class="container mx-3 p-5 ">
            <h1 class=" fw-normal text-start fs-2">행복을 나누기</h1>
            <p class="text-muted m-lg-1">
                name님 중고 거래를 통해 당신의 행복을 나누세요.
            </p>
        </div>
        <form action="#" method="get">
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">제목</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="제목을 입력하세요.">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">가격</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="가격을 입력하세요.">
            </div>
            <div>
                <label for="formFileLg" class="form-label">첨부파일</label>
                <input class="form-control form-control-lg" id="formFileLg" type="file">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">본문</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="20"
                    placeholder="내용을 입력하세요."></textarea>
            </div>
            <div class="text-end">
                <button class="btn btn-primary"><i class="bi bi-pencil-fill"></i> 등록</button>
                <button class="btn btn-light">
                    취소</button>
            </div>
	    </form>
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