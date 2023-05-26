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
<title>DCSC</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/NavFooter.css">
<!-- 부트스트랩  -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- 부트스트랩  -->
<style>
    @media (max-width: 800px) {

        footer {
            display: none;
        }

    }
    .member{
        margin-top: 100px;
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
            <a href="sign_up.jsp"><img src="images/dit.png" alt="" class="dit-img"></a>
            <a class=" navbar-brand" href="#"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="sign_up.jsp">회원가입관리</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="member.jsp">회원관리</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="graduateboard.jsp">게시글관리</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="shop.jsp">장터관리</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="announcement.jsp">공지사항</a>
                    </li>
             
                    <li class="nav-item">
                        <a class="nav-link nav-job" href="main.jsp">나가기</a>
                    </li>
                </ul>
  
            </div>
        </div>
    </nav>

    <div class="container member">
        <h1 >졸업생 게시글 관리</h1>
        <table class="table talbe-hover">
            <tbody>
                <tr>
                    <td><B>글번호</td>
                    <td><B>제목</td>
                    <td><b>작성자</td>
                    <td><b>학번</td>
                    <td><b>날짜</td>
                </tr>
    
                <tr>
					<td>1</td>
                    <td><A href="graduateboardupdate.jsp">취업후기</A></td>
                    <td>김신영</td>
                    <td>202231747</td>
                    <td>2022-05-25</td>
                </tr>
            </tbody>
        </table>
    </div>



</body>

</html>
