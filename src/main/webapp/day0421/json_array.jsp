<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"
    info="JSONArray의 사용"%>
    
<%
//1. JSONArray 생성
JSONArray ja=new JSONArray();

//2.JSONObject생성
JSONObject jObj=new JSONObject();
jObj.put("name", "크리스");
jObj.put("age", 20);

JSONObject jObj2=new JSONObject();
jObj2.put("name", "제임스");
jObj2.put("age", 21);

JSONObject jObj3=new JSONObject();
jObj3.put("name", "마이클");
jObj3.put("age", 21);

//3. JSONArray추가
ja.add(jObj);
ja.add(jObj2);
ja.add(jObj3);
%>

<%= ja.toJSONString() %>
    
    
    
    
    
    
