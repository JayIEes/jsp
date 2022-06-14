<%@page import="day0407.BloodVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="CSV데이터 분리 반복"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--공통 CSS-->
<link rel="stylesheet" type="text/css" href="http://<%=application.getInitParameter("domain") %>/common/CSS/main_20220321.css">
<style type="text/css">

</style>
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<script type="text/javascript">
$(function(){
	
});//ready
</script>
</head>
<body>
<%
String csvData="오늘은,금요일,입니다.,내일은 토요일 입니다.,어제는~목요일~입니다.";
pageContext.setAttribute("csvData", csvData);
%>
<ul>
<c:forTokens var="data" items="${csvData}" delims="~">
<li><c:out value="${data }"/></li>
</c:forTokens>
</ul>

<%
//
List<BloodVO> listBlood= new ArrayList<BloodVO>();
listBlood.add(new BloodVO("blood_a.PNG","daum.net","타인에 대한 배려, 쿨하고싶은 열망",1));
listBlood.add(new BloodVO("blood_b.PNG","naver.com","아니오 할 수 있는 능력,내 기분",2));
listBlood.add(new BloodVO("blood_ab.PNG","google.com","감정절제능력,분석력",3));
listBlood.add(new BloodVO("blood_o.PNG","nate.com","개그본능,개그 타이밍 찾는 능력",4));

pageContext.setAttribute("bloodType", listBlood);
%>

<ul>
<c:forEach var="blood" items="${bloodType}">
<c:forTokens var="dataBlood" items="${blood.info}" delims=",">
<li><c:out value="${dataBlood}"/></li>
</c:forTokens>
</c:forEach>
</ul>


</body>
</html>







