<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
	session.invalidate();
	response.sendRedirect("index.jsp");
%>