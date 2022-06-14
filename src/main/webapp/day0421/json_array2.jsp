<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day0406.TestVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"
    %>
<%
List<TestVO> list=new ArrayList<TestVO>();
list.add(new TestVO("크리스","서울시 강남구 역삼동",24));
list.add(new TestVO("제임스","서울시 동대문구 동대문동",26));
list.add(new TestVO("마이클","서울시 강서구 발산동",22));
list.add(new TestVO("챈들러","서울시 구로구 개봉동",21));

//위의 리스트를 사용하여 JSONArray생성
//JSONArray는 name addr age
//1. JSONArray생성
JSONArray ja=new JSONArray();


//2.JSONObject을 선언
JSONObject jsonObj=null;

//3. 데이터만큼 반복
for(TestVO tv :list){
	//json
	jsonObj=new JSONObject();
	//값 넣기
	jsonObj.put("name",tv.getName());
	jsonObj.put("addr",tv.getAddr());
	jsonObj.put("age",tv.getAge());
	
	ja.add(jsonObj);
	
}//end for

out.println(ja);


%>