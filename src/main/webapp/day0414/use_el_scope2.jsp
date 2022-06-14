<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="scope객체에 저장된 값 EL에서 사용."
    %>
<%
//scope 객체에 값 설정
pageContext.setAttribute("page", "페이지"); //현재 페이지에서만 사용
request.setAttribute("req", "리퀘"); //forward로 이동된 페이지에서 사용
session.setAttribute("ses", "세션"); // 모든 페이지에서 접속자별로 사용
application.setAttribute("app", "어플리케이션");//모든 페이지에서 모든 접속자가 사용
%>

<jsp:forward page="use_el_scope3.jsp"/>







