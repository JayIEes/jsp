<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="http://localhost/jsp_prj/project2/images/kmong_icon.jpg">
<title>kmong</title>
<!--공통 CSS-->

<style type="text/css">
.serviceBtn:hover{
	background-color: #ffffd9;
	border-color:#f5d670;
}
.serviceBtn2:hover{
	background-color: #ffffd9;
	border-color:#f5d670;
}

.btn-subDiv{
margin-top:10px; 
margin-left: 15px;
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
	$(".serviceBtn").mouseover(function(){
		$("#check_1").css("color","#333");
	})
	$(".serviceBtn").mouseout(function(){
		$("#check_1").css("color","#EAEAEA");
	})
	
	$(".serviceBtn2").mouseover(function(){
		$("#check_2").css("color","#333");
	})
	$(".serviceBtn2").mouseout(function(){
		$("#check_2").css("color","#EAEAEA");
	})
});//ready
</script>
</head>

<body>
    <div class="registerStep1">
        <div style="text-align: center;">
            <a href="http://localhost/jsp_prj/project2/index.jsp">
                <!-- <img src="img.png" style="padding-top: 20px; padding-bottom: 20px;"/> -->
                <div class="logoDiv" style="margin-bottom: 30px;"></div>
            </a>
        </div>

        <div class="registerBox1">
            <div class="whichService">
                <h1>크몽에서 어떤 서비스를</h1>
                <h1>이용하고 싶으세요?</h1>
                <p>
                원하는 회원가입 유형을 선택하세요.
                </p>
                <label>서비스를 의뢰하고 싶다면</label>
                <div>
                    <button class="serviceBtn" onclick="location.href='registerStep2.jsp'">
                        <div class="btn-subDiv"><div id="check_1" style="color:#EAEAEA; font-size:18px; font-weight: bold;">✓</div></div>
                        <span>외뢰인으로 가입 </span>
                    </button>
                </div>
                
                <label>내 전문성을 판매하고 싶다면</label>
                <div>
                    <button class="serviceBtn2" onclick="location.href='registerStep2.jsp'">
                        <div class="btn-subDiv"><div id="check_2"  style="color:#EAEAEA;font-size:18px; font-weight: bold;">✓</div></div>
                        <span>전문가로 가입 </span>
                    </button>
                </div>
            </div>
        </div>

    </div>
</body>
</html>