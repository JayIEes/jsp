<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    
    <!-- 수정 - 추가함  -->
    <link rel="shortcut icon" href="http://localhost/jsp_prj/project2/images/kmong_icon.jpg">
	<title>kmong</title>
	
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
    <script src='main.js'></script>
    <!-- jQuery CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css"  href="style1.css">
    
    <script type="text/javascript" src="file.js"></script>


    <style>
      /* modal창 관련 CSS */
      .background{
        /* 스크롤이 발생하더라도 고정 */
        position: fixed; 
        top:0;
        left:0;
        width:100%;
        height:100%;
        background-color: rgba(0, 0, 0, 0.4);
        /*숨기기*/
        z-index: -1;
        opacity: 0;
		
      }

      .show{
        opacity: 1;
        /* 화면의 맨앞 */
        z-index:1000;
        transition:all 0.5s;
      }

      .window{
        position:relative;
        width: 100%;
        height: 100vh;
        color:#26282b;
      }

      .modal_body{
        position: absolute;
        top: 50%;
        left: 50%;
        background-color: #ffffff;
        box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);
        width: 600px;
        height: 350px;
        transform: translate(-50%, -40%);
        text-align: center;
        padding-top:30px;
      }


      .show .modal_body{
        transform: translate(-50%, -50%);
        transition: all 0 0.5s;
      }

      .modal_bottom{
        padding-top: 30px;
        height: 35%;
        z-index: -1;
        background-color:rgba(248,214,72);
        /* background-color:#45436C; */
      }

      .close{
        width:170px;
        height:50px;
        background-color:#26282b;
        color:white;
        font-size:18px;
      }

      .close:hover{
        color:gray;
      }
      
   #btnStyle1{
     width: 150px;
     height:35px; 
     margin: 0px; 
     background-color: rgb(193, 192, 192);
     text-align: center; 
     padding-left: 15px; 
     padding-right: 15px; 
     color: #ffffff;
     }
   #btnStyle2{
     height: 35px; 
     width: 150px; 
     margin: 0px; 
     background-color: rgb(193, 192, 192);
     text-align: center; 
     padding-left: 15px; 
     padding-right: 15px; 
     color: #ffffff;
     }
 
select {
  -webkit-appearance: none;
  appearance: none;
}

.select-wrapper {
  position: relative;
}

.select-wrapper::after {

  margin-top:17px;
  content: "▼";
  font-size: 1rem;
  top: 6px;
  right: 10px;
  position: absolute;
  pointer-events:inherit;
}


</style>
    
<script type="text/javascript">

function selectAll(selectAll) {
	const checkboxes = document.getElementsByName('clause');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked;
	  })
}//selectAll




</script>

</head>
    <body>
    <div class="registerStep2">
        <div style="text-align: center;">
           <a href="index.jsp">
                <div class="logoDiv" style="margin-bottom: 30px;"></div>
            </a>
        </div>

        <div class="registerBox2">
            <div class="registerLast">
            <!-- //////////////////form////////////////// -->
                <form action="" method="get" name="frm">
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
                          <input type="button" value="이메일 중복확인" class="confirm-exists show"  id="btnStyle1"/>
                        </div>
                    </div><br/><br/>

                    <!-- Modal Design -->
                    <div class="background">
                      <div class="window">
                        <div class="modal_body">
                          <!-- <span class="material-icons" style="font-size:130px; color:#ab0000;">highlight_off</span> -->
                          <span class="material-icons-outlined" style="font-size:130px; color:#f0c04f;">outlet</span>
                          <!-- 나중에 JSP로 flag에 따라 내용수정 -->
                          <h2>회원정보 존재</h2>
                          <h5>입력하신 계정은 이미 존재하는 계정입니다</h5><br/>
                          <div class="modal_bottom">
                            <button type="button" class="close btn">닫기</button>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="regiDiv">
                        <div class="requirement">비밀번호<label>&nbsp;*</label></div>
                        <input type="text" placeholder="비밀번호를 입력해주세요." style="margin-bottom: 3px;"/>
                        <input type="text" placeholder="비밀번호를 한번 더 입력해주세요." />
                    </div>
                    <div class="regiDiv">
                        <div class="requirement">닉네임<label>&nbsp;*</label></div>
                        <input type="text" placeholder="닉네임을 입력해주세요." style="margin-bottom: 8px;"/>
                        <div style="float: right;">
                            <input type="button" value="닉네임 중복확인" class="confirm-exists show" id="btnStyle2"/>
                        </div><br/><br/>
                    </div>
                    <div class="regiDiv">
                        <div class="requirement">비즈니스 분야<label>&nbsp;*</label></div>
                      
                      	<div class="select-wrapper">
                        <select>
                            <option>비즈니스를 선택해주세요</option>
                            <option>테스트</option>
                            <option>테스트</option>
                            <option>테스트</option>
                            <option>테스트</option>
                        </select>
                  		</div>
                    </div>
                    
                    
                    <div class="regiDiv">
                        <div class="requirement">관심사 선택(중복선택 가능)<label>&nbsp;*</label></div>
                        <div class="select-wrapper">
                        <select name="interest">
                            <option>관심사를 선택해주세요</option>
                            <option>테스트</option>
                            <option>테스트</option>
                            <option>테스트</option>
                            <option>테스트</option>
                        </select>
                        </div>
                    </div>
                    
                    
                    <div class="agreementBox">
                        <div class="agreeAll">
                            <input type="checkbox" name="clause" value="selectAll" onclick="selectAll(this)" />
                            <span>모두 동의합니다.</span>
                        </div>
                        <div class="agreements" style="margin-top: 15px;">
                            <input type="checkbox" name="clause"/>
                            <span>만 14세 이상입니다.</span>
                            <span class="redText">(필수)</span>
                        </div>
                        <div class="agreements">
                            <input type="checkbox" name="clause"/>
                            <span>서비스 이용약관에 동의합니다.</span>
                            <span class="redText">(필수)</span>
                        </div>
                        <div class="agreements">
                            <input type="checkbox" name="clause"/>
                            <span>개인정보 수집/이용에 동의합니다.</span>
                            <span class="redText">(필수)</span>
                        </div>
                        <div class="agreements">
                            <input type="checkbox" name="clause"/>
                            <span>이벤트 할인 혜택 알림 수신에 동의합니다. (선택)</span>
                        </div>
                        <div class="agreements">
                            <input type="checkbox" name="clause"/>
                            <span>장기 미접속 시 계정 활성 상태 유지합니다. (선택)</span>
                        </div>
                        
                    </div>

                    <input class="completeBtn" type="button"  value="버튼만 누르면 가입완료!"/>
                </form>

            </div>
        </div>

    </div>


    <!-- Modal JS -->
    <script>

      function show(){
        $(".background").attr("class","background show");
      }
      function close(){
        $(".background").attr("class","background");
      }

      $(".show").click(show);
      $(".close").click(close);


    </script>
</body>
</html>