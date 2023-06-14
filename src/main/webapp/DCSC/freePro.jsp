<%@page import="com.board.Dto"%>
<%@page import="com.board.Dao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.security.interfaces.RSAKey"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
<%	
request.setCharacterEncoding("utf-8");
String topik = request.getParameter("topik");
String title = request.getParameter("title");
String img = request.getParameter("img");
String content = request.getParameter("content");

Dto dto = new Dto(topik, title, img, content);
Dao dao = new Dao();
dao.getOne(title);

response.sendRedirect("freeWriting.jsp");
%>
    