<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="웹 파라미터를 받기위한 "%>
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
<%request.setCharacterEncoding("UTF-8");%>

<!-- VO생성 : 객체만 생성 -->
<jsp:useBean id="pv" class="day0413.ParamVO"/>

<!-- 생성된 VO에 웹 파라메터를 입력 -->
<jsp:setProperty property="*" name="pv"/><br/>
<%
/* TDAO dao=new TDAO();
dao.insert(pv); 이런식으로 하면 됨*/
%>

text : <jsp:getProperty property="text" name="pv"/><br/>
text : <%=pv.getText() %><br/>
password : <jsp:getProperty property="password" name="pv"/><br/>
hidden : <jsp:getProperty property="hid" name="pv"/><br/>
date : <jsp:getProperty property="date" name="pv"/><br/>
file : <jsp:getProperty property="file" name="pv"/><br/>
radio : <jsp:getProperty property="gender" name="pv"/><br/>
select : <jsp:getProperty property="domain" name="pv"/><br/>
checkbox : <jsp:getProperty property="flag" name="pv"/><br/> <!-- on 아니면 null -->
checkbox2 : 배열은 주소 출력 <jsp:getProperty property="loc" name="pv"/><br/>
<% 
String[] loc=pv.getLoc();//배열을 저장
if(loc!=null){
	for(String val:loc){
	%><%=val %>
	<%	
	}//end for
}//end if
%><br/>
숫자로 입력된 값 : <jsp:getProperty property="age" name="pv"/><br/>
<%=pv %>
</body>
</html>









