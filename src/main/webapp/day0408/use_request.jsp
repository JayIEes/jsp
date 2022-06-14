<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="request 내장객체를 사용한 접속자의 정보 얻기"%>
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
<div>
<ul>
	<li>내장객체 : <%= request %></li> <!-- HttpServletRequset를 구현한 객체명 -->
	<li>요청 URL : <%= request.getRequestURL() %></li> 
	<li>요청 Protocol : <%= request.getProtocol() %></li> 
	<li>요청 서버명 : <%= request.getServerName() %></li> 
	<li>요청 서버포트 : <%= request.getServerPort() %></li> 
	<li>요청 URI : <%= request.getRequestURI()%></li> 
	<li>Servlet Path : <%= request.getServletPath()%></li> 
	<li>Context Path : <%= request.getContextPath()%></li> 
	<li>QueryString : <%= request.getQueryString()%></li> <!--QueryString 존재하지 않으면 null -->
	<li>Web Parameter : <%= request.getParameter("name")%></li> <!-- parameter get방식 post방식 모두 존재 -->
	<li>Web Parameter : <%= request.getParameter("age")%></li>
	<li>접속자 컴퓨터의 IP address : <%= request.getRemoteAddr()%></li>
	<li>접속자 port : <%= request.getRemotePort()%></li>
</ul>
</div>

<div>
Header정보<br/>
<ul>
<% 
	Enumeration<String> en=request.getHeaderNames();
	String headerName="";
	String headerValue="";
	while( en.hasMoreElements() ){
		headerName=en.nextElement();
		headerValue=request.getHeader(headerName);
		%><li><strong><%=headerName%></strong> : <%=headerValue %></li>
	<%
	}//end while
	%>
</ul>
</div>

<a href="use_request.jsp?name=test&age=20">요청</a>
<form action="use_request.jsp" method="get">
	<input type="hidden" name="name" value="getName"/>
	<input type="hidden" name="age" value="20"/>
	<input type="submit" value="GET전송" class="btn btn-warning"/>
</form>
<form action="use_request.jsp" method="post">
	<input type="hidden" name="name" value="postName"/>
	<input type="hidden" name="age" value="30"/>
	<div class="d-grid gap-2">
	<input type="submit" value="POST전송" class="btn btn-primary"/></div>
</form>
</body>
</html>



