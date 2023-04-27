<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ezen.servlet.dto.MemberDto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>091_useBeanActionTag.jsp</title>
</head>
<body>

<%
// 1. jsp 문법으로 객체를 생성하는 방법

// 임포트 없이 객체 생성
com.ezen.servlet.dto.MemberDto member1 = new com.ezen.servlet.dto.MemberDto();

// 패키지 또는 클래스 import 후 생성
MemberDto member2 = new MemberDto();

%>

<!-- 2. 액션 태그를 이용한 객체 생성 -->
<jsp:useBean id="member" class="com.ezen.servlet.dto.MemberDto"/>

<h3>
자바 빈 객체의 저장된 정보 출력하기 <br/>
<%-- <%
member2.setName("이상훈");
member2.setUserid("LeeSangHoon");
%> --%>
이름 : <%= member2.getName() %><br/>
아이디 : <%= member2.getUserid() %><br/><br/>
</h3>

<h3>
정보 변경한 후 변경된 정보 출력하기<br/>
<%
member1.setName("홍길동");
member1.setUserid("HongGilDong");
%>
이름 : <%= member1.getName() %><br/>
아이디 : <%= member1.getUserid() %>
</h3>
<br/><br/>

<h3>
액션태그로 정보 변경한 후 변경된 정보 출력하기 <br/>
<jsp:setProperty name="member" property="name" value="홍길서"/>
<jsp:setProperty name="member" property="userid" value="HongGilSeo"/>
이름 : <jsp:getProperty name="member" property="name"/><br/>
아이디 : <jsp:getProperty name="member" property="userid"/>
<!-- jsp로 만든 객체는 액션태그로 Access 되지 않습니다. -->
</h3>

</body>
</html>