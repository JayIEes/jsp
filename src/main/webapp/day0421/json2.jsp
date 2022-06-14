<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day0406.TestVO"%>
<%@page import="java.util.List"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%
List<TestVO> list=new ArrayList<TestVO>();
list.add(new TestVO("크리스","서울시 강남구 역삼동",24));
list.add(new TestVO("제임스","서울시 동대문구 동대문동",26));
list.add(new TestVO("마이클","서울시 강서구 발산동",22));
list.add(new TestVO("챈들러","서울시 구로구 개봉동",21));

//1. 데이터의 정보를 저장할 JSONObject 생성
JSONObject jsonObj=new JSONObject();

//2. 값(데이터를 사용할 사용자에게 제공할 정보) 할당 
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
jsonObj.put("pubDate",sdf.format(new Date()));
jsonObj.put("Datacnt",list.size());
jsonObj.put("resultFlag",!list.isEmpty()); //조회 결과가 있니 (데이터가 없으면(조회결과) false로)


//2. 값(제공할 정보) 할당

//2-1. JSONArray 생성
JSONArray jsonArr=new JSONArray();

//2-2 JSONArray에 들어갈 JSONObject 생성
JSONObject jsonTemp=null;

for(TestVO tVO:list){
//2-3 검색된 데이터를 사용하여 JSONObject 생성
	jsonTemp=new JSONObject();
	jsonTemp.put("name", tVO.getName());
	jsonTemp.put("addr", tVO.getAddr());
	jsonTemp.put("age", tVO.getAge());
//2-4 JSONObject을 JSONArray 할당 (n번)
	jsonArr.add(jsonTemp);

}//end for


//2-5 JSONArray를 JSONObject 할당
jsonObj.put("data",jsonArr);



out.println(jsonObj.toJSONString());
%>








