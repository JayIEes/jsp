<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<!-- css 파일 -->
<link rel="stylesheet" type="text/css"  href="style1.css">
<!-- JS파일 -->
<script type="text/javascript" src="file.js"></script>



<script type="text/javascript">
$(function(){
	
});//ready
</script>
</head>

<body>

<div style="width:930px; display: flex; flex-direction: column; align-content: center; margin:0px auto;">
    <div class="loginPopup">
        <div style="" >
        	<img src="images/loginAd.JPG" style="height: 556px; object-fit:cover;"/>
        </div>

        <div style="display: flex; flex-direction: column; justify-content: flex-start; ">
            <div class="smallClose">
                 <input type="button" value="x" class="littleX"/>
           
            </div>
            <div class="loginBox">
                <h2 style="margin-bottom: 24px; font-weight: 500;">로그인</h2>
                <form action="" method="get" >
                    <input class="input" type="text" placeholder="이메일을 입력해주세요." name="id" />
                    <input class="input" type="password" placeholder="비밀번호를 입력해주세요." name="pass" />
                    <input class="loginButton" type="button" value="로그인"  
                    onmouseover="$('.loginButton').css('background-color','rgb(240, 192, 79)')" 
                    onmouseout="$('.loginButton').css('background-color','#f3d75b')" />
                </form>
                <div style="font-weight: bold; font-size: 15px; text-align: right;">
                <a href="#void">
                    아이디·비밀번호 찾기
                </a>
                <div>
                    <input class="regisButton" 
                    type="button" value="회원가입" 
                    onmouseover="$('.regisButton').css('background-color','#e5e9f4')" 
                    onmouseout="$('.regisButton').css('background-color','#FFFFFF')" />
                </div>
            </div>
            </div>
        </div>
    </div>
    
</div>

</body>
</html>