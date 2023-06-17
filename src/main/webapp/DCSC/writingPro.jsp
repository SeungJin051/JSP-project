<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.board.Dto"%>
<%@page import="com.board.Dao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.security.interfaces.RSAKey"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>

<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>

<%
String uploadsPath = getServletContext().getRealPath("/DCSC/uploads"); // 웹 애플리케이션 컨텍스트 경로를 가져온 후, 상대 경로인 "/DCSC/uploads"를 추가
MultipartRequest mr = new MultipartRequest(request, uploadsPath, 1024*1024*1024, "utf-8", new DefaultFileRenamePolicy());
    		//로컬C:Users/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/프로젝트명/uploads(이미지폴더 생성)
    		
//MultipartRequest에서 나머지 파라미터 값 가져오기
    request.setCharacterEncoding("utf-8");
    String num = request.getParameter("num");
    String topik = mr.getParameter("topik"); 
    String title = mr.getParameter("title");
    String content = mr.getParameter("content");
    String fileName = mr.getFilesystemName("img"); // 이미지 파일 이름 가져오기
    String filePath =  "uploads/" + mr.getFilesystemName("img"); //이미지의 파일 경로 가져오기


    Dto dto = new Dto(num, topik, title, filePath, content);
    Dao dao = new Dao();
    dao.Boardchange(dto, "i");

    response.sendRedirect("free.jsp");
%>