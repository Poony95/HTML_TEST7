<%@page import="com.google.gson.Gson"%>
<%@page import="vo.DeptVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DeptDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	DeptDAO dao = new DeptDAO();
	ArrayList<DeptVO> list= dao.findAll();
	Gson gson = new Gson();
	String result = gson.toJson(list);
	out.print(result);
%>