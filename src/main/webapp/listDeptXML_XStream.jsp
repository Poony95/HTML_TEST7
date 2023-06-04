
<%@page import="com.thoughtworks.xstream.XStream"%>
<%@page import="vo.DeptVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DeptDAO"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	DeptDAO dao = new DeptDAO();
	ArrayList<DeptVO> list = dao.findAll();
	String data = "";
	XStream stream = new XStream();
	data=stream.toXML(list);
	out.print(data);
%>






