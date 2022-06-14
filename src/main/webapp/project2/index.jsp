<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="shortcut icon" href="http://localhost/jsp_prj/project2/images/kmong_icon.jpg">
<title>kmong</title>

<style type="text/css">
 img{
    image-rendering: auto;
    image-rendering: crisp-edges;
    image-rendering: pi;
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

<!-- footer css -->
 <link rel='stylesheet' type='text/css' media='screen' href='footer.css'>
 

<script type="text/javascript">

$(function(){
	$(".loginBtn").click(function(){
		$("#modal").css("display","flex")
	})
	$("#closeBtn").click(function(){
		$("#modal").css("display","none")
	})
	$("#bg").click(function(){
		$("#modal").css("display","none")
	})

});//


</script>
</head>

<body>
<div id="wrap" >

    <div class="header">
        <div class="header1">
            <a href="index.jsp"><div class="logoDiv"></div></a>
            <div style="flex-grow: 1;"></div>
            <form>
                <div class="searchDiv">
                    <div class="searchBarDiv">
                            <input class="searchInput" type="text" placeholder="서비스, 전문가를 검색해보세요" maxlength="15" id="searchBar" onclick="longer()"; onblur="shorter()"/>
                            
                            <div class="searchButton">
                                <a href="#void"><img src="images/search.png" style="width:20px; padding-bottom:2px; object-fit: cover;" /></a>
                            </div> 
                    </div>
                </div>
            </form>
            
            <div style="width: 260px;" class="buttons"> 
            	<!-- -------로그인 팝업-------- -->
                <input type="button" value="로그인" class="loginBtn"/><!-- id="openBtn" -->
                
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
								                <div style="font-weight: bold; font-size: 13px; text-align: right;">
								                <a href="findingInfo.jsp">
								                    아이디·비밀번호 찾기
								                </a>
								                <div>
								                    <input class="regisButton" type="button" value="회원가입" style="font-size: 16px;"
								                    onclick="location.href='registerStep1.jsp'" />
								                </div>
								            </div>
								            </div>
								        </div>
								    </div>
								    
								</div>
						  </div>
					</div>
                
                
                
                
                
                
                <!-- 메인 회원가입 버튼 -->
                <input type="button" value="무료 회원가입" class="registerBtn" onclick="location.href='registerStep1.jsp'"/>
            </div>
        </div>
        <div class="header2">
            <div class="category">
                <div class="dropdown" >
                    <div style="height: 100%; width: 200px; margin-left: 10px;">
                        <img class="categories1" src="images/hamburger-menu.png" style="margin-bottom: 3px; width: 25px; height: 28px; object-fit: cover;"/>
                        <input class="categories2" type="button" value="전체 카테고리"/>
                        <img class="categories" src="images/drop_down.PNG" style="margin-bottom: 3px; width: 12px; height: 5px; object-fit: cover;"/>
                        </div>
                    
                    <div class="dropdown-content">
                    <div id="menuUnderline" style="width: 180px; height: 5px; background-color: #f0c04f; display: none;"></div>
                    <span style="font-size: 8px; padding-left: 10px; padding-top: 10px;">비즈니스</span>
                   <!-- 카테고리 메뉴 DB에서 불러오기 -->
                    <a href="#void">IT/Programming</a>
                    <a href="#void">영상/사진</a>
                    <a href="#void">마케팅</a>
                    <a href="#void">디자인</a>
                    <a href="#void">번역 통역</a>
                    </div>

                </div>
            </div>
        </div>
    </div>



    <div class="bodyContainer">
        <div class="adBody">
          
            <div class="adDiv">
                <div class="adBox1">
                    <span>
                        <h1 class="adText">프리랜서 마켓 No.1 크몽에서<br/>원하는 전문가를 찾아보세요!</h1>
                    </span>

                   <form class="adBox1Form">
                       <div class="adSearch2">
                           <div class="adSearch">
                           
                            <form>
                            <div class="typewriter"><input type="text" value="웹페이지 제작" id="mainInput"
                            style="width:150px; border-top:0px; border-left:0px;border-bottom:0px;">
                            </div>
<!--                             <div class="typewriter"><h5>웹페이지 제작</h5></div> -->
                            <!-- <div class="typewriter">
                                <h1>The cat and the hat.</h1>
                              </div> -->
                              
                               <div class="whiteSearchBtn">
                               </div>
                               
                              </form>
                           </div>
                           
                        </div>
                    </form> 
                    <div class="tagBox">
                        <div class="tags"><a style="opacity: unset;" href="#void">#웹페이지제작</a></div>
                        <div class="tags"><a href="#void">#로고</a></div>
                        <div class="tags"><a href="#void">#인스타</a></div>
                        <div class="tags"><a href="#void">#일러스트</a></div>
                        <div class="tags"><a href="#void">#영상편집</a></div>

                    </div>
                </div>

<!-- //////////////////////////////////////-->

            





<!--////////////////////////////////////-->

                  <!-- style="width: 577px; height: 376px; border: 1px solid #333;"> -->
                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
                        </div>
                        
                         <div class="carousel-inner" style="height: 375px; border-radius: 8px;">
                         <div class="carousel-item active">
                            <img src="images/adImg1.PNG" class="d-block w-100" style="height: 375px;  width: 540px; object-fit: cover;">
                          </div>
                          <div class="carousel-item">
                            <img src="images/adImg2.PNG" class="d-block w-100" style="height: 375px;  width: 540px; object-fit: cover;">
                          </div>
                          <div class="carousel-item">
                            <img src="images/adImg3.PNG" class="d-block w-100" style="height: 375px;  width: 540px; object-fit: cover;">
                          </div>
                          <div class="carousel-item">
                            <img src="images/adImg4.PNG" class="d-block w-100" style="height: 375px;  width: 540px; object-fit: cover;">
                          </div> 
                        </div>
                        
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                        </button>
                      
                      
                </div>
            </div>
        </div>



        <div class="mainCategoryImg">
            <div style="padding-top: 70px;">
                <span style="font-size: 20px; font-weight:bold; color: #303441; font-family: 'Metro Sans',sans-serif;">
                 카테코리에서 원하는 서비스를 찾아보세요!
                </span>
            </div>
            
            <!-- 카테고리 이미지 들어가는 부분-DB작업 들어감. -->
            <div class="mainCategoryImgCollection">
                <div style=" font-size: 14px; font-weight: bold; height: 20px;">비즈니스</div>
                <div class="articles">
               
               
                <% 
                String[] category={"디자인","마케팅","영상 사진 음향","IT/프로그래밍","번역 통역" };
                
                for(int i=0; i<category.length;i++){
                	%>
                        <div class="articleSquare">
                        <a href="#void" >
                            <img src="images/test.JPG" />
                            <div class="mainSpan"><%= category[i]%></div>
                        </a>
                        </div>
                <%
                }
                %>
                  
                </div>
            
            </div>
        </div>
        
        <!-- 더미 -->
        <div class="magePageImg2">
            <div>
                <span style="font-size: 20px; font-weight:bold; color: #303441; font-family: 'Metro Sans',sans-serif;">크몽에서 가장 인기있어요!</span>
            </div>
            <div class="biggerImg">
            
            <%for(int i=0; i<5; i++){
            	%>
            	<div class="images">
                    <a href="#void">
                    <img src="images/logo.JPG" class="imgs"/>
                    </a>
                </div>
            <% 	
            } 
            %>
            
            </div>
        </div>
        
        <!-- 빠른 커뮤니케이션 더미 부분 -->
        <div style="display: flex; align-items:center; margin-top:70px; height:300px; background-color: antiquewhite;" >
            <div style="display: flex; margin:0px auto;">
                <div style="display: flex; width: 1168px; height: 175px; grid-gap:15px;">
                	<%for(int i=0; i<3; i++){ 
                		%>
                	<img src="images/will_replace.JPG"/>
                	<%
                	}
                	%>
                    
                </div>
            </div>
        </div>
        <div style="width: 1200px; padding-top: 100px; margin: 0px auto;">
            <img src="images/adad.JPG" style="border-radius: 5px;"/>
        </div>
    </div>
    
    
	<%@include file="footer.jsp"%>
        

</div>



<!-------- 0415 수정(회원가입결과 jsp에서 로그인 하러 가기 눌렀을 때 로그인 팝업창 띄우기) - 추가 ------------->
<script type="text/javascript">
if(${param.hid eq 'login'}){
	document.getElementById("modal").style.display='flex';
}//end if
</script>



</body>
</html>