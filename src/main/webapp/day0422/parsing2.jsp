<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%
JSONArray jsonArr=new JSONArray();

JSONObject json=new JSONObject();
json.put("name","제임스");
json.put("age",20);

JSONObject json2=new JSONObject();
json2.put("name","마이클");
json2.put("age",22);

JSONObject json3=new JSONObject();
json3.put("name","조세프");
json3.put("age",25);

jsonArr.add(json);
jsonArr.add(json2);
jsonArr.add(json3);

out.print(jsonArr.toJSONString());
%>