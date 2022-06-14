<%@page import="kr.co.sist.util.cipher.DataDecrypt"%>
<%@page import="kr.co.sist.util.cipher.DataEncrypt"%>
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.security.MessageDigest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="SHA를 사용한 암호화(복호화 되지 않는다. - 원래의 문자열을 아무도 모름)"
    %>
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
<%
String plainText="Hello";//사람이 알아볼 수 있는 일반 문자열 

//입력되는 알고리즘에 대해 길이(키의 길이)가 다른 문자열로 변환되어 나온다.
//원래의 문자열로 돌아갈 수 없다. : 아무도 확인하지 말아야 할 정보 저장할 경우
//SHA는 문자열을 유일한 문자열로 변환 
MessageDigest md=MessageDigest.getInstance("SHA-512");
md.update(plainText.getBytes());
String text1= new String(md.digest());
Base64 base=new Base64();
String text2=new String(base.encode(md.digest()));
%>
<%=text1 %><br/>
<%=text2 %><br/>

<%
String text3 =DataEncrypt.messageDigest("MD5", plainText); //util의 base64 encoding해서 위와 다름 
%>
<%=text3 %><br/>

<%
//1. 키를 넣어 암호화 객체 생성
DataEncrypt de=new DataEncrypt(text3);

// 암호화된 문자열을 얻고 
String cipher = de.encryption(plainText);

//키를 넣어 복호화 객체 생성
DataDecrypt dd=new DataDecrypt(text3);

// 복호화된 문자열을 얻기
String plain=dd.decryption(cipher);
%>
AES로 암호화한 문자열: <%= cipher %><br/>
AES로 복호화한 문자열: <%= plain %><br/>

</body>
</html>










