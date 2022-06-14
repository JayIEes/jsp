<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="application/octet-stream"
    pageEncoding="UTF-8"
    info="요청받은 파일을 다운로드"%>
 <!-- contentType="application/octet-stream" 8비트  -->
    <%
    String fileName=request.getParameter("filename");
   
    if(fileName==null || "".equals(fileName)){
    	response.sendRedirect("file_list.jsp");
    	return;
    }
    
    fileName=URLDecoder.decode(fileName,"UTF-8");
    
    //입력된 파일명으로 다운로드 파일 생성
    //URLEncoder로 한글을 encode해야 한글 파일명이 제대로 전달된다.
    //URLEncoder는 한글을 web에서 전달가능하도록 encoding하는 일을 수행. 가나다=> %AB%C3%12
    response.setHeader("Content-Disposition", "attachment;fileName="+
    URLEncoder.encode(fileName, "UTF-8"));
    
  	//입력된 파일명으로  파일정보 얻기
  	File infoFile=new File("E:/dev/workspace/jsp_prj/src/main/webapp/upload/"+fileName);
  	
  	if(infoFile.exists()){//파일이 존재하면
  		//파일을 읽기 위한 스트림
  		FileInputStream fis=null; //다운 받을 파일에 연결하기 위한 입력 스트림
  		OutputStream os=null; //접속자 컴퓨터로 파일을 보내기 위한 출력 스트림
  		
  		try{
  			fis=new FileInputStream(infoFile.getAbsolutePath());
  			//읽어들인 파일의 내용을 저장할 배열 생성 
  			byte[] readData=new byte[(int)infoFile.length()];
  			
  			int tempData=0;
  			int i=0;
  			
  			while((tempData=fis.read()) != -1 ){
  				readData[i]=(byte)tempData;
  				i++;
  			}//end while
  				
  			//html을 출력하는 기능의 초기화
  			out.clear();
  			
  			//설정된 응답 헤더로 출력스트림을 재설정
  			out=pageContext.pushBody();
  			
  			//응답 객체로 부터 출력스트림 연결
  			os=response.getOutputStream();
  			
  			//파일을 출력
  			os.write(readData);
  			
  			//스트림의 내용을 목적지로 분출
  			os.flush(); //flush하지 않으면 스트림에 데이터가 남는다.
	  			
  		}finally{
  			if(fis!=null){fis.close();}//end if
  			if(os!=null){os.close();}//end if
  		}//end finally
  
  	}//end if
  	
    %>
    
    
    
    
    
    
    
    
    
