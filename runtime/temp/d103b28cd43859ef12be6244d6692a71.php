<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:94:"D:\phpstudy\PHPTutorial\WWW\blog\FastAdmin\public/../application/index\view\index\article.html";i:1548407564;s:84:"D:\phpstudy\PHPTutorial\WWW\blog\FastAdmin\application\index\view\common\header.html";i:1548470184;s:86:"D:\phpstudy\PHPTutorial\WWW\blog\FastAdmin\application\index\view\common\leftinfo.html";i:1548493118;s:84:"D:\phpstudy\PHPTutorial\WWW\blog\FastAdmin\application\index\view\common\footer.html";i:1548224989;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>文章列表</title>
	<meta name="Author" content="网页作者" /> 
	<meta name="Copyright" content="网站版权" /> 
	<meta name="keywords" content="网站关键字" />
	<meta name="description" content="网站描述" />
	<link rel="Shortcut Icon" href="/blog/FastAdmin/public//assets/img/icon/emoji-8.png" />
	<link rel="stylesheet" href="/blog/FastAdmin/public//assets/css/index-blog.css">
	<link rel="stylesheet" href="/blog/FastAdmin/public//assets/css/home.css">
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
.artright{
	padding:10px;
	width: 85%;
	height: auto;
	border:1px solid #f3dde1;
	float: right;
	margin: 50px 20px 20px 10px;
}
.imgright{
	float: left;
	margin-left: 50px; 
}
.infoimg{
	width: 200px;
	height: 200px;
	float: left;

}
.bottom_info{
	float: right;
	width: 100%;
	height: 20px;
	color: #ccc;

}
.info_item{
	float: right;
	margin-right:20px;

}
.artinfo span{
	margin-right: 15px;
	color:#ccc; 
}
.right_page{
	width: 26%; 
	float: right;

}
</style>
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
						<li class="active"><a href="/blog/FastAdmin/public/index/index/index">首页</a></li>

						<li class="dropdown">
							<a href="/blog/FastAdmin/public/index/index/article" class="dropdown-toggle" data-toggle="dropdown">
								文章
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
							<?php if(is_array($infol) || $infol instanceof \think\Collection || $infol instanceof \think\Paginator): $i = 0; $__LIST__ = $infol;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?>
								<li><a href="/blog/FastAdmin/public/index/index/article"><?php echo $v['ctitle']; ?></a></li>
							<?php endforeach; endif; else: echo "" ;endif; ?>
								
							</ul>
							
						</li>
						<li><a href="/blog/FastAdmin/public/index/index/message">留言</a></li>

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
	<img src="/blog/FastAdmin/public//<?php echo $uinfo['image']; ?>"   class="head_imgs" alt="" style="">
	<h1 class="lefttitle" ><?php echo $uinfo['nameid']; ?>
		<p class="titleinfo"><?php echo $uinfo['intro']; ?></p>
	</h1>
	<div  class="leftlist">
		<a href="#" class="icon"><img src="/blog/FastAdmin/public//assets/img/icon/email.svg" alt=""></a>
		<a href="#" class="icon"><img src="/blog/FastAdmin/public//assets/img/icon/Github.svg" alt=""></a>
		<a href="#" class="icon"><img src="/blog/FastAdmin/public//assets/img/icon/微信.svg" alt=""></a>
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
		<a href="/blog/FastAdmin/public/index/index/informal" class="left_buttom" >随笔</a>
	</div>
	<div class="leftlist">
	<a href="/blog/FastAdmin/public/index/index/login" class="left_buttom" >登录</a>
	</div>
</div>
		<div class="rightinfo">
			<?php if(is_array($article) || $article instanceof \think\Collection || $article instanceof \think\Paginator): $i = 0; $__LIST__ = $article;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?>
			<div class="artright">
				<h2><a href="/blog/FastAdmin/public/index/index/articleinfo"><?php echo $v['atitle']; ?></a></h2>
				<p class="artinfo">
					<span class="glyphicon glyphicon-user">&nbsp;<?php echo $v['user']; ?></span>
					<span>分类:<?php echo $v['classify']; ?></span>
					<span>时间:<?php echo date('Y-m-d H:i:s',$v['createtime']); ?></span>
				</p>
				<div>
					<img src="/blog/FastAdmin/public//assets/img/tupian.png" class="infoimg"  alt="">
					<div class="imgright">
						<h3><?php echo $v['atitle']; ?></h3>
					</div>
				</div>
				<p class="bottom_info">
					<span class="info_item glyphicon glyphicon-heart" >点赞</span>
					<span class="info_item glyphicon glyphicon-pencil">评论</span>
				</p>
			</div>
			<?php endforeach; endif; else: echo "" ;endif; ?>
			<div class="right_page"><?php echo $page; ?></div>
		</div>
	</div>
	<!-- 底部信息 -->
<footer>
	<div class="foot">
		<p>栀子-BLOG<img src="/blog/FastAdmin/public//assets/img/icon/emoji-8.png"></p>
		<p>Copyright ©  2016 - 2019 ZhiZiblog &  版权所有</p>
		<p>Produced by MrZhi.</p>
		<p>ZhiBlog</p>
	</div>
</footer>


</body>
</html>