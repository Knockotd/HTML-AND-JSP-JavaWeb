<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request의 메소드</title>
</head>
<body>
접속한 클라이언트의 IP주소 : <%=request.getRemoteAddr() %><br/>
기본 경로 : <%=request.getContextPath() %><br/>
요청 경로 : <%=request.getRequestURI() %><br/>
파라미터 : <%=request.getQueryString() %><br/>
<%
	//요청경로에서 기본경로를 제외한 부분 만들기
	String path =
	request.getRequestURI().substring(request.getContextPath().length()+1);
// 슬래쉬까지 빼서 출력.(+!)

	String a = "안정은";
	String b = "안정은완전멋쟁이";
	
	String c = b.substring(a.length());
%>
<%=c %><br/>
<!-- 요청경로에서 기본경로를 제외한 부분 출력하기
실제 웹 프로젝트에서는 요청이 많기 때문에 이 요청경로를 이용해서 라우팅을 해야 합니다. -->
요청경로에서 기본경로를 제외한 부분 : <%=path %>
</body>
</html>