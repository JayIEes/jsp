<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="redirect"
    %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:if test="${param.flag eq 'false'}">
    <c:redirect url="https://www.police.go.kr/index.do"/>
    </c:if>
    
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
<a href="jstl_redirect.jsp?flag=true">정상요청</a>
<a href="jstl_redirect.jsp?flag=false">비정상요청</a>
<br/>
<%//211.63.89.xxx 130~153
String[] blockIp={"211.63.89.130","211.63.89.135","211.63.89.140","211.63.89.153"};
//접속자의 ip의 끝구간이 blockIp와 같다면 경찰청으로 이동 
String ip=request.getRemoteAddr();
for(int i=0; i<blockIp.length ; i++){
	if(ip.equals(blockIp[i]) ){
		 %>
		    <c:redirect url="https://www.police.go.kr/index.do"/>
<%
	}
}

%>
<%=ip %>
</body>
</html>








