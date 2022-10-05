<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<P>  result is ${result}. </P>


<button onclick="fn_ajax();">버튼</button>

</body>
<script type="text/javascript">

function fn_ajax(){
	$.ajax({
		url:"/abc.ajax",
		dataType:"json",
		success:function(data){
			alert(data);
		};
	});
}
</script>
</html>
