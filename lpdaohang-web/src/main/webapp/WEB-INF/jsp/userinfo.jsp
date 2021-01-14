<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta lang="zh-cn">
	<title>用户信息</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" type="text/css" href="${APP_PATH}/css/reset.css">
	<link rel="stylesheet" type="text/css" href="${APP_PATH}/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${APP_PATH}/layui/css/layui.css">
	<link rel="stylesheet" type="text/css" href="${APP_PATH}/css/userinfo.css" />
	<script type="text/javascript" src="${APP_PATH}/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="${APP_PATH}/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${APP_PATH}/js/userinfo.js"></script>
	<script type="text/javascript" src="${APP_PATH}/layui/layui.js"></script>
	<script type="text/javascript"></script>
</head>
<body>
    <div>
		<div class="toplist">
			<div class="home">
				<div><a href="${APP_PATH}/index.htm">良品导航</a></div>
			</div>
			<div class="wuser">
				<div>您好，${users.username}</div>
			</div>
		</div>
		<div class="selfinfo">
			<div class="colorlist"></div>
			<div class="tinfo">个人信息</div>
			<div class="email">${users.useremail}</div>
		</div>
		<div class="infochange">
			<div class="tbox">
				<div class="tbox0"><span>名</span></div>
				<div class="tbox1">
					<span class="tit">用户名:</span>
					<span class="pag">${users.username}</span>
					<span class="cli" onclick="aaa()">点击修改</span>
				</div>				
			</div>
			<div class="tbox">
				<div class="tbox0"><span>邮</span></div>
				<div class="tbox1">
					<span class="tit">电子邮箱:</span>
					<span class="pag">${users.useremail}</span>
					<span class="cli" onclick="bbb()">点击修改</span>
				</div>
			</div>
			<div class="tbox">
				<div class="tbox0"><span>密</span></div>
				<div class="tbox1">
					<span class="tit">修改密码</span>
					<span class="cli" onclick="ccc()">点击修改</span>
				</div>
			</div>
			<div class="tbox">
				<div class="tbox0"><span>邀</span></div>
				<div class="tbox1">
					<span class="tit">邀请人:</span>
					<span class="pag">${users.userinvitecode}</span>
				</div>
			</div>
			<div class="tbox">
				<div class="tbox0"><span>码</span></div>
				<div class="tbox1">
					<span class="tit">邀请码:</span>
					<span class="pag">${users.inviteusercode}</span>
					<span class="cli" onclick="ddd()">点击分享</span>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
function doCheUsername(){
	var username = $("#username").val();
	if(username == ''){
		alert("请输入用户名后再点击确定");
		return;
	}
	if(username.length > 10){
		alert("用户名不能超过十个字哦！");
		return;
	}else{
		$.ajax({
	    	url : "${APP_PATH}/doCheUsername.do",
	    	type : "POST",
	    	dataType : "json",
	    	data : {
	    		"username" : username,
	    	},
	    	success : function(result){
	    		if(result.codetype == 1){
	    			alert("修改成功！");
	    			window.location.href = "${APP_PATH}/userinfo.htm";
	    		}else if(result.codetype == 6){
	    			alert("用户名已被使用！");
	    		}else{
	    			alert("修改失败！");
	    		}
	    	},
	    	error : function(){
	    		alert("修改失败！");
	    	}
	    });
	}
}
function doCheUseremail(){
	var useremail = $("#useremail").val();
	if(useremail == ''){
		alert("请输入邮箱后再点击确定");
		return;
	}
	if(useremail.length > 100){
		alert("邮箱不能超过一百个字哦！");
		return;
	}else{
		$.ajax({
	    	url : "${APP_PATH}/doCheUseremail.do",
	    	type : "POST",
	    	dataType : "json",
	    	data : {
	    		"useremail" : useremail,
	    	},
	    	success : function(result){
	    		if(result.codetype == 1){
	    			alert("修改成功！");
	    			window.location.href = "${APP_PATH}/userinfo.htm";
	    		}else if(result.codetype == 6){
	    			alert("败邮箱已被注册！");
	    		}else{
	    			alert("修改失败！");
	    		}
	    	},
	    	error : function(){
	    		alert("修改失败！");
	    	}
	    });
	}
}
function doCheUserpswd(){
	var userpswd = $("#userpswd").val();
	if(userpswd == ''){
		alert("请输入邮箱后再点击确定");
		return;
	}
	if(userpswd.length > 100){
		alert("邮箱不能超过一百个字哦！");
		return;
	}else{
		$.ajax({
	    	url : "${APP_PATH}/doCheUserpswd.do",
	    	type : "POST",
	    	dataType : "json",
	    	data : {
	    		"userpswd" : userpswd,
	    	},
	    	success : function(result){
	    		if(result.success){
	    			alert("修改成功！");
	    			window.location.href = "${APP_PATH}/userinfo.htm";
	    		}else{
	    			alert("修改密码失败！");
	    		}
	    	},
	    	error : function(){
	    		alert("修改失败！");
	    	}
	    });
	}
}
</script>
</html>