<%@page import="java.util.ArrayList"%>
<%@page import="day0406.TestVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="스크립틀렛 사용"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--공통 CSS-->
<link rel="stylesheet" type="text/css" href="http://<%=application.getInitParameter("domain") %>/html_prj/common/CSS/main_20220321.css">
<style type="text/css">
.td{width:200px; background-color: #333; color:#FFFFFF;}
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
	//scriptlet : method내에서 정의하는 java code를 작성
	String msg=""; //지역변수 선언 
%>

<div>
	<% 
	//_jspService method안에 코드가 생성되므로 위의 코드를 아래에서 사용 가능.
	msg="오늘은 수요일 입니다.";
	%>
	<%= msg %>
</div>

<div>
	<%for(int i=1; i<7; i++){ %>
	<h<%=i %>><%= msg %></h<%=i %>>
	<% }//end for %>
</div>

<div>
	<select class="inputBox">
	<%
		int nowYear=Calendar.getInstance().get(Calendar.YEAR);
		//나이가 20살에 해당하는 년도 option에 선택
		int flagYear=nowYear-20+1;
		for(int i=nowYear; i>1949; i--){
	%>
		<option value="<%=i%>"<%=i==flagYear?" selected='selected'":""%>><%=i %></option>
	<%
		}//end for
	%>
	</select>
</div>

<div>
	<select>
	<%for(int i=-2; i<3 ; i++){%>
	<option<%=nowYear+i==nowYear?" selected='selected'":"" %>><%=nowYear+i%></option>
	<% }//end for %>
	</select>
</div>


<div>
	<%
	String[] names={"정인선","권용현","강현모","신유철","서희수"};
	%>
	
	<table>
	<tr>
	<% for(int i=0; i<names.length; i++){ %>
		<td class="td">
		<img<%=names[i]=="권용현"?" src='http://localhost/jsp_prj/common/images/rabbit.png'"
		:" src='http://localhost/jsp_prj/common/images/normal.png'" %>/><br/>
		<%=names[i] %>
		</td>
	<%} %>
	</tr>
	</table>
</div>

<%
List<TestVO> list=new ArrayList<TestVO>();
list.add(new TestVO("정인선","서울시 강남구 역삼동",25));
list.add(new TestVO("권용현","서울시 구로구 구로동",26));
list.add(new TestVO("강현모","서울시 수원구 영통구",24));
list.add(new TestVO("신유철","인천시 부평구 역삼동",27));
%>
<table class="table table-striped">
<thead>
<tr>
	<th>번호</th>
	<th>이름</th>
	<th>주소</th>
	<th>나이</th>
</tr>
</thead>

<tbody>
<%
TestVO tv=null;
for (int i=0; i<list.size(); i++){ 
	tv=list.get(i);
%>
<tr>
<td><%=i+1 %></td>
<td><%=tv.getName() %></td>
<td><%=tv.getAddr() %></td>
<td><%=tv.getAge()  %></td>
</tr>
<%}//end for %>
</tbody>

</table>
</body>
</html>