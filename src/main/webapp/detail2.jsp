<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	var obj = {};
	var data = location.search;
	data = data.substr(1);
	console.log(data);
	var arr= data.split("&");
	console.log(arr);
	for(var i in arr){
		var row = arr[i].split("=");
		var key = row[0];
		var value = row[1];
		obj[key] = value;
	}
	console.log(obj);
	console.log(obj['no'])
	console.log(obj['qty'])
}
</script>
</head>
<body>
<%
	String no = request.getParameter("no");
	String qty = request.getParameter("qty");	
%>
no : <%= no %><br>
qty : <%= qty %><br>
<hr>
</body>
</html>










