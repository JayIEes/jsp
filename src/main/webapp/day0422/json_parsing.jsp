<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="jQuery Parser를 사용한 JSONParsing"
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--공통 CSS-->
<link rel="stylesheet" type="text/css" href="http://<%=application.getInitParameter("domain") %>/common/CSS/main_20220321.css">
<style type="text/css">
#output{
	margin-top: 20px;
	margin-bottom: 20px;
	width: 800px;
	height: 500px;
	overflow: auto;
	border:1px solid #444
}
</style>
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<script type="text/javascript">
$(function(){
	$("#parsing1").click(function(){
		$.ajax({
			url:"http://localhost/jsp_prj/day0422/parsing1.jsp",
			type:"post",
			dataType:"json",
			error:function(xhr){
				alert(xhr.status+"/"+xhr.statusText);
			},
			success:function(jsonObj){
				//alert(jsonObj);
				//서버에서 응답된 JSONObject parsing
				//매개변수명.이름
				var name="";
				var age="";
				
				if(jsonObj.flag ){
					name=jsonObj.name;
					age=jsonObj.age;
				}//end if
				
				$("#name").val(name);
				$("#age").val(age);
			}
		});//ajax
	});//click
	
	
	$("#parsing2").click(function(){
		$.ajax({
			url:"http://localhost/jsp_prj/day0422/parsing2.jsp",
			type:"get",
			dataType:"json",
			error:function(xhr){
				alert(xhr.status);
			},
			success:function(jsonArr){
				
				var output="";
				
				$.each(jsonArr,function(i,jsonObj){
					//alert(i);
					//alert(jsonObj.name);
					//output+="<div><strong>이름</strong> : "+jsonObj.name
					//+", <strong>나이</strong> : "+jsonObj.age+"</div>";
					
					//$("#tab>tbody").append("<tr><td>"+jsonObj.name+"</td><td>"+jsonObj.age+"</td></tr>");
					
					
					output+="<tr><td>"+jsonObj.name+"</td><td>"+jsonObj.age+"</td></tr>"
					$("tbody").html(output);
				});
				//$("#output").html(output);
			}
		});//ajax
	});//click
	
	
	$("#parsing3").click(function(){
		//parsing3.jsp를 비동기 방식으로 요청하여 조회된 데이터를 id가 output인 div에 출력
		//생산일 : 
		//조회건수 :
		//조회결과가 존재하지 않으면 "데이터 없음을 출력"
		//조회결과가 존재하면 레코드별로 input type="text" 를 만들어 값을 넣고 출력 
		$.ajax({
			url:"http://localhost/jsp_prj/day0422/parsing3.jsp",
			type:"post",
			dataType:"json",
			error:function(xhr){
				alert(xhr.status);
			},
			success:function(jsonObj){
				
				var pubDate = jsonObj.pubDate;
				var cnt = jsonObj.dateSize;
				var output="";
				
				if(!jsonObj.dateFlag){
					output+="데이터 없음";
					
				}else{
					
					output+="<label>생산일</label> : "+pubDate+"<br/><label>조회건수</label> : "+cnt+"<br/>";
					
					$.each(jsonObj.resultData,function(i,jsonObj){
					
						output+="</br/>번호 : <input type='text' value='"+jsonObj.num+"'/></br/>";
						output+="업로더 : <input type='text' value='"+jsonObj.name+"'/></br/>";
						output+="파일명 : <input type='text' value='"+jsonObj.file_system_name+"'/></br/>";
						output+="업로더 : ip <input type='text' value='"+ jsonObj.ip_address+"'/></br/>";
						output+="업로드일 : <input type='text' value='"+jsonObj.input_date+"'/></br/>";
						
					});//each
					
				}//end else
				
				$("#output").html(output);
			}
			
		});//ajax
	});//click
	
});//ready
</script>
</head>
<body>
<div>
<input type="button" value="JSONObject 파싱" class="btn btn-info" id="parsing1"/>
<input type="button" value="JSONArray 파싱" class="btn btn-dark" id="parsing2"/>
<input type="button" value="JSONObject 복합데이터 파싱" class="btn btn-danger" id="parsing3"/>
</div>
<div id="output"></div>
이름 : <input type="text" name="name" class="inputBox" id="name"/><br/>
나이 : <input type="text" name="age" class="inputBox" id="age"/><br/>

<div style="width:400px">
<table id="tab" class="table">
<thead>
<tr>
	<th style="width:250px;">이름</th>
	<th style="width:150px;">나이</th>
</tr>
</thead>
<tbody>

</tbody>
</table>
</div>
</body>
</html>



