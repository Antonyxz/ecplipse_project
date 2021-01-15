/*window.onload=function(){
    $(".divstyle")[0].style.height= window.innerHeight+"px";
    $(".divstyle")[0].style.width= window.innerWidth+"px";
    $(".divstyle")[1].style.height= window.innerHeight+"px";
    $(".divstyle")[1].style.width= window.innerWidth+"px";
    $(".divstyle")[2].style.height= window.innerHeight+"px";
    $(".divstyle")[2].style.width= window.innerWidth+"px";
}*/
$(document).ready(function() {
	$('#fullpage').fullpage({		
		//sectionsColor:['orange','#5c7ff1','green'], //控制每个section的背景颜色
		
		controlArrow:true,   //是否隐藏左右滑块的箭头(默认为true)
		
		verticalCentered: true,  //内容是否垂直居中(默认为true)
		 
		css3: true, //是否使用 CSS3 transforms 滚动(默认为false)
		 
		resize:false, //字体是否随着窗口缩放而缩放(默认为false)
		
		scrolllingSpeed:1000,  //滚动速度，单位为毫秒(默认为700)
		
		anchors:['page1','page2','page3'],  //定义锚链接(值不能和页面中任意的id或name相同，尤其是在ie下，定义时不需要加#)  

		lockAnchors:false,  //是否锁定锚链接，默认为false。设置weitrue时，锚链接anchors属性也没有效果。
		
		loopBottom:true,  //滚动到最底部后是否滚回顶部(默认为false)
		
		loopTop:true, //滚动到最顶部后是否滚底部
		
		loopHorizontal:false,//左右滑块是否循环滑动
		
		autoScrolling:true, // 是否使用插件的滚动方式，如果选择 false，则会出现浏览器自带的滚动条
		
		scrollBar:false,//是否显示滚动条，为true是一滚动就是一整屏
		
		fixedElements:".logo", //固定元素
		
		//menu:".menu",
		
		keyboardScrolling:true, //是否使用键盘方向键导航(默认为true)
		
		keyboardScrolling:true, //页面是否循环滚动（默认为false）
		
		navigation:true, //是否显示项目导航（默认为false）
		
		navigationTooltips:["page1","page2","page3"],//项目导航的 tip
		
		navigationColor:'#fff', //项目导航的颜色
		
		slidesNavigation:true,
	});
});

// 第一页动画
$(document).ready(function(){
	//下拉部分
	$("#gengduo").click(function(){
		$(".all-sl").each(function(){
			if($(this).is(":hidden")){
			}else{
				$(this).fadeOut(300);
			}
		});
		if($("#show-gengduo").is(":hidden")){
			$("#show-gengduo").delay(300).fadeIn();
		}else{
			$("#show-gengduo").delay(300).fadeOut();
		}
	});
	$("#nbut1").click(function(){
		$("#show-gengduo").fadeOut(300);
		$("#sousuo").delay(300).fadeIn();
	});
	$("#nbut2").click(function(){
		$("#show-gengduo").fadeOut(300);
		$("#shipin").delay(300).fadeIn();
	});
	$("#nbut3").click(function(){
		$("#show-gengduo").fadeOut(300);
		$("#yinpin").delay(300).fadeIn();
	});
	$("#nbut4").click(function(){
		$("#show-gengduo").fadeOut(300);
		$("#shejiao").delay(300).fadeIn();
	});
	$("#nbut5").click(function(){
		$("#show-gengduo").fadeOut(300);
		$("#fanyi").delay(300).fadeIn();
	});
	$("#nbut6").click(function(){
		$("#show-gengduo").fadeOut(300);
		$("#wenku").delay(300).fadeIn();
	});
	$("#nbut7").click(function(){
		$("#show-gengduo").fadeOut(300);
		$("#cili").delay(300).fadeIn();
	});
	$("#nbut8").click(function(){
		$("#show-gengduo").fadeOut(300);
		$("#xueshu").delay(300).fadeIn();
	});
});
function rc(){
	   return parseInt(Math.random()*256);
}
function db(){
	$(".db").each(function(){		
		$(this).css("background","none");
	});
}
var now_url = "https://www.baidu.com/s?ie=UTF-8&wd=";
var page;
var cls;
$(document).ready(function(){
	//搜索位置url+颜色变换
	$(".db").click(function(){
		now_url = $(this).attr("alt");
		db();
		$(this).css("background","rgb("+rc()+","+rc()+","+rc()+")");
		var urlb = $(".search").val();
		$("#toweb").attr('href',now_url + urlb);
	});
	$(".search").bind('input propertychange',function(){
		var urlb = $(".search").val();
		$("#toweb").attr('href',now_url + urlb);
	});
	// 列表统一变色
	$(".lbli").mouseover(function(){
		$(this).css("background","rgb("+rc()+","+rc()+","+rc()+")");
	});
	$(".lbli").mouseout(function(){
		$(this).css("background","none");
	});
});
$(document).keydown(function(e){
	page = $("#fp-nav li a").attr('href');
	cls = $("#fp-nav li a").attr('class');
	if(page == '#page1' && cls == 'active'){
		if(e.keyCode==13){
			$(".btn4").click();
		}
	}
});
//第二页
var layer;
//删除标签
function del(){
	layer.open({
	type: 1 //Page层类型
	,area: ['200px', '80px']
	,title: '确定要删除吗？'
	,shade: 0.6 //遮罩透明度
	,maxmin: false //允许全屏最小化
	,anim: 5 //0-6的动画形式，-1不开启
	,content: '<button type="button" onclick="doDel()" class="layui-btn layui-btn-sm" style="margin-top: 5px;">确定</button>'
	}); 
}
//修改标签
function che(){
	layer.open({
	type: 1 //Page层类型
	,area: ['300px', '120px']
	,title: '请修改'
	,shade: 0.6 //遮罩透明度
	,maxmin: false //允许全屏最小化
	,anim: 5 //0-6的动画形式，-1不开启
	,content: '<div style="color: black;">名字：<input type="text" id="plus" style="margin-top: 5px;"></div><button type="button" onclick="doChe()" class="layui-btn layui-btn-sm" style="margin-left: 200px; margin-top: 5px;">确定</button>'
	});
}
//添加标签
function plus(){
	layer.open({
	type: 1 //Page层类型
	,area: ['300px', '120px']
	,title: '请添加'
	,shade: 0.6 //遮罩透明度
	,maxmin: false //允许全屏最小化
	,anim: 5 //0-6的动画形式，-1不开启
	,content: '<div style="color: black;">名字：<input type="text" id="plus" style="margin-top: 5px;"></div><button type="button" class="layui-btn layui-btn-sm" onclick="doPlus()" style="margin-left: 200px; margin-top: 5px;">确定</button>'
	});
}
//添加内容
function pul(){
	layer.open({
	type: 1 //Page层类型
	,area: ['300px', '150px']
	,title: '请添加'
	,shade: 0.6 //遮罩透明度
	,maxmin: false //允许全屏最小化
	,anim: 5 //0-6的动画形式，-1不开启
	,content: '<div style="color: black;">名字：<input type="text" id="webname" style="margin-top: 5px;"></div><div style="color: black;">链接：<input type="text" id="weburl" style="margin-top: 5px;"></div><button type="button" onclick="doPul()" class="layui-btn layui-btn-sm" style="margin-left: 200px; margin-top: 5px;">确定</button>'
	});
}
//修改内容
function chel(){
	layer.open({
	type: 1 //Page层类型
	,area: ['300px', '150px']
	,title: '请编辑'
	,shade: 0.6 //遮罩透明度
	,maxmin: false //允许全屏最小化
	,anim: 5 //0-6的动画形式，-1不开启
	,content: '<div style="color: black;">名字：<input type="text" id="webname" style="margin-top: 5px;"></div><div style="color: black;">链接：<input type="text" id="weburl" style="margin-top: 5px;"></div><button type="button" onclick="doChel()" class="layui-btn layui-btn-sm" style="margin-left: 200px; margin-top: 5px;">确定</button>'
	});
}
//删除内容
function dell(){
	layer.open({
	type: 1 //Page层类型
	,area: ['200px', '80px']
	,title: '确定要删除吗？'
	,shade: 0.6 //遮罩透明度
	,maxmin: false //允许全屏最小化
	,anim: 5 //0-6的动画形式，-1不开启
	,content: '<button type="button" onclick="doDell()" class="layui-btn layui-btn-sm" style="margin-top: 5px;">确定</button>'
	}); 
}
var testEditor;
$(document).ready(function(){
	layui.use('layer', function(){
		layer = layui.layer;
	});
	$("#win-list-jishi").click(function(){
		testEditor = editormd("test-editormd", {
			width   : "100%",
			height  : "100%",
			syncScrolling : "single",
			path    : "../editor/lib/"
		});
	});
	$(".plus").click(function(){
		var username = $("#userinfolist").children().children().eq(0).val();
		if(username == null){
			alert("请登陆后使用此功能");
		}
		if(username != null){
			plus();
		}
	});
	$("#win-list-jishi").click(function(){
		$(this).css("background","rgb("+rc()+","+rc()+","+rc()+")");
		$(this).css("border-radius","15px 0px 0px 0px")
	});
})
//第三页动画
$(document).ready(function(){
	$("#win2-l1").click(function(){
		$(".win2-list2").each(function(){
			if($(this).is(":hidden")){
			}else{
				$(this).fadeOut(0);
			}
		});
		$("#win2-cili").fadeIn(0);
	});
	$("#win2-l2").click(function(){
		$(".win2-list2").each(function(){
			if($(this).is(":hidden")){
			}else{
				$(this).fadeOut(0);
			}
		});
		$("#win2-video").fadeIn(0);
	});
	$("#win2-l3").click(function(){
		$(".win2-list2").each(function(){
			if($(this).is(":hidden")){
			}else{
				$(this).fadeOut(0);
			}
		});
		$("#win2-stu").fadeIn(0);
	});
	$("#win2-l4").click(function(){
		$(".win2-list2").each(function(){
			if($(this).is(":hidden")){
			}else{
				$(this).fadeOut(0);
			}
		});
		$("#win2-yuan").fadeIn(0);
	});
	$("#win2-l5").click(function(){
		$(".win2-list2").each(function(){
			if($(this).is(":hidden")){
			}else{
				$(this).fadeOut(0);
			}
		});
		$("#win2-sheji").fadeIn(0);
	});
	$("#win2-l6").click(function(){
		$(".win2-list2").each(function(){
			if($(this).is(":hidden")){
			}else{
				$(this).fadeOut(0);
			}
		});
		$("#win2-app").fadeIn(0);
	});
	//列表点击变色
	$(".win2-l").click(function(){
		$(".win2-l").each(function(){
			$(this).css("background","none");
		});
		$(this).css("background","rgb("+rc()+","+rc()+","+rc()+")");
	});
});
