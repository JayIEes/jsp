<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="JSP요청"%>
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
	$("#href").click(function(){
		location.href="call2.jsp"
	});//click
	
	$("#btnGet").click(function(){
		//JS의 document객체를 사용한 submit
		document.getFrm.submit();
	});//click
	
	$("#btnPost").click(function(){
		//jQuery의 객체를 사용한 submit;
		$("#postFrm").submit();
	});//click
	
});//ready
</script>
</head>
<body>
<div>
<marquee scrollamount="20" direction="left" behavior="alternate">
<h1><strong><%=request.getMethod() %></strong></h1>
</marquee>
</div>
<div>
	<strong>HTML에서 요청</strong>
	<ul>
		<li>링크 : <a href="call2.jsp">요청</a></li>
		<li>
			<form action="call2.jsp" method="get">
			<input type="submit" value="get요청" class="btn btn-primary"/> <!-- submit 권장 안함 -->
			</form> 
		</li>
		<li>
			<form action="call2.jsp" method="post">
			<input type="submit" value="post요청" class="btn btn-primary"/>
			</form>
		</li>
	</ul>
</div>

<div>
	<strong>JavaScript에서 요청</strong>
	<ul>
		<li>
			<a href="#void" id="href">location 요청</a>
		</li>
		<li>
			<form action="call2.jsp" method="get" name="getFrm" id="getFrm">
			<input type="hidden" name="data" value="back-end에 전달할 데이터"/>
			<input type="button" value="JS get요청" class="btn btn-primary" id="btnGet"/>
			</form>
		</li>
		<li>
			<form action="call2.jsp" method="post" name="postFrm" id="postFrm">
			<input type="hidden" name="data" value="back-end에 전달할 데이터"/>
			<input type="button" value="JS post요청" class="btn btn-primary" id="btnPost"/>
			</form>
		</li>
	</ul>
</div>
</body>
</html>




