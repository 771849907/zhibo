<%@page import="live.recordCamera"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <%
	String url = "rtmp://localhost/live/record1";
	recordCamera.recordWebcamAndMicrophone(0, 4, url, 500, 500, 25);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript "src="<%=request.getContextPath()%>/js/player/ckplayer.js"></script>
<script type="text/javascript "src="<%=request.getContextPath()%>/js/player/ckplayer.min.js"></script>
<div> id = "video" style = "width:600px;height:400px;"</div>
<script type = "text/javascript">
	var videoObject = {
			container:'#video',
			variable:'player',
			autoplay:true,
			//在推流端发布的rtmp地址
			video:'rtmp://localhost/live/record1'
	};
	var play = new ckplayer(videoObject);
	</script>
</head>
<body>

</body>
</html>