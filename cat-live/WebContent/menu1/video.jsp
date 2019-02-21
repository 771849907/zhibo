<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>视频管理</title>
	<link rel="stylesheet" type="text/css" href="http://www.jeasyui.net/Public/js/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="http://www.jeasyui.net/Public/js/easyui/themes/icon.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="http://www.jeasyui.net/Public/js/easyui/jquery.easyui.min.js"></script>
</head>
<body>
	<script type="text/javascript">
 	
	 function loadFile(){
	        $("#userForm").form('submit', {
	                type:"post",  //提交方式    
	                url:"/adminc/network/springUpload.json", //请求url
	                success:function(data)
	                { //提交成功的回调函数   
	                    var data =eval('(' + data + ')');
	                    $.messager.alert({  title:'提示',
	                            msg: data.resultMsg,
	                           　                icon:'info',
	                            });
	                }    
	            });  
	        }
 		</script>
	
	<div style="margin:20px 0;"></div>
	
	<table class="easyui-datagrid" title="视频管理"  style="width:1330px;height:250px"
			data-options="singleSelect:true,collapsible:true,url:'../video/getAllVideo.do',method:'post'">
		<thead>
			<tr>
				<th data-options="field:'编号',width:50,align:'center'">编号</th>
				<th data-options="field:'名字',width:300,align:'center'">影视名称</th>
				<th data-options="field:'类型',width:50,align:'center'">类型</th>
				<th data-options="field:'简介',width:600,align:'center'">简介</th>
				<th data-options="field:'地址',width:330,align:'center'">地址</th>
				
			</tr>
		</thead>
	</table>
 	
 		<form id="video" name="video" enctype="multipart/form-data" method="post">
 			<div id="newUpload">
 				<input id="file" type="file" name="file" multiple="true">
 				<!-- multiple = "true"属性为true表示可以同时选择多个文件上传 -->
 			</div>
 			<input type="button" onclick="loadFile();" value="上传文件">
 		</form>
	
</body>
</html>