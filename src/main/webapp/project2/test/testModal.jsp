<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--공통 CSS-->

<style type="text/css">
button {
          background-color: #F9B514;
          padding: 5px 10px;
          border-radius: 4px;
          cursor: pointer;
        }

        #modal{
          position: fixed;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          justify-content: center;
          align-items: center;
          display: none;
        }

        #bg {
          width: 100%;
          height: 100%;
          background-color: rgba(0, 0, 0, 0.6);
        }

        .modalBox {
          position: absolute;
         /*  background-color: #fff;
          width: 400px;
          height: 200px;
          padding: 15px; */
        }

        .modalBox [type="button"] {
          display: block;
          
        }

  
.loginPopup{
  	/* width: 1024px;
    height: 656px;  */
    
    /* width: 924px; */
    height: 556px;
    border-radius: 10px;
    
    display: flex;
    flex-direction: row; 
    overflow: hidden;

}


.loginBox{
    display: flex;
    flex-direction: column;
	
 	/* width: 420px;
    height: 576px; */
    width: 342px;
    height: 576px;
    padding-left: 40px;
    padding-right: 40px;
    padding-top: 40px;
    padding-bottom: 40px;
}


.input{
    margin-bottom: 15px;
    padding-left: 20px;
    width: 320px;
    height: 50px ;
    border: 1px solid #dedede;
    border-radius: 5px;
}

.loginButton{
    margin-bottom: 15px;
    width: 342px;
    height: 50px ;
    background-color: #f3d75b;
    border: 0px;
    border-radius: 5px;
    font-weight: bold;
    text-align: center;
    transition: background-color 0.3s ease 0s, border-color 0.3s ease 0s;
}

.regisButton{
    width: 342px;
    font-weight: bold;
    text-align: center;
    background-color: #FFFFFF;
    color: rgb(91, 91, 91);
    height: 50px ;
    margin-top: 80px;
    border: 1px solid #4b6af4;
    border-radius: 5px;
}

.smallClose{
	display: flex;
    flex-direction: row;
    justify-content: flex-end; 
    /* float: right; */
    height: 40px;
}

.littleX{
    font-size: 35px;
    font-weight: 900;
    background-color: transparent;
    margin-right:13px;
    border: 0px;
}
        
</style>
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<script type="text/javascript">

/* $(function(){
	$(".openBtn").click(function(){
		$(".modal").removeClass("hidden");
	})
	
	$(".")
}) */

$(function(){
	$("#openBtn").click(function(){
		$("#modal").css("display","flex")
	})
	$("#closeBtn").click(function(){
		$("#modal").css("display","none")
	})
	$("#bg").click(function(){
		$("#modal").css("display","none")
	})
	
})



</script>
</head>
<body>
<button id="openBtn">모달창 open</button>
<div id="modal">
  <div id="bg"></div>
	  <div class="modalBox">
				    
			<div style="">
			    <div class="loginPopup">
			        <div>
			        	<img src="images/loginImg.PNG" style="border:0px; height: 556px; object-fit:cover;"/>
			        </div>
			
			        <div style="display: flex; flex-direction: column; justify-content: flex-start; background-color: #ffffff; ">
			            
			            <div class="smallClose">
			            <input type="button" value="x" class="littleX" id="closeBtn" style="cursor: pointer;"/> 
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
	  </div>
</div>
</body>
</html>



