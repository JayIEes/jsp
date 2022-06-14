<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
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
	$("#btn").click(function(){
		$("#frm").submit();
	})
});//ready
</script>
</head>
<body>
<%
String[] names={"강산","전민정","정인선","권용현"};
List<String> subject=new ArrayList<String>();
subject.add("JSP Tag");
subject.add("JSP 내장객체");
subject.add("액션태그");
subject.add("EL");
subject.add("JSTL");

//scope객체에 저장
pageContext.setAttribute("names", names);
request.setAttribute("subjects", subject);
%>
<%=subject %> <!-- EL은 접근 안되지만 얘는 됨 --> <br/><br/>

<ul>
<li>배열반복</li>
<c:forEach var="name" items="${names}">
<li><c:out value="${name}"/></li>
</c:forEach>
</ul>
<ul>
<li>리스트반복</li>
<c:forEach var="sub" items="${subjects}">
<li><c:out value="${sub}"/></li>
</c:forEach>
</ul>



<form action="jstl_for_each2.jsp" id="frm">
	<c:forEach var="name" items="${names}">
		<input type="checkbox" value="${name}" name="name"/>
		<c:out value="${name}"/>
	</c:forEach>

<br/>
<input type="button" value="전송" class="btn btn-info" id="btn"/>

</form>
<!-- 전송버튼 클릭시 
체크박스가 선택되었다면 
선택된 체크박스 값 모두 출력 
선택 안됐으면 "선택한 이름 없음" 출력-->

<c:choose>
<c:when test="${ not empty param.name}">
<c:forEach var="name" items="${paramValues.name}">
	<c:out value="${name}"/>
</c:forEach>
</c:when>
<c:otherwise>선택한 이름이 없습니다.</c:otherwise>
</c:choose>


<!--scope 객체에 저장된 subjects를 table로 출력 -->
<table style="border: 1px solid #333">
<tr>
	<th>번호</th>
	<th>세부과목명</th>
</tr>
<c:forEach var="subject" items="${subjects}">
	<c:set var="i" value="${i+1 }"/><!-- set으로 만들어진 i는 기본이 0이다. -->
	<tr>
	<td><c:out value="${i}"/></td>
	<td><c:out value="${subject}"/></td>
	</tr>
</c:forEach>

</table>


</body>
</html>








