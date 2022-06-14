

function longer(){
    $(".searchForm").css("width","330px");

    $(".searchBarDiv").css("width","330px");
    //$(".searchInput").css("width","280px");
}
function shorter(){
    $(".searchForm").css("width","270px");
    $(".searchBarDiv").css("width","270px");
   // $(".searchInput").css("width","256px");
}

$(function(){
  
    
    $(".dropdown").mouseover(function(){
        $("#menuUnderline").css("display","block");
    })
    
    $(".dropdown").mouseout(function(){
        $("#menuUnderline").css("display","none");
    })


	$("#mainInput").click(function(){
		$("#mainInput").css("outline","none");
		$("#mainInput").css("border-right","none");
		$("#mainInput").css("width","400px");
	})
	$("#mainInput").mouseover(function(){
		$("#mainInput").css("outline","none");
	})
	$("#mainInput").blur(function(){
		//$("#mainInput").css("border","0px");
		$("#mainInput").css("width","150px");
		$("#mainInput").css("border-right","1px solid #FFFFFF");
		$("#mainInput").prop("value","웹페이지 제작");
	})

});//ready

