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
    <div class="registerStep2">
        <div style="text-align: center;">
            <a href="main1_.jsp">
                <div class="logoDiv" style="margin-bottom: 30px;"></div>
            </a>
        </div>

        <div class="registerBox2">
            <div class="registerLast">
                <form action="" method="get">
                    <h1>딱 이것만 체크하면 가입완료!</h1>
                    <div class="regiDiv">
                        <div class="requirement">이름<label>&nbsp;*</label></div>
                        <input type="text" placeholder="이름을 입력해주세요." />
                    </div>
                    <div class="regiDiv">
                        <div class="requirement">전화 번호<label>&nbsp;*</label></div>
                        <input type="text" placeholder="전화 번호를 입력해주세요." />
                    </div>
                    <div class="regiDiv">
                        <div class="requirement">이메일<label>&nbsp;*</label></div>
                        <input type="text" readonly="readonly" placeholder="이메일을 입력해주세요." style="margin-bottom: 8px;" />
                        <div style="float: right;">
                        <input type="button" value="이메일 중복확인" 
                            style="height: 30px; 
                            width: 150px; 
                            margin: 0px; 
                            background-color: rgb(193, 192, 192);
                            text-align: center; padding-left: 15px; 
                            padding-right: 15px; color: #ffffff;
                            " />
                        </div>
                    </div><br/><br/>
                    <div class="regiDiv">
                        <div class="requirement">비밀번호<label>&nbsp;*</label></div>
                        <input type="text" placeholder="비밀번호를 입력해주세요." style="margin-bottom: 3px;"/>
                        <input type="text" placeholder="비밀번호를 한번 더 입력해주세요." />
                    </div>
                    <div class="regiDiv">
                        <div class="requirement">닉네임<label>&nbsp;*</label></div>
                        <input type="text" placeholder="닉네임을 입력해주세요." style="margin-bottom: 8px;"/>
                        <div style="float: right;">
                            <input type="button" value="닉네임 중복확인" 
                                style="height: 30px; 
                                width: 150px; 
                                margin: 0px; 
                                background-color: rgb(193, 192, 192);
                                text-align: center; padding-left: 15px; 
                                padding-right: 15px; color: #ffffff;
                                " />
                            </div><br/><br/>
                    </div>
                    <div class="regiDiv">
                        <div class="requirement">비즈니스 분야<label>&nbsp;*</label></div>
                        <select>
                            <option>테스트</option>
                            <option>테스트</option>
                            <option>테스트</option>
                            <option>테스트</option>
                            <option>테스트</option>
                        </select>
                    </div>
                    <div class="regiDiv">
                        <div class="requirement">관심사 선택(중복선택 가능)<label>&nbsp;*</label></div>
                        <select>
                            <option>테스트</option>
                            <option>테스트</option>
                            <option>테스트</option>
                            <option>테스트</option>
                            <option>테스트</option>
                        </select>
                    </div>
                    <div class="agreementBox">
                        <div class="agreeAll">
                            <input type="checkbox" />
                            <span>모두 동의합니다.</span>
                        </div>
                        <div class="agreements" style="margin-top: 15px;">
                            <input type="checkbox" />
                            <span>만 14세 이상입니다.</span>
                            <span class="redText">(필수)</span>
                        </div>
                        <div class="agreements">
                            <input type="checkbox" />
                            <span>서비스 이용약관에 동의합니다.</span>
                            <span class="redText">(필수)</span>
                        </div>
                        <div class="agreements">
                            <input type="checkbox" />
                            <span>개인정보 수집/이용에 동의합니다.</span>
                            <span class="redText">(필수)</span>
                        </div>
                        <div class="agreements">
                            <input type="checkbox" />
                            <span>이벤트 할인 혜택 알림 수신에 동의합니다. (선택)</span>
                        </div>
                        <div class="agreements">
                            <input type="checkbox" />
                            <span>장기 미접속 시 계정 활성 상태 유지합니다. (선택)</span>
                        </div>
                        
                    </div>

                    <input class="completeBtn" type="button"  value="버튼만 누르면 가입완료!"/>
                </form>

            </div>

        </div>
    </div>
</body>
</html>