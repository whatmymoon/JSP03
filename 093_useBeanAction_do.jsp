<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
//093_useBeanAction_do.jsp

String id = request.getParameter("userid");
String name = request.getParameter("name");
String pwd = request.getParameter("pwd");
String nickname = request.getParameter("nickname");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
%>
<!-- dto 객체 생성 & scope="request"에 의해 request 에 setAttribute 로 객체저장까지 한 번에 실행 -->
<jsp:useBean id="member" class="com.ezen.servlet.dto.MemberDto" scope="request"/>
<!-- 전달된 파라미터로 멤버 변수들에 대입 -->
<jsp:setProperty name="member" property="name" value="<%=name %>"/>
<jsp:setProperty name="member" property="userid" value="<%=id %>"/>
<jsp:setProperty name="member" property="pwd" value="<%=pwd %>"/>
<jsp:setProperty name="member" property="nickname" value="<%=nickname %>"/>
<jsp:setProperty name="member" property="phone" value="<%=phone %>"/>
<jsp:setProperty name="member" property="email" value="<%=email %>"/>
<%
	RequestDispatcher dp = request.getRequestDispatcher("094_useBeanAction.jsp");
	dp.forward(request, response);
%>