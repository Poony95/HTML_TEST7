<%@page import="dao.DeptDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int dno = Integer.parseInt(request.getParameter("dno"));
	DeptDAO dao = new DeptDAO();
	dao.deleteDept(dno);
%>
삭제한 부서번호 : <%= dno %>
<hr>
<a href="deptTest.html">부서목록</a>
</body>
</html>










