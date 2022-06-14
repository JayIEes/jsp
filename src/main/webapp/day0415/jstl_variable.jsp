<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="JSTL변수의 사용"
    %>
    <!-- JSTK을 사용하려면 taglib지시자를 선언해야 한다. -->
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!-- 변수의 선언  -->
<c:set var="msg" value="오늘은 금요일"/>
<c:set var="day" value="15"/>

<!-- 출력 -->
<c:out value="msg"></c:out><br/>
<c:out value="day"></c:out><br/>

<!-- 출력: 변수의 값을 출력하려면 EL이나 Expression을 사용한다. -->
<c:out value="${ msg }"></c:out><br/>
<c:out value="${ day }"></c:out>

<!-- 같은 이름의 변수를 여러 개 선언 : 이전의 값이 사라진다. -->
<c:set var="msg" value="오늘은 <strong>금욜</strong>입니다."/>
HTML Tag 해석하지 않는다. :<c:out value="${ msg }"/><br/>
EL을 직접 사용 : ${ msg }<br/>
escapeXml속성 사용: <c:out value="${ msg }" escapeXml="false"></c:out><br/>

<!-- 변수 삭제 : 삭제된 변수는 출력되지 않는다.-->
<c:remove var="msg"/>
msg : <c:out value="${ msg }"></c:out><br/>
day: <c:out value="${ day }"></c:out><br/>

</body>
</html>



