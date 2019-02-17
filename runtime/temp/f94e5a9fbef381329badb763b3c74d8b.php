<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:78:"D:\PHPTutorial\WWW\FastAdmin\public/../application/index\view\index\login.html";i:1548488752;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>栀子-blog-登录</title>
	<meta name="Author" content="网页作者" /> 
	<meta name="Copyright" content="网站版权" /> 
	<meta name="keywords" content="网站关键字" />
	<meta name="description" content="网站描述" />
	<link rel="Shortcut Icon" href="/FastAdmin/public//assets/img/icon/emoji-8.png" />
	<link rel="stylesheet" href="/FastAdmin/public//assets/css/index-blog.css">
	<link rel="stylesheet" href="/FastAdmin/public//assets/css/login.css">
	<link rel="stylesheet" href="/FastAdmin/public//assets/css/home.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
</head>
<body style="background-image:url('../../assets/img/login.jpg');background-repeat: no-repeat;background-size: 100%;">
	<div class="box">
	<ul id="myTab" class="nav nav-tabs"  style="text-align: center;">
			<li class="active activelist">
				<a href="#login" data-toggle="tab">
					登录
				</a>
			</li>
			<li class="list"><a href="#register" data-toggle="tab">注册</a></li>
		</ul>
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="login">
				<form action="" method="" class="form-horizontal">
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-9 ">
							<input type="text" class="form-control" id="firstname" 
							placeholder="请输入用户名">
						</div>
					</div>
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-9">
							<input type="password" class="form-control" id="password" 
							placeholder="请输入密码">
						</div>
					</div>
					<div class="form-group center">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="checkbox">
								<label>
									<input type="checkbox">请记住我
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-4 col-sm-8">
							<button type="button" class="btn btn-default" id="submit" style="margin-right:20px; ">登录</button>
							<button type="reset" class="btn btn-default ">重置</button>
						</div>
					</div>
				</form>
			</div>
			<div class="tab-pane fade" id="register">
				<form action="" method="" class="form-horizontal">
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-9 ">
							<input type="text" class="form-control" id="rusername" 
							placeholder="请输入用户名" required>
						</div>
					</div>
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-9">
							<input type="password" class="form-control" id="rpassword" 
							placeholder="请输入密码" required>
						</div>
					</div>
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">确认密码</label>
						<div class="col-sm-9">
							<input type="password" class="form-control" id="rpwd" 
							placeholder="请再次输入密码" required>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-4 col-sm-8">
							<button type="button" class="btn btn-default" id="registerinfo" style="margin-right:20px; ">注册</button>
							<button type="reset" class="btn btn-default ">重置</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
<script>
$(function(){
	// 用户登录
	$("#submit").click(function(){
		var name=$("#firstname").val();
		var pwd=$("#password").val();
		if(name==""){
			alert('请输入姓名！');
		}else if(pwd==""){
			alert('请输入密码！');
		}else{
			$.post('<?php echo url("index/index/logininfo"); ?>',{'username':name,'password':pwd},function(data){
				if(data.result){
                   alert(data.msg);
                   window.location.href='/FastAdmin/public/index.html';
				}else{
				alert(data.msg);
				}

			},'json');
		}

	});
	//用户注册
	$('#registerinfo').click(function(){
		var username = $('#rusername').val();
		var password = $('#rpassword').val();
		var rpwd = $('#rpwd').val();
		var reg=/^[A-Za-z0-9]{6,16}$/;//用户名规则验证 //数字、26个英文字母 6-16个字符
		var reg2 = /^\w{6,16}$/;//密码验证是否合法  由数字、26个英文字母或者下划线组成的字符串 6-16个字符
		
		// 用户名验证判断
		if(!reg2.test(username)){
			alert('请填写正确格式用户名~~字母开头允许字母数字下划线');
		}else if(!reg2.test(password)){
			alert('请填写正确格式的密码~~只能包含字母、数字和下划线');
		}else if(password.length<6||password.length>16){
			alert('密码长度不正确！6-16之间')
		}
		else if(rpwd!==password){
			alert('两次输入的密码不一致~~请重新输入~');
		}
		else{
			$.post('<?php echo url("index/index/register"); ?>',{'username':username,'password':password},function(data){
				if(data.result){
					alert(data.msg);
					window.location.reload();
				}else{
					alert(data.msg);
				}
			},'json');
		}
	});
});
</script>