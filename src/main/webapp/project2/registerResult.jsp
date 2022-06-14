<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="http://localhost/jsp_prj/project2/images/kmong_icon.jpg">
<title>kmong</title>
<!--공통 CSS-->
<link rel="stylesheet" type="text/css" href="http://<%=application.getInitParameter("domain") %>/common/CSS/main_20220321.css">
<style type="text/css">

#loginBtn-after-register{
	color: rgb(74, 74, 74); 
	margin-top: 40px; 
	font-size: 18px;
}

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
	
	$("#loginBtn-after-register").click(function(){
		$("#frm").submit();
	});//click
	
})
</script>
</head>

<body>
    <div class="registerStep1">
        <div style="text-align: center;">
            <a href="index.jsp">
                <div class="logoDiv" style="margin-bottom: 30px;"></div>
            </a>
        </div>

        <div class="regisResultBox">
            <div class="whichService" style="text-align: center;">
                <h1>회원가입이 완료되었습니다.</h1>
                
                <div>
                <form id="frm" action="http://localhost/jsp_prj/project2/index.jsp" >
                    <input class="loginButton" id="loginBtn-after-register" 
                    type="button" value="로그인 하기"
                   	onmouseover="$('#loginBtn-after-register').css('background-color','rgb(240, 192, 79)')" 
					onmouseout="$('#loginBtn-after-register').css('background-color','#f3d75b')" />
              		<input type="hidden" name="hid" value="login"/>
                </form>
                </div>
            </div>
        </div>

    </div>
</body>
</html>