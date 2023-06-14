<%@page import="com.board.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>

<%
request.setCharacterEncoding("UTF-8");
String studentNumber = request.getParameter("studentNumber");
String pwd = request.getParameter("pwd");


LoginDAO loginDAO = new LoginDAO();
boolean loginResult = loginDAO.checkLogin(studentNumber, pwd);

System.out.println("학번: " + studentNumber);
System.out.println("비밀번호: " + pwd);

//학번을 사용하여 데이터베이스에서 이름을 가져옵니다.
String nameFromDB = loginDAO.getName(studentNumber);
String gradeFromDB = loginDAO.getGrade(studentNumber);

if (loginResult) {
    // 이름을 세션에 저장합니다.
    session.setAttribute("NAME", nameFromDB);
    session.setAttribute("GRADE", gradeFromDB);
    response.sendRedirect("main.jsp");
} 
else {
    response.sendRedirect("index.jsp");
}
%>
