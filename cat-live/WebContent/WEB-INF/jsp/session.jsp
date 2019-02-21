<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
.login{
width:100px;
height:30px;
background:red;
}
</style>
</head>
<body>
	 <label class="login" value="${sessionScope.username} " >${sessionScope.username}</label>
</body>
</html>