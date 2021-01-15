<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta lang="zh-cn">
	<title>注册|登录</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" type="text/css" href="${APP_PATH}/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${APP_PATH}/css/animate.css">
	<link rel="stylesheet" href="${APP_PATH}/css/icomoon.css">
	<link rel="stylesheet" href="${APP_PATH}/css/themify-icons.css">
	<link rel="stylesheet" href="${APP_PATH}/css/magnific-popup.css">
	<link rel="stylesheet" href="${APP_PATH}/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${APP_PATH}/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="${APP_PATH}/css/style.css">
	<link rel="stylesheet" href="${APP_PATH}/css/login.css">
	<script type="text/javascript" src="${APP_PATH}/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="${APP_PATH}/js/modernizr-2.6.2.min.js"></script>
	<!-- jQuery Easing -->
	<script src="${APP_PATH}/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="${APP_PATH}/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="${APP_PATH}/js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="${APP_PATH}/js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="${APP_PATH}/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="${APP_PATH}/js/jquery.magnific-popup.min.js"></script>
	<script src="${APP_PATH}/js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="${APP_PATH}/js/main.js"></script>
	<script type="text/javascript"></script>
</head>
<body>
	<header id="gtco-header" class="gtco-cover" role="banner" style="background-image: url(${APP_PATH}/photo/beijing4.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					<div class="row row-mt-15em">
						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<span class="intro-text-small">欢迎来到</span>
							<h1>良品导航</h1>	
						</div>
						<div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
							<div class="form-wrap">
								<div class="tab">
									<ul class="tab-menu">
										<li class="gtco-first" id="singup"><a href="#" data-tab="signup">Sign up</a></li>
										<li class="active gtco-first" id="login"><a href="#" data-tab="login">Login</a></li>
									</ul>
									<div class="tab-content">
										<div class="tab-content-inner" data-content="signup">
											<form action="${APP_PATH}/dosingup.htm" id="signupForm" method="post">
												<div class="row form-group">
													<div class="col-md-12">
														<label for="username">用户名</label>
														<input type="text" class="form-control" id="signusername">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="username">邮箱</label>
														<input type="text" class="form-control" id="signuseremail">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="password">密码</label>
														<input type="password" class="form-control" id="signuserpswd">
													</div>
												</div> 
												<div class="row form-group">
													<div class="col-md-12">
														<label for="password2">再次输入密码</label>
														<input type="password" class="form-control" id="signuserpswd2">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="yaoqing">邀请码</label>
														<input type="text" class="form-control" id="signuserinvitecode">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<input type="button" class="btn btn-primary" value="Sign up" onclick="dosignup()">
													</div>
												</div>
											</form>	
										</div>

										<div class="tab-content-inner active" data-content="login">
											<form action="${APP_PATH}/dologin.htm" id="loginForm" method="post">
												<div class="row form-group">
													<div class="col-md-12">
														<label for="username">邮箱</label>
														<input type="text" class="form-control" id="useremail" name="useremail">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="userpswd">密码</label>
														<input type="password" class="form-control" id="userpswd" name="userpswd">
													</div>
												</div>

												<div class="row form-group">
													<div class="col-md-12">
														<input type="button" class="btn btn-primary" value="Login" onclick="dologin()">
													</div>
												</div>
											</form>	
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<script>
		function dosignup(){
		    if ($("#signusername").val() == ""){
		        // $(this).text("输入框不能为空！")
		        alert("请输入用户名！");
		        return;
		    }
		    if ($("#signuseremail").val() == ""){
		        // $(this).text("输入框不能为空！")
		        alert("请输入邮箱！");
		        return;
		    }
		    if ($("#signuserpswd").val() == ""){
		        alert("请输入密码！");
		        return;
		    }
		    if ($("#signuserpswd2").val() == ""){
		        alert("请再次输入密码！");
		        return;
		    }
		    if ($("#signuserpswd").val() != $("#signuserpswd2").val()){
		    	alert("两次输入的密码不相同，请核对！")
		    	return;
		    }
		    if ($("#signuserinvitecode").val() == ""){
		        alert("请输入邀请码！");
		        return;
		    }
		    $.ajax({
		    	url : "${APP_PATH}/dosign.do",
		    	type : "POST",
		    	dataType : "json",
		    	data : {
		    		"username" : $("#signusername").val(),
		    		"useremail" : $("#signuseremail").val(),
		    		"userpswd" : $("#signuserpswd").val(),
		    		"userinvitecode" : $("#signuserinvitecode").val(),
		    	},
		    	success : function(result){
		    		if(result.codetype == 1){
		    			window.location.href = "${APP_PATH}/index.htm";
		    		}else if(result.codetype == 2){
		    			alert("邮箱用户名已经存在！");
		    		}else if(result.codetype == 3){
		    			alert("用户名已经存在！");
		    		}else if(result.codetype == 4){
		    			alert("邮箱已经存在！");
		    		}else if(result.codetype == 0){
		    			alert("注册失败");
		    		}
		    	},
		    	error : function(){
		    		alert("注册失败！");
		    	}
		    });
		}
		function dologin(){
		    if ($("#useremail").val() == ""){
		        alert("请输入邮箱！");
		        return;
		    }
		    if ($("#userpswd").val() == ""){
		        alert("请输入密码！");
		        return;
		    }
		    $.ajax({
		    	url : "${APP_PATH}/dologin.do",
		    	type : "POST",
		    	dataType : "json",
		    	data : {
		    		"useremail" : $("#useremail").val(),
		    		"userpswd" : $("#userpswd").val()
		    	},
		    	success : function(result){
		    		if(result.success){
		    			window.location.href = "${APP_PATH}/index.htm";
		    		}else{
		    			alert("邮箱或密码错误，请重新登录！");
		    		}
		    	},
		    	error : function(){
		    		alert("登录失败！");
		    	}
		    });
		}
	</script>
</body>
</html>