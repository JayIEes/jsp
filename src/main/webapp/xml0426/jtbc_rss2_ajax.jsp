<%@page import="java.util.List"%>
<%@page import="org.jdom2.Element"%>
<%@page import="java.net.URL"%>
<%@page import="org.jdom2.input.SAXBuilder"%>
<%@page import="org.jdom2.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	$("#rss").change(function(){
		
		var rss=$("#rss").val();
		//alert($("#rss").selectedIndex)
		if(confirm("뉴스를 확인하시겠습니까?")){
			//https://fs.jtbc.joins.com/RSS
			//AJAX를 사용하여 XML을 요청하고 이전 디자인처럼 파싱하여 보여주기
			$.ajax({
				url:"https://fs.jtbc.joins.com/RSS"+rss,
				dataType:"xml",
				type:"get",
				error:function(xhr){
					alert(xhr.status)
				},
				success:function(xml){
					var output="<table class='table'>";
					var i=0;
					$(xml).find("item").each(function(i,items){
							output+="<tr><td>"+(i+1)+"</td><td><a href="+$(items).find("link").text()+">"+$(items).find("title").text()+"</a></td></tr>";
							output+="<tr><td>"+$(items).find("pubDate").text()+"</td><td>"+$(items).find("description").text()+"</td></tr>";
							
					})
						
					$("#news").html(output);
				}
			})
		}
	})
});//ready
</script>
</head>
<body>
<%
String[] rssTitle={"속보","정치","경제","사회","국제","문화","연예","스포츠"
		,"풀영상","뉴스랭킹","뉴스룸","아침&amp;","썰전 라이브","정치부회의"};

		String[] rssURL={"/newsflash.xml",
		"/politics.xml",
		"/economy.xml",
		"/society.xml",
		"/international.xml",
		"/culture.xml",
		"/entertainment.xml",
		"/sports.xml"
		,"/fullvideo.xml",
		"/newsrank.xml",
		"/newsroom.xml",
		"/morningand.xml",
		"/ssulzunlive.xml",
		"/politicaldesk.xml"};

pageContext.setAttribute("rssTitle", rssTitle);		
 %>
<select id="rss">
<option value="none">-----뉴스 선택-----</option>
<%for(int i=0; i<rssTitle.length; i++){ %>
<option value="<%=rssURL[i]%>"><%=rssTitle[i]%></option>
<%} %>
</select>
<div id="news"></div>
</body>
</html>



