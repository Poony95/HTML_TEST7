<%@page import="vo.DeptVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DeptDAO"%>
<%@ page language="java" contentType="application/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	DeptDAO dao = new DeptDAO();
	ArrayList<DeptVO> list = dao.findAll();
	String data = "";
	data += "<dept_list>";
	for(DeptVO d:list){
		data += "<dept>";
		data += "<dno>"+d.getDno()+"</dno>";
		data += "<dname>"+d.getDname()+"</dname>";
		data += "<dloc>"+d.getDloc()+"</dloc>";
		data += "</dept>";
	}
	data += "</dept_list>";
	out.print(data);
		
%>






