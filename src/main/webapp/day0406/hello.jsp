<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery CDN -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<!-- include summernote-ko-KR -->
<script src="http://<%=application.getInitParameter("domain") %>/html_prj/common/summernote-0.8.18-dist/lang/summernote-ko-KR.js"></script>

<% String name="seo jisuk"; %>
<script type="text/javascript">
$(function() {
	  $('#summernote').summernote({
			  height: 300,
			  focus: true     ,
			  placeholder: '<%=name%>님의 경험을 작성해주세요',
			  lang:'ko-KR',
			  toolbar: [
		          ['style', ['style']],
		          ['font', ['bold', 'underline', 'clear']],
		          ['color', ['color']],
		          ['para', ['ul', 'ol', 'paragraph']],
		          ['table', ['table']],
		          ['insert', ['link', 'picture', 'video']], 
		          ['view', ['fullscreen', 'codeview', 'help']]
		        ]//원하는 것만 집어넣을 수 있다.
			  
	  });//summernote
	  
	});//
</script>
</head>
<body>
hello hello
<div>
<strong><%=name %></strong>님 안녕하세요?
</div>
<form method="post" action="test.jsp">
  <textarea id="summernote" name="editordata"></textarea>
  <br/>
  <input type="submit" value="전송"/>
</form>
</body>
</html>