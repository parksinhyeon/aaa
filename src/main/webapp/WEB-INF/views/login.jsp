<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>

</head>
<script type="text/javascript">
	
	function login(){
		location.href = '/menu.do';
	}
	function joinPage(){
		location.href = '/joinPage.do';
	}
	
</script>
<body>
	<div><h2>로그인</h2></div>
	<table>
	<tr>	
	  <td><label>아이디</label></td>
	  <td><input type ="text"/></td>
	</tr>
	<tr>	
	  <td><label>비밀번호</label></td>
	  <td><input type ="text"/></td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<button onclick="login();">로그인</button>
			<button onclick="joinPage();">가입하기</button>
		</td>
	</tr>
	</table>
</body>
</html>