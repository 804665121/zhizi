<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:81:"D:\PHPTutorial\WWW\FastAdmin\public/../application/index\view\index\register.html";i:1548473753;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>栀子-blog-注册</title>
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
</head>
<style type="text/css">
.activelist a{
	margin:80px 0 10px 153px; 
	padding: 20px 30px !important;
}
.list a{
	padding: 20px 30px !important;
	margin:80px 0 10px 10px; 
}
.nav-tabs{
	border:0!important;
}
</style>>
<body style="background-image:url('../../assets/img/login.jpg');background-repeat: no-repeat;background-size: 100%;">
	<div class="box">
	<ul id="myTab" class="nav nav-tabs"  style="text-align: center;">
			<li class="active activelist">
				<a href="#home" data-toggle="tab">
					登录
				</a>
			</li>
			<li class="list"><a href="#ios" data-toggle="tab">注册</a></li>
		</ul>
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="home">
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
			<div class="tab-pane fade" id="ios">
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
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">确认密码</label>
						<div class="col-sm-9">
							<input type="password" class="form-control" id="password" 
							placeholder="请再次输入密码">
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
		</div>
	</div>
</body>
</html>
<script>
	// $(function(){
	// 	$("#submit").click(function(){
	// 		var name=$("#firstname").val();
	// 		var pwd=$("#password").val();
	// 		if(name==""){
	// 			alert('请输入姓名！');
	// 		}else if(pwd==""){
	// 			alert('请输入密码！');
	// 		}else{
	// 			$.post('<?php echo url("index/index/logininfo"); ?>',{'username':name,'password':pwd},function(data){
	// 				if(data.result){
	// 					alert(data.msg);
	// 					window.location.href='/FastAdmin/public/index.html';
	// 				}else{
	// 					alert(data.msg);
	// 				}

	// 			},'json');
	// 		}

	// 	});
	// });
</script>