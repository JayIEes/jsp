<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="공통기능을 사용하는 JSP"%>
<!-- 공통페이지가 사용되는 곳에서 소스보기를 했을 때 하나의 HTML처럼 보이도록 만들어야 한다. -->
<%-- <%=val2 %> 외부 jSP에 존재하는 변수는 사용할 수 있으나 eclipse에서 error를 보여준다. 
외부 JSP에 val2 변수가 존재하지 않을 수 있기 때문에 
--%>
공통데이터<br/>
<%String val="지역변수"; %>
<%= val %>
