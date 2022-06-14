<%@page import="java.util.Random"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%
JSONObject jsonObj=new JSONObject();
jsonObj.put("name", "크리스");
jsonObj.put("age", "28");
jsonObj.put("flag", new Random().nextBoolean());


out.print(jsonObj.toJSONString());
%>