<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="modalBox" style="width:930px; display: flex; flex-direction: column; align-content: center; margin:0px auto;">
    <div class="loginPopup">
        <div style="" >
        	<img src="images/loginAd.JPG" style="height: 556px; object-fit:cover;"/>
        </div>

        <div style="display: flex; flex-direction: column; justify-content: flex-start; ">
            <div class="smallClose">
            <input type="button" value="x" class="littleX" id="closeBtn"/> 
           
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
