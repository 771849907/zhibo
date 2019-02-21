<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>jQuery EasyUI</title>
<!-- 	<link rel="stylesheet" type="text/css" href="../css/themes/default/easyui.css"> -->
<!-- 	<link rel="stylesheet" type="text/css" href="../css/themes/icon.css"> -->
<!-- 	<script type="text/javascript" src="../javascript/jquery-1.4.4.min.js"></script> -->
<!-- 	<script type="text/javascript" src="../javascript/jquery-3.3.1.min.js"></script> -->
<!-- 	<script type="text/javascript" src="../javascript/jquery.easyui.min.js"></script> -->
	<link rel="stylesheet" type="text/css" href="http://www.jeasyui.net/Public/js/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="http://www.jeasyui.net/Public/js/easyui/themes/icon.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="http://www.jeasyui.net/Public/js/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript">
		function addUser(){
	$('#dlg').dialog('open').dialog('setTitle','添加用户');
	$("#fmpassword").attr('type','password');
	$('#fm').form('clear');
	$('#fm').attr('action','../user/manageradd.do');
		}
		
		function editUser(){
			var row = $("#test").datagrid('getSelected');
			if (row){
			$('#dlg').dialog('open').dialog('setTitle','编辑用户');
			$("#fmpassword").attr('type','text');
			$('#fmusername').val(row.username);
			$('#fmpassword').val(row.password);
			$('#fmemail').val(row.email);
			$('#fmphone').val(row.phone);
			$("#fmuid").val(row.id);
			$("#fmuid").attr('readonly','readonly');
			$('#fm').attr('action','../manager/managerupdate.do');
			}else{
			alert("请选择一行数据");
			}
		}
		function saveUser(){	
			$('#fm').submit();
		}
		function deleteUser(){
			var row = $("#test").datagrid('getSelected');
			if(row){
				//alert(row.id);
				$("#deleteUser").attr('href','../manager/managerdelete.do?deleteid='+row.id);
			}else{
				alert("请选择一行数据");	
			}
		}
	
		

</script>
		
	
</head>
<body>

	  <div data-options="region:'center',fit:true,border:false" >  
        <table id="test">
        </table>    
     	</div> 
     	<div id="toolbar">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onClick="addUser();">添加用户</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onClick="editUser()" id="editUser">编辑用户</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onClick="deleteUser()" id="deleteUser">删除用户</a>
		</div>
     <script type="text/javascript">
			
		$(function(){
			$('#test').datagrid({
				title:'用户管理',
				iconCls:'icon-save',
				width:723,
				height:350,
				nowrap: false,
				animate:true,
				collapsible:true,
				url:'../user/show.do',
				idField:'id',
				treeField:'id',
				
				columns:[[
				    {field:'id',title:'编号',width:50,align:'center'},
					{field:'username',title:'用户名称',width:140,align:'center'},
					{field:'password',title:'密码',width:150,align:'center'},
					{field:'email',title:'邮箱',width:150,align:'center'},
					{field:'phone',title:'手机号码',width:180,align:'center'}
				]],
				onBeforeLoad:function(row,param){
					if (row){
						$(this).datagrid('options').url = '../user/show.do';
					} else {
						$(this).datagrid('options').url = '../user/show.do';
					}
				}/*,
				onContextMenu: function(e,row){
					e.preventDefault();
					$(this).treegrid('unselectAll');
					$(this).treegrid('select', row.code);
					$('#mm').menu('show', {
						left: e.pageX,
						top: e.pageY
					});
				}*/
			});
		});
	
	
	</script>
		<div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:1opx 20px;text-align:center;"
			closed="true" buttons="#dlg-buttons">
			<div class="ftitle" style="margin-bottom:35px; align:center;">添加用户</div>
			<form id="fm" method="post">
			<input type="hidden" id="fmuid" name="uid"></input>
				<div class="fitem">
					<label class="required_seg">用  户  名</label>
					<input name="username" class="easyui-validatebox" required="true" id="fmusername">
				</div>
				<br>
				<div class="fitem">
					<label class="required_seg">密  码</label>
					<input name="password" class="easyui-validatebox" required="true" type="password" id="fmpassword">
				</div>
				<br>
				<div class="fitem">
					<label class="required_seg">邮  箱</label>
					<input name="email" class="easyui-validatebox" validType="email" required="true" id="fmemail">
				</div>
				<br>
				<div class="fitem">
					<label class="required_seg">手机号码</label>
					<input name="phone" class="easyui-validatebox"  required="true" id="fmphone">
				</div>
			</form>
		</div>
		<div id="dlg-buttons">
			<a href="#" class="easyui-linkbutton" iconCls="icon-ok" id="btn_save" onclick="saveUser();">保存</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
		</div>
	    
</body>
</html>