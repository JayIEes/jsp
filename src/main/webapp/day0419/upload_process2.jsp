<%@page import="kr.co.sist.util.img.ImageResize"%>
<%@page import="java.sql.SQLException"%>
<%@page import="kr.co.sist.dao.FileUploadDAO"%>
<%@page import="kr.co.sist.vo.UploadFileVO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="upload 처리"
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
	
});//ready
</script>
</head>
<body>
<%-- <%
//<form enctype="multipart/form-data">라면 parameter가 전송되지 않기 때문에
//request.getParameter로 HTML Form Control의 입력값을 받을 수 없다.

String name=request.getParameter("name");
String[] lang=request.getParameterValues("lang");
String fileName=request.getParameter("upfile");

%>
이름 : <%=name %>, (${param.name})<br/>
관심언어 : <%=lang %>, (${param.lang})<br/> <!--체크 했다면 주소가 나와야하고 그렇지 않으면 null -->
파일명 : <%=fileName%> , (${param.fileName})<br/>
 --%>
 <%  
 boolean flag=(boolean)session.getAttribute("insertFileFlag");
 
 if(!flag){//true라면
	 
	 
	try{ 
	 String ip=request.getRemoteAddr(); //파라미터를 못받는거지 접속자 컴퓨터 정보는 얻을 수 있음.
	 //<form enctype="multipart/form-data">라면 FileUpload Component를 사용하여 값을 받는다.
	 out.println(ip);
	
	 //1. 업로드 될 파일의 경로 얻기
	 File saveDirectory=new File("E:/dev/workspace/jsp_prj/src/main/webapp/upload");//절대경로
	 
	 //2. 업로드 될 파일의 크기 설정
	 int fileSize=1024*1024*10; // 10MB
	 
	 //3. 파일 업로드 컴포넌트 생성
	 MultipartRequest mr=new MultipartRequest(request,saveDirectory.getPath(),fileSize,"UTF-8",
			 new DefaultFileRenamePolicy() );
	 
	 //파라메터 받기
	 String name=mr.getParameter("name");
	 String[] lang=mr.getParameterValues("lang");
	 pageContext.setAttribute("lang", lang);
	 
	 String fileName=mr.getParameter("upfile"); //파일명은 getParameter로 얻어지지 않는다.
	 String originalName=mr.getOriginalFileName("upfile"); //원본 파일명
	 String fileSystemName=mr.getFilesystemName("upfile"); //FileRenamePolicy 클래스에 의해 변화된 이름 
	//FileRenamePolicy 클래스에 의해 변화된 이름 : 파일명 뒤에 1,2 증가하는 숫자가 붙는다.
	
	
	//DB에 추가하기 위한 VO생성
	UploadFileVO ufVO=new UploadFileVO(0,name,originalName,fileSystemName,ip,"");
	 
	//DB에 추가하기 위한 DAO생성
	FileUploadDAO fuDAO=FileUploadDAO.getInstance();
	
		//insert
		try{
		fuDAO.insertFile(ufVO);
		
		//리스트에서 보여줄 이미지를 생성.
		ImageResize.resizeImage(saveDirectory.getPath()+"/"+fileSystemName, 80, 60);
		
		session.setAttribute("insertFileFlag", true);
		 %>
		 파일이 업로드 되었습니다.<br/>
		 
		 이름 : <%=name %><br/>
		 언어 : 
		 <c:if test="${ empty lang }"> 
		 선택 언어 없음
		 </c:if>
		 <c:forEach var="lang" items="${lang }">
		 <c:out value="${lang }" />
		 </c:forEach>
		 <br/>
		 파일명 : <%=fileName %><br/>
		 Original : <%=originalName %><br/>
		 FileSystem : <%=fileSystemName %><br/>
		 <a href="../day0420/file_list.jsp">이동</a>
		 <%
		}catch(SQLException se){
			se.printStackTrace();
			%>
			문제 발생
			<% 
		}//end catch
	
	}catch(Exception e){
		%>
		업로드 중 예외 발생 : <%=e %>
		<%
	}//end catch
%>
	<a href="upload_form.jsp">업로드 폼</a>
<%
}else{
	 %>
	 새로고침 하셨습니다.
	 <%
 }//end else
 %>
</body>
</html>


