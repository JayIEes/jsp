<%@page import="kr.co.sist.util.cipher.DataDecrypt"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="kr.co.sist.vo.UploadFileVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.sist.dao.FileUploadDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="복합적인 JSON"
    trimDirectiveWhitespaces="true"%>

<%
FileUploadDAO fuDAO=FileUploadDAO.getInstance();

List<UploadFileVO> list=fuDAO.selectList();

//JSONObject을 생성
JSONObject jsonObj=new JSONObject();
jsonObj.put("pubDate",new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
jsonObj.put("dateFlag",!list.isEmpty());
jsonObj.put("dateSize",list.size());

//JSONArray를 생성
JSONArray jsonArr=new JSONArray();
//JSONArray에 DBMS Table 조회 결과 할당
JSONObject jsonTemp=null;
DataDecrypt dd=new DataDecrypt("aaaaaaaaaaaaaaaa123");
for(UploadFileVO ufVO : list){
	jsonTemp=new JSONObject();
	jsonTemp.put("num",ufVO.getNum());
	jsonTemp.put("name",dd.decryption(ufVO.getName()) );
	jsonTemp.put("file_system_name", ufVO.getFile_system_name());
	jsonTemp.put("ip_address", ufVO.getIp_address());
	jsonTemp.put("input_date", ufVO.getInput_date());
	
	jsonArr.add(jsonTemp);

}//end for

//JSONArray를 JSONObject에 할당
jsonObj.put("resultData", jsonArr);


out.print( jsonObj.toJSONString() );

%>




