<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>DCSC</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
    .login {
        width: 150px;
    }

    img {
        margin-bottom: 30px;
        max-width: 100%;
        height: auto;
    }

    .box {
        width: 375px;
    }
</style>

<body>

    <div class="container-fluid p-5 bg-primary bg-gradient text-white text-center">
        <h1><span style="color:rgb(254, 68, 68)">D</span><span style="color:rgb(0, 0, 0)">IT</span> Computer Software
            Department
        </h1>
        <p>동의과학대학교 컴퓨터소프트웨어과 커뮤니티에 오신걸 환영합니다!!</p>
    </div>

    <div class="box container">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <img src="images/indexBanner.png" alt="" class="img-fluid">
                </div>
            </div>
            <form action="loginPro.jsp" method="get">
                <div class="mb-3">
<<<<<<< Upstream, based on branch 'main' of https://github.com/SeungJin051/JSP-project.git
                    <label for="studentNumber" class="form-label">학번</label>
                    <input type="text" class="form-control" id="studentNumber" placeholder="학번" name="studentNumber" maxlength="10"
                        required>
=======
                    <label for="stNum" class="form-label">학번</label>
                    <input type="text" class="form-control" id="stNum" placeholder="학번" name="stNu" maxlength="10" required>
>>>>>>> 9177ea5 add
                </div>
                <div class="mb-3">
                    <label for="pwd" class="form-label">비밀번호</label>
                    <input type="password" class="form-control" id="pwd" placeholder="비밀번호" name="pwd" required maxlength="16">
                </div>
<<<<<<< Upstream, based on branch 'main' of https://github.com/SeungJin051/JSP-project.git
                <button type="submit" class="btn btn-primary bg-gradient login">로그인</button>
                    
                <button type="button" class="btn btn-danger bg-gradient sign-up"
                    onclick="location.href='signUp.jsp'">회원가입</button>
        </form>
    </div>
=======
                <button type="submit" class="btn btn-primary bg-gradient login" onclick="location.href='main.jsp'">로그인</button>
                <button type="button" class="btn btn-danger bg-gradient sign-up" onclick="location.href='signUp.jsp'">회원가입</button>
            </form>
        </div>
>>>>>>> 9177ea5 add
    </div>

</body>
</html>
