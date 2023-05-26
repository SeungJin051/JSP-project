<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>DCSC</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<body>
    <section class="vh-100" style="background-color: #f4f5f7;">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-lg-6 mb-4 mb-lg-0">
                    <div class="card mb-3" style="border-radius: .5rem;">
                        <div class="row g-0">
                            <div class="col-md-4 gradient-custom text-center text-black"
                                style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
                                <img src="images/profile.png" alt="Avatar" class="img-fluid my-5"
                                    style="width: 80px; border-radius: 50%;" />

                                <h5>임승진</h5> <br>
                                <div style="width: 200px; margin-left: 18px;">
                                    <input class="form-control form-control-sm" id="formFileSm" type="file"/>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="card-body p-4">
                                    <h6>프로필 정보</h6>
                                    <hr class="mt-0 mb-4">
                                    <div class="row pt-1">
                                        <div class="col-6 mb-3">
                                            <h6>이메일</h6>
                                            <p class="text-muted">seungjin051@gmail.com</p>
                                        </div>
                                        <div class="col-6 mb-3">
                                            <h6>학번</h6>
                                            <p class="text-muted">202230752</p>
                                        </div>
                                    </div>
                                    <hr class="mt-0 mb-4">
                                    <div class="row pt-1">
                                        <div class="col-6 mb-3">
                                            <h6>등급</h6>
                                            <p class="text-muted">재학생</p>
                                        </div>
                                        <button class="btn btn-danger bg-gradient" type="button"
                                            onclick="location.href='main.jsp'">저장하고 나가기</button>
                                        <!-- <div class="col-6 mb-3">
                                            <h6>Most Viewed</h6>
                                            <p class="text-muted">Dolor sit amet</p>
                                        </div> -->
                                    </div>
                                    <div class="d-flex justify-content-start">
                                        <a href="#!"><i class="fab fa-facebook-f fa-lg me-3"></i></a>
                                        <a href="#!"><i class="fab fa-twitter fa-lg me-3"></i></a>
                                        <a href="#!"><i class="fab fa-instagram fa-lg"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>