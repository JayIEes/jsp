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

<script type="text/javascript">
$(document).ready(function(){
	  // Activate Carousel
	  $("#carouselExampleIndicators").carousel({interval: 6000});
	  $("#carouselExampleIndicators").on('slide.bs.carousel', function(){
	    
	    currentIndex = $('carousel-inner.active').index()+1;
	    if (currentIndex=="1") {
	        $("#divBody").css("background-color","#f2f2f2");
	    } else if (currentIndex=="2") {
	        $("#divBody").css("background-color","#f5f6ce");
	    } else {
	        $("#divBody").css("background-color","#ceecf5");
	    }
	  });
	});
</script>
</head>
<body>

<div id="divBody" style="height: 400px; width: 100%; border: 1px solid #333;display:flex; flex-direction: row;
		justify-content: center; grid-gap:30px; align-items: center;">

<!-- ad 왼쪽 칸 -->
<div style="height: 300px; width: 400px; border: 1px solid #333;" >
</div>


<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel"
style="height: 300px; width: 400px; border: 1px solid #333;">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="adImg1.PNG" class="d-block w-100" alt="..." style="height:300px; width:400px; object-fit:cover;">
    </div>
    <div class="carousel-item">
      <img src="adImg2.PNG" class="d-block w-100" alt="..." style="height:300px; width:400px; object-fit:cover;">
    </div>
    <div class="carousel-item">
      <img src="adImg3.PNG" class="d-block w-100" alt="..." style="height:300px; width:400px; object-fit:cover;">
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

<!--  -->
</div>

</body>
</html>