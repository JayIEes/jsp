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
    <div class="registerStep1">
        <div style="text-align: center;">
            <a href="main1.html">
                <div class="logoDiv" style="margin-bottom: 30px;"></div>
            </a>
        </div>

        <div class="registerBox1">
            <div class="findingInput" style="text-align: center;">
               
                <div class="findingInputText">아이디 찾기</div>
                <input type="text" placeholder="이름" />  
               <input type="text" placeholder="휴대폰 번호" />  
               <div class="findingBtns">
               <input type="button" value="아이디 찾기" onclick="location.href='idResult.jsp'" style="display: block;"/>
               </div>
                <div style="height: 30px;"></div>
               <div class="findingInputText" >비밀번호 찾기</div> 
               <input type="text" placeholder="이름"/>  
               <input type="text" placeholder="휴대폰 번호" />  
               <input type="text" placeholder="이메일" />  
                
                <div class="findingBtns">
                    <input type="button" value="비밀번호 찾기" onclick="location.href='settingNewPassword.jsp'"
                style="display: block; color: #edeaea; background-color: rgb(150, 150, 150);" />
                    </div>
            </div>
        </div>

    </div>
</body>
</html>