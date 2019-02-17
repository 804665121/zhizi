<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:81:"D:\PHPTutorial\WWW\FastAdmin\public/../application/index\view\index\informal.html";i:1548397011;s:70:"D:\PHPTutorial\WWW\FastAdmin\application\index\view\common\header.html";i:1548470184;s:72:"D:\PHPTutorial\WWW\FastAdmin\application\index\view\common\leftinfo.html";i:1548490452;s:70:"D:\PHPTutorial\WWW\FastAdmin\application\index\view\common\footer.html";i:1548224989;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>随笔</title>
	<meta name="Author" content="网页作者" /> 
	<meta name="Copyright" content="网站版权" /> 
	<meta name="keywords" content="网站关键字" />
	<meta name="description" content="网站描述" />
	<link rel="Shortcut Icon" href="/FastAdmin/public//assets/img/icon/emoji-8.png" />
	<link rel="stylesheet" href="/FastAdmin/public//assets/css/index-blog.css">
	<link rel="stylesheet" href="/FastAdmin/public//assets/css/home.css">
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 头部信息 -->
<header>
	<div class="topimg" id="topimg" >
		<nav class="navbar navbar-default navtop navbar-fixed-top" role="navigation">
			<div class="container-fluid"> 
				<div class="navbar-header">
					<a class="navbar-brand" href="#">栀子-blog</a>
				</div>
				<div>
					<!--向左对齐-->
					<ul class="nav navbar-nav navbar-left">
						<li class="active"><a href="/FastAdmin/public/index/index/index">首页</a></li>

						<li class="dropdown">
							<a href="/FastAdmin/public/index/index/article" class="dropdown-toggle" data-toggle="dropdown">
								文章
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
							<?php if(is_array($infol) || $infol instanceof \think\Collection || $infol instanceof \think\Paginator): $i = 0; $__LIST__ = $infol;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?>
								<li><a href="/FastAdmin/public/index/index/article"><?php echo $v['ctitle']; ?></a></li>
							<?php endforeach; endif; else: echo "" ;endif; ?>
								
							</ul>
							
						</li>
						<li><a href="/FastAdmin/public/index/index/message">留言</a></li>

					</ul>
					<form class="navbar-form navbar-right" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="button" class="btn btn-default">
							搜索
						</button>
					</form>

				</div>
			</div>
		</nav>
	</div>
</header>
<script>
$(function(){
	
});
</script>


	<div class="mainbox">
		<div class="leftinfo">
	<img src="/FastAdmin/public//<?php echo $uinfo['image']; ?>"   class="head_imgs" alt="" style="">
	<h1 class="lefttitle" ><?php echo $uinfo['nameid']; ?>
		<p class="titleinfo"><?php echo $uinfo['intro']; ?></p>
	</h1>
	<div  class="leftlist">
		<a href="#" class="icon"><img src="/FastAdmin/public//assets/img/icon/email.svg" alt=""></a>
		<a href="#" class="icon"><img src="/FastAdmin/public//assets/img/icon/Github.svg" alt=""></a>
		<a href="#" class="icon"><img src="/FastAdmin/public//assets/img/icon/微信.svg" alt=""></a>
	</div>
	<div class="friends">
		<div style="">FRIENDS</div>
		<span>friends</span>
		<span>friends</span>
	</div>
	<div class="classify">
		<a href="" class="left_buttom" >分类</a>
		<?php if(is_array($infol) || $infol instanceof \think\Collection || $infol instanceof \think\Paginator): $i = 0; $__LIST__ = $infol;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?>
		<ul class="classify-item">
			<li><a href=""><?php echo $v['ctitle']; ?></a></li>
		</ul>
		<?php endforeach; endif; else: echo "" ;endif; ?>
	</div>
	<div class="leftlist">
		<a href="/FastAdmin/public/index/index/informal" class="left_buttom" >随笔</a>
	</div>
	<div class="leftlist">
	<a href="/FastAdmin/public/index/index/login" class="left_buttom" >登录</a>
	</div>
</div>
	</div>


	<!-- 底部信息 -->
<footer>
	<div class="foot">
		<p>栀子-BLOG<img src="/FastAdmin/public//assets/img/icon/emoji-8.png"></p>
		<p>Copyright ©  2016 - 2019 ZhiZiblog &  版权所有</p>
		<p>Produced by MrZhi.</p>
		<p>ZhiBlog</p>
	</div>
</footer>



	
</body>
</html>