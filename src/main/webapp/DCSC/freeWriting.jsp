<%@page import="com.board.Dao" %>
<%@page import="com.board.Dto" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
    
<%
	// 함수 호출 
	request.setCharacterEncoding("utf-8");
	String num = request.getParameter("num");
	
	Dao dao = new Dao();
	Dto dto = dao.getOne(num);
	
%>
<!DOCTYPE html>
<html>
<head>
<title>DCSC</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/NavFooter.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
	img {
		width: 500px;
		margin-bottom: 5px;
	}
	
	.hr {
		border-top: 3px solid #29367c;
		padding: 10px;
		background-color: rgb(159, 159, 159, 0.1);
		
	}
	
	.fw-normal {
		border-bottom: 3px solid #29367c;
		color: #A4C7FC;
		padding-bottom: 10px;
		margin-bottom: 20px;
	}
	
	.frist_container {
		width: 65%;
		margin-left: 30%;
		margin-top: 30px;
	}
	
	.info_text {
		display: flex;
		justify-content: space-between;	
	}
	
</style>
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

    <div class="container mx-auto frist_container">
        <h3 class="fw-normal text-start">자유게시판</h3>
    	<div class="second_container">
    		<h5><%=dto.gettitle() %></h5>
    		<div class="info_text">
    			<span>
		    		<span>임승진</span>
		    		<span> | </span>
		    		<span>34분 전</span>
	    		</span>
	    		<span>
		    		<span><%=dto.gettopik() %></span>
		    		<i class="bi bi-eye"></i>
	                <span>23</span>
	                <i class="bi bi-chat"></i>
	                <span>2</span>
	            </span>
    		</div>
    		<hr>
   			<div class="text_container">
            	<img src=<%=dto.getimg() %> class="rounded img-fluid d-block">
            	<p class="text-muted"><%=dto.getcontent() %></p>     
        	</div>
        	<!-- 댓글 -->
			<div class="hr">
				<div>
					<h6>
					<img src="images/profile.png" alt="Avatar" class="img-fluid my-2" style="width: 30px; margin: 0px; border-radius: 50%;" />
						김신영
					</h6>
					<span>그건 알아서 찾아보세요.</span>
				</div>
				<hr>
				
				<div>
					<h6>
					<img src="images/profile.png" alt="Avatar" class="img-fluid my-2" style="width: 30px; margin: 0px; border-radius: 50%;" />
						임승진
					</h6>
					<span>나도 모르겠는데?</span>
				</div>
				<hr>			
			<!-- 댓글 작성 -->
			<div class="input-group mb-3">
			  <input type="text" class="form-control" placeholder="댓글을 작성해주세요.">
			  <button class="btn btn-outline-secondary" type="button" id="button-addon2">작성</button>
			</div>
			</div>
        </div>
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