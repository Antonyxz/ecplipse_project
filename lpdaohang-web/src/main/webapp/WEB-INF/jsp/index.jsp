<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>良品导航</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" type="text/css" href="${APP_PATH}/css/reset.css">
	<link rel="stylesheet" type="text/css" href="${APP_PATH}/css/jquery.fullPage.css" />
	<link rel="stylesheet" type="text/css" href="${APP_PATH}/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${APP_PATH}/layui/css/layui.css">
	<link rel="stylesheet" type="text/css" href="${APP_PATH}/editor/css/editormd.css" />
	<link rel="stylesheet" type="text/css" href="${APP_PATH}/css/index.css">
	<script type="text/javascript" src="${APP_PATH}/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="${APP_PATH}/js/jquery.fullPage.js"></script>
	<script type="text/javascript" src="${APP_PATH}/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${APP_PATH}/js/modal.js"></script>
	<script type="text/javascript" src="${APP_PATH}/editor/editormd.js"></script>
	<script type="text/javascript" src="${APP_PATH}/js/index.js"></script>
	<script type="text/javascript" src="${APP_PATH}/layui/layui.js"></script>
	<script type="text/javascript"></script>
</head>
<body>
	<div class="loin">
		<!-- <button class="btn btn3" type="button"><img src="../photo/wen.png"></button> -->
		<c:if test="${userinfo == null}">
		<div id="logininfo">
			<button class="btn btn2" type="button"><a href="${APP_PATH}/sign.htm">注册</a></button>
			<button class="btn btn1" type="button"><a href="${APP_PATH}/login.htm">登录</a></button>
		</div>
		</c:if>
		<c:if test="${userinfo != null}">
		<ul id="userinfolist">
            <li><p> ${userinfo.username} </p>
                <ul>
                    <li><a href="${APP_PATH}/userinfo.htm" class="lbli">个人信息</a></li>
                    <li><a href="${APP_PATH}/execute.htm" class="lbli">退出</a></li>
                </ul>
            </li>
        </ul>
        </c:if>
	</div>
	<div class="xinxi">
		<div class="foo"><span class="copyright">Copyright © 2020 </span><a href="#">良品导航 liangpin.com</a> All Rights Reserved. 备案号：京ICP备15012138号-1</div>
	</div>
	<div id="fullpage">
		<div class="logo" id="logo"></div>
		<!--第一个页面-->
		<div class="section">
			<div class="sh">
				<input type="text" class="form-control search" placeholder="请输入搜索内容">
				<a href="#" id="toweb" target="_blank"><button class="btn btn4" type="button"><img src="../photo/search.png"></button></a>
			</div>
			<div class="ch">
				<div class="but">
					<button id="gengduo"><img src="../photo/jiantou.png" alt="更多"><span>常用</span></button>
					<button class="db" alt="https://www.google.com/search?q="><img src="../photo/google.png"><span>谷歌</span></button>
					<button class="db" alt="https://www.baidu.com/s?ie=UTF-8&wd="><img src="../photo/baidu.png"><span>百度</span></button>
					<button class="db" alt="https://cn.bing.com/search?q="><img src="../photo/biying.png"><span>必应</span></button>
				</div>
				<!--分类-->
				<div class="nbut" id="show-gengduo">
					<button id="nbut1"><img src="../photo/search.png" alt=""><span>搜索</span></button>
					<button id="nbut2"><img src="../photo/video.png" alt=""><span>视频</span></button>
					<button id="nbut3"><img src="../photo/music.png" alt=""><span>音频</span></button>
					<button id="nbut4"><img src="../photo/shejiao.png" alt=""><span>社交</span></button>
					<button id="nbut5"><img src="../photo/translate.png" alt=""><span>翻译</span></button>
					<button id="nbut6"><img src="../photo/wen.png" alt=""><span>文库</span></button>
					<button id="nbut7"><img src="../photo/yunpan.png" alt=""><span>云盘</span></button>
					<button id="nbut8"><img src="../photo/xueshu.png" alt=""><span>学术</span></button>
				</div>
				<!--搜索-->
				<div class="all-sl" id="sousuo"> 
					<c:forEach items="${page1a2}" var="page">
						<c:if test="${page.webtype == 1}">
							<button class="db" alt="${page.weburl}"><span>${page.webname}</span></button>
						</c:if>
					</c:forEach>
				</div>
				<!--视频-->
				<div class="all-sl" id="shipin">
					<c:forEach items="${page1a2}" var="page">
						<c:if test="${page.webtype == 2}">
							<button class="db" alt="${page.weburl}"><span>${page.webname}</span></button>
						</c:if>
					</c:forEach>
				</div>
				<!--音频-->
				<div class="all-sl" id="yinpin">
					<c:forEach items="${page1a2}" var="page">
						<c:if test="${page.webtype == 3}">
							<button class="db" alt="${page.weburl}"><span>${page.webname}</span></button>
						</c:if>
					</c:forEach>
				</div>
				<!--社交-->
				<div class="all-sl" id="shejiao">
					<c:forEach items="${page1a2}" var="page">
						<c:if test="${page.webtype == 4}">
							<button class="db" alt="${page.weburl}"><span>${page.webname}</span></button>
						</c:if>
					</c:forEach>
				</div>
				<!--翻译-->
				<div class="all-sl" id="fanyi">
					<c:forEach items="${page1a2}" var="page">
						<c:if test="${page.webtype == 5}">
							<button class="db" alt="${page.weburl}"><span>${page.webname}</span></button>
						</c:if>
					</c:forEach>
				</div>
				<!--文库-->
				<div class="all-sl" id="wenku">
					<c:forEach items="${page1a2}" var="page">
						<c:if test="${page.webtype == 6}">
							<button class="db" alt="${page.weburl}"><span>${page.webname}</span></button>
						</c:if>
					</c:forEach>
				</div>
				<!--云盘-->
				<div class="all-sl" id="cili">
					<c:forEach items="${page1a3}" var="page">
						<c:if test="${page.webtype == 7}">
							<button class="db" alt="${page.weburl}"><span>${page.webname}</span></button>
						</c:if>
					</c:forEach>
				</div>
				<!--学术-->
				<div class="all-sl" id="xueshu">
					<c:forEach items="${page1a2}" var="page">
						<c:if test="${page.webtype == 8}">
							<button class="db" alt="${page.weburl}"><span>${page.webname}</span></button>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
		<!--第二个页面-->
		<div class="section">
			<div class="shoucang">
				<div class="lb">
					<ul>
						<c:forEach items="${lablename}" var="ln">
						<li><p alt="${ln.lableid}">${ln.lablename}</p>
							<ul>
								<li class="lbli"><span class="dell">删除此标签</span></li>
								<li class="lbli"><span class="che">修改此标签</span></li>
								<li class="lbli"><span class="pul">添加链接</span></li>
								<c:forEach items="${lable}" var="l">
								<c:if test="${ln.lableid == l.lablename}">
									<li class="lbli" alt="${l.webid}"><a href="${l.weburl}">${l.webname}</a>
									<span class="edit chel">编辑</span><span class="del dell">删除</span>
									</li>
								</c:if>
								</c:forEach>
							</ul>
						</li>
						</c:forEach>
					</ul>
				</div>
				<span class="plus">+</span>
			</div>
			<div class="dh-win">
				<div class="win2-list">
					<dl>
						<dd class="win2-l" id="win2-l1"><span>磁力搜索</span></dd>
						<dd class="win2-l" id="win2-l2"><span>影视资源</span></dd>
						<dd class="win2-l" id="win2-l3"><span>学习提升</span></dd>
						<dd class="win2-l" id="win2-l4"><span>程序员频道</span></dd>
						<dd class="win2-l" id="win2-l5"><span>设计导航</span></dd>
						<dd class="win2-l" id="win2-l6"><span>软件资源</span></dd>
					</dl>
				</div>
				<div class="win2-run">
					<div class="win2-list2" id="win2-cili" style="display: block;">
						<c:forEach items="${page1a2}" var="page">
							<c:if test="${page.webtype == 100}">
								<button><a href="${page.weburl}" target="_blank">${page.webname}</a></button>
							</c:if>
						</c:forEach>
					</div>
					<div class="win2-list2" id="win2-video">
						<c:forEach items="${page1a2}" var="page">
							<c:if test="${page.webtype == 101}">
								<button><a href="${page.weburl}" target="_blank">${page.webname}</a></button>
							</c:if>
						</c:forEach>
					</div>
					<div class="win2-list2" id="win2-stu">
						<c:forEach items="${page1a2}" var="page">
							<c:if test="${page.webtype == 102}">
								<button><a href="${page.weburl}" target="_blank">${page.webname}</a></button>
							</c:if>
						</c:forEach>
					</div>
					<div class="win2-list2" id="win2-yuan">
						<c:forEach items="${page1a2}" var="page">
							<c:if test="${page.webtype == 103}">
								<button><a href="${page.weburl}" target="_blank">${page.webname}</a></button>
							</c:if>
						</c:forEach>
					</div>
					<div class="win2-list2" id="win2-sheji">
						<c:forEach items="${page1a2}" var="page">
							<c:if test="${page.webtype == 104}">
								<button><a href="${page.weburl}" target="_blank">${page.webname}</a></button>
							</c:if>
						</c:forEach>
					</div>
					<div class="win2-list2" id="win2-app">
						<c:forEach items="${page1a2}" var="page">
							<c:if test="${page.webtype == 105}">
								<button><a href="${page.weburl}" target="_blank">${page.webname}</a></button>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	function doPlus(){
		var lablename = $("#plus").val();
		if(lablename == ''){
			alert("请输入名字后再点击确定");
			return;
		}
		if(lablename.length > 10){
			alert("名字不能超过十个字哦！");
			return;
		}else{
			$.ajax({
		    	url : "${APP_PATH}/doPlus.do",
		    	type : "POST",
		    	dataType : "json",
		    	data : {
		    		"lablename" : lablename,
		    	},
		    	success : function(result){
		    		if(result.success){
		    			window.location.href = "${APP_PATH}/index.htm";
		    		}else{
		    			alert("创建标签失败！");
		    		}
		    	},
		    	error : function(){
		    		alert("创建失败！");
		    	}
		    });
		}
	}
	$(".dell").click(function(){
		_this = $(this);
		//获取标签名
		del();
	});
	function doDel(){
		var lableid = _this.parent().parent().siblings().eq(0).attr("alt");
		$.ajax({
	    	url : "${APP_PATH}/doDel.do",
	    	type : "POST",
	    	dataType : "json",
	    	data : {
	    		"lableid" : lableid,
	    	},
	    	success : function(result){
	    		if(result.success){
	    			window.location.href = "${APP_PATH}/index.htm";
	    		}else{
	    			alert("删除标签失败！");
	    		}
	    	},
	    	error : function(){
	    		alert("删除失败！");
	    	}
	    });
	}
	$(".che").click(function(){
		//获取标签名
		_this = $(this);
		che();
	});
	function doChe(){
		var lablename = $("#plus").val();
		if(lablename == ''){
			alert("请输入名字后再点击确定");
			return;
		}
		if(lablename.length > 10){
			alert("名字不能超过十个字哦！");
			return;
		}else{
		var lableid = _this.parent().parent().siblings().eq(0).attr("alt");
		$.ajax({
	    	url : "${APP_PATH}/doChe.do",
	    	type : "POST",
	    	dataType : "json",
	    	data : {
	    		"lableid" : lableid,
	    		"lablename" : lablename,
	    	},
	    	success : function(result){
	    		if(result.success){
	    			window.location.href = "${APP_PATH}/index.htm";
	    		}else{
	    			alert("修改标签失败！");
	    		}
	    	},
	    	error : function(){
	    		alert("修改失败！");
	    	}
	    });}
	}
	$(".pul").click(function(){
		_this = $(this);
		pul();
	});
	function doPul(){
		var webname = $("#webname").val();
		var weburl = $("#weburl").val();
		if(webname == ''){
			alert("请输入名字！");
			return;
		}
		if(webname.length > 10){
			alert("名字不能超过十个字哦！");
			return;
		}
		if(weburl == ''){
			alert("请输入链接！");
			return;
		}
		if(weburl.length > 10000){
			alert("名字过长！");
			return;
		}
		else{
		var lableid = _this.parent().parent().siblings().eq(0).attr("alt");
		$.ajax({
	    	url : "${APP_PATH}/doPul.do",
	    	type : "POST",
	    	dataType : "json",
	    	data : {
	    		"lableid" : lableid,
	    		"webname" : webname,
	    		"weburl" : weburl,
	    	},
	    	success : function(result){
	    		if(result.success){
	    			window.location.href = "${APP_PATH}/index.htm";
	    		}else{
	    			alert("添加链接失败！");
	    		}
	    	},
	    	error : function(){
	    		alert("添加失败！");
	    	}
	    });}
	}
	$(".chel").click(function(){
		_this = $(this);
		chel();
	});
	function doChel(){
		var webname = $("#webname").val();
		var weburl = $("#weburl").val();
		if(webname == ''){
			alert("请输入名字！");
			return;
		}
		if(webname.length > 10){
			alert("名字不能超过十个字哦！");
			return;
		}
		if(weburl == ''){
			alert("请输入链接！");
			return;
		}
		if(weburl.length > 10000){
			alert("名字过长！");
			return;
		}
		else{
		var lableid = _this.parent().parent().siblings().eq(0).attr("alt");
		var webid = _this.parent().attr("alt");
		$.ajax({
	    	url : "${APP_PATH}/doChel.do",
	    	type : "POST",
	    	dataType : "json",
	    	data : {
	    		"lableid" : lableid,
	    		"webname" : webname,
	    		"weburl" : weburl,
	    		"webid" : webid,
	    	},
	    	success : function(result){
	    		if(result.success){
	    			window.location.href = "${APP_PATH}/index.htm";
	    		}else{
	    			alert("修改链接失败！");
	    		}
	    	},
	    	error : function(){
	    		alert("修改失败！");
	    	}
	    });}
	}
	$(".dell").click(function(){
		_this = $(this);
		dell();
	});
	function doDell(){
		var lableid = _this.parent().parent().siblings().eq(0).attr("alt");
		var webid = _this.parent().attr("alt");
		$.ajax({
	    	url : "${APP_PATH}/doDell.do",
	    	type : "POST",
	    	dataType : "json",
	    	data : {
	    		"lableid" : lableid,
	    		"webid" : webid,
	    	},
	    	success : function(result){
	    		if(result.success){
	    			window.location.href = "${APP_PATH}/index.htm";
	    		}else{
	    			alert("删除链接失败！");
	    		}
	    	},
	    	error : function(){
	    		alert("删除失败！");
	    	}
	    });
	}
</script>
</html>
