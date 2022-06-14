<%@page import="org.jdom2.output.XMLOutputter"%>
<%@page import="day0418.EmpVO"%>
<%@page import="java.util.List"%>
<%@page import="day0418.EmpDAO"%>
<%@page import="org.jdom2.Document"%>
<%@page import="xml0425.CreateEmpXML"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<% 
//1. XML 생성 객체를 생성
CreateEmpXML ceXML=new CreateEmpXML();
//2. DB에서 조회한 결과를 얻어와서
EmpDAO eDAO=new EmpDAO();
List<EmpVO> list=eDAO.selectAllEmp();

//3. xml생성객체에서 XML을 얻는다.
Document doc=ceXML.createEmpXML(list);

//4. XML 출력 객체 생성
XMLOutputter xOut=new XMLOutputter();

//5. 접속자 브라우저로 XML객체를 출력한다.
xOut.output(doc, out); //JSPWriter의 내장 객체인 out을 입력하므로 접속자의 브라우저로 출력 
%>
