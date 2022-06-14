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
          background-color: #fff;
          width: 400px;
          height: 200px;
          padding: 15px;
        }

        .modalBox button {
          display: block;
          
        }

        .hidden {
          display: none;
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
	    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur quam nobis quis corrupti amet maxime neque, optio, in illo, voluptatibus consequuntur! Rerum quo ea nulla qui, maxime consectetur magni soluta!</p>
	    <button id="closeBtn">✖</button>
	  </div>
</div>
</body>
</html>



