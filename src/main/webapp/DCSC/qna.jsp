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
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <main>

        <section class="py-1 text-center container">
            <div class="row py-lg-5">
                <div class="col-lg-6 col-md-8 mx-auto">
                    <h1 class="fw-light">
                        중고 거래, 친구들과 함께해요. 가깝고 따뜻한 당신의 근처를 만들어요.
                    </h1>
                    <p class="lead text-muted">
                        원하는 상품을 선택하고 판매자에게 채팅을 통해 소통하세요.
                    </p>
                </div>
            </div>
        </section>

		<div class="container">
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th scope="col">First</th>
			      <th scope="col">Last</th>
			      <th scope="col">Handle</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <td>Mark</td>
			      <td>Otto</td>
			      <td>@mdo</td>
			    </tr>
			    <tr>
			      <td>Jacob</td>
			      <td>Thornton</td>
			      <td>@fat</td>
			    </tr>
			    <tr>
			      <td colspan="2">Larry the Bird</td>
			      <td>@twitter</td>
			    </tr>
			  </tbody>
			</table>
		</div>

    </main>

    <hr>
    <footer class="py-3 my-4">
        <img src="images/dit.png" alt="" class="dit-img">
        <ul>
            <li class="nav-item">
                <a class="nav-link" href="https://github.com/kimsinyoung2" target="_blank"> <i class="bi bi-github"></i>
                    김신영</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" target="_blank"> <i class="bi bi-github"></i>
                    김효민</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="https://github.com/SeungJin051" target="_blank"> <i class="bi bi-github"></i>
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