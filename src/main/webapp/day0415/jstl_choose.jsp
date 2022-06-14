<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="여러 개의 조건을 비교할 때"
    %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
	$("#blood").change(function(){
		$("#frm").submit();
	})
	$("#btnScore").click(function(){
		$("#frm2").submit();
	})
	
	
});//ready
</script>
</head>
<body>
<form action="jstl_choose.jsp" id="frm">
	<label>혈액형 선택</label>
	<select name="blood" id="blood"> <!-- select은 선택한걸 다시 선택하면 이벤트 발생 안함 -->
		<option value="none"${param.blood eq 'none'?" selected='selected'":""}>-----모름-----</option>
		<option value="a"${param.blood eq 'a'?" selected='selected'":""}>A</option>
		<option value="b"${param.blood eq 'b'?" selected='selected'":""}>B</option>
		<option value="ab"${param.blood eq 'c'?" selected='selected'":""}>AB</option>
		<option value="o"${param.blood eq 'd'?" selected='selected'":""}>O</option>
	</select>
</form>
<c:choose>
<c:when test="${param.blood eq'a' }">
	<img src="images/blood_a.PNG"/>
</c:when>
<c:when test="${param.blood eq'b' }">
	<img src="images/blood_b.PNG"/>
</c:when>
<c:when test="${param.blood eq'ab' }">
	<img src="images/blood_ab.PNG"/>
</c:when>
<c:when test="${param.blood eq'o' }">
	<img src="images/blood_o.PNG"/>
</c:when>
<c:otherwise>
	<img src="images/default.PNG"/>
</c:otherwise>
</c:choose>

<div>
<form action="jstl_choose.jsp" id="frm2">
<label>점수</label>
<input type="text" name="score" class="inputBox"/>
<input type="button" value="입력" id="btnScore" class="btn btn-info"/>
</form>
</div>
<!-- choose를 사용하여 입력된 점수의 학점 출력 
90-100 A / / / / / /-->
<c:set var="score" value="${param.score }"/>
<c:if test="${(score gt -1) and (score lt 101) }">
<c:choose>
<c:when test="${(score gt 89)}">
	<span>A</span>
</c:when>
<c:when test="${(score gt 79) && (score lt 90) }">
	<span>B</span>
</c:when>
<c:when test="${(score gt 69) && (score lt 80) }">
	<span>C</span>
</c:when>
<c:otherwise><span>F</span></c:otherwise>
</c:choose>
</c:if>

</body>
</html>








