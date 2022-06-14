<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="파일업로드 폼"
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
		var name=$("#name").val();
		
		if(name==""){
			alert("이름 필수입력");
			$("#name").focus();
			return;
		}//end if
		
		//업로드 파일은 이미지 파일만 업로드 가능. 업로드 가능 확장자는 png, jpg, gif, bmp만 가능
		//위의 해당하는 파일이 아니면 alert로 "이미지만 업로드 가능합니다."를 보여준다.
		
		var fileName=$("#upfile").val();
		let ext=fileName.toLocaleLowerCase().substr(fileName.lastIndexOf(".")+1);
		var compareExt="png,jpg,gif,bmp".split(",");
		var flag=false;
		
		for(var i=0 ; i <compareExt.length;i++){
			if(compareExt[i] == ext ){
				flag=true;
				break;
			}
		}
		
		if(!flag){
				alert(fileName+ "업로드 불가\n이미지만 업로드 가능합니다.\n가능확장자 png,jpg,png,bmp");
				return;
		}//end if
		$("#frm").submit();
		
	});//click
});//ready
</script>
</head>
<% 
session.setAttribute("insertFileFlag", false);


String[] lang={"Java","C/C++","PyThon","VB","ASP","PHP","JSP"}; 
pageContext.setAttribute("lang", lang);
%>
<body>
<form action="upload_process.jsp?" method="post" name="frm" id="frm" enctype="multipart/form-data">
<label>업로더명</label>
<input type="text" name="name" id="name" class="inputBox"/><br/>
<label>관심언어</label><br/>
<c:forEach var="lang" items="${lang}">
<input type="checkbox" name="lang" id="lang" value="${lang}"/>
<c:out value="${lang }"/>
</c:forEach><br/>
<label>파일선택</label>
<input type="file" name="upfile" id="upfile" class="inputBox" style="width:300px"/><br/>

<input type="button" value="전송" id="btn" class="btn btn-info"/><br/>
</form>
<a href="../day0420/file_list.jsp">이동</a>
</body>
</html>












