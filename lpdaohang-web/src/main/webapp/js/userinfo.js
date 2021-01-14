var layer;
$(document).ready(function(){
	layui.use('layer', function(){
		layer = layui.layer;
    });
});
function aaa(){
    layer.open({
    type: 1 //Page层类型
    ,area: ['280px', '80px']
    ,title: '请输入用户名！'
    ,shade: 0.6 //遮罩透明度
    ,maxmin: false //允许全屏最小化
    ,anim: 5 //0-6的动画形式，-1不开启
    ,content: '<input type="text" id="username" style="margin-top: 5px; margin-left: 20px"><button type="button" onclick="doCheUsername()" class="layui-btn layui-btn-sm" style="margin-left: 10px;">确定</button>'
    });  
}
function bbb(){
    layer.open({
    type: 1 //Page层类型
    ,area: ['280px', '80px']
    ,title: '请输入邮箱！'
    ,shade: 0.6 //遮罩透明度
    ,maxmin: false //允许全屏最小化
    ,anim: 5 //0-6的动画形式，-1不开启
    ,content: '<input type="text" id="useremail" style="margin-top: 5px; margin-left: 20px"><button type="button" onclick="doCheUseremail()" class="layui-btn layui-btn-sm" style="margin-left: 10px;">确定</button>'
    });  
}
function ccc(){
    layer.open({
    type: 1 //Page层类型
    ,area: ['280px', '80px']
    ,title: '请输入密码！'
    ,shade: 0.6 //遮罩透明度
    ,maxmin: false //允许全屏最小化
    ,anim: 5 //0-6的动画形式，-1不开启
    ,content: '<input type="text" id="userpswd" style="margin-top: 5px; margin-left: 20px"><button type="button" onclick="doCheUserpswd()" class="layui-btn layui-btn-sm" style="margin-left: 10px;">确定</button>'
    });  
}