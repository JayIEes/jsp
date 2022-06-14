<%@page import="org.json.simple.JSONObject"%>
<%@page import="day0422.InfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%  
 String id=request.getParameter("id");
 
 id=id.trim();
 
 InfoDAO iDAO=InfoDAO.getInstance();
 boolean flag=iDAO.selectID(id);
 
 JSONObject jsonObj=new JSONObject();
 
jsonObj.put("flag",flag);

	 
 out.print(jsonObj.toJSONString());

 %>
 
 
 