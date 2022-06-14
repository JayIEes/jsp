<%@page import="day0407.BloodVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day0415.CodeVO"%>

<%@page import="java.nio.charset.CoderResult"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="EL에서 VO method 호출"
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
List<CodeVO> list= new ArrayList<CodeVO>();
list.add(new CodeVO(1,"서울"));
list.add(new CodeVO(2,"경기"));
list.add(new CodeVO(3,"강원"));
list.add(new CodeVO(4,"충청"));
list.add(new CodeVO(5,"전라"));
list.add(new CodeVO(6,"경상"));
list.add(new CodeVO(7,"제주"));

//scope 객체에 값 설정
pageContext.setAttribute("codeList",list);
%>

<label>지역 선택</label>
<select name="locCode">
<c:forEach var="codeData" items="${codeList }">
<option value="${codeData.code }"><c:out value="${codeData.codeText}"/></option>
</c:forEach>
</select>

<%
//
List<BloodVO> listBlood= new ArrayList<BloodVO>();
listBlood.add(new BloodVO("blood_a.PNG","daum.net","타인에 대한 배려, 쿨하고싶은 열망",1));
listBlood.add(new BloodVO("blood_b.PNG","naver.com","아니오 할 수 있는 능력,내 기분",2));
listBlood.add(new BloodVO("blood_ab.PNG","google.com","감정절제능력,분석력",3));
listBlood.add(new BloodVO("blood_o.PNG","nate.com","개그본능,개그 타이밍 찾는 능력",4));

pageContext.setAttribute("bloodType", listBlood);
%>
<table class="table">
<tr>
	<th>번호</th><th>이미지</th><th>정보</th>
</tr>
<!-- scope객체에 설정된 값 출력 -->
<c:forEach var="blood" items="${bloodType}">
<tr>
	<td><c:out value="${blood.num}"/></td>
	<td><img src="<c:out value="images/${blood.imgPath}"/>"/></td>
	<td><a href="http://<c:out value="${blood.url}"/>">
	<c:forTokens var="dataBlood" items="${blood.info}" delims=",">
	<li><c:out value="${dataBlood}"/></li>
	</c:forTokens></a></td>
</tr>
</c:forEach>
</table>


</body>
</html>










