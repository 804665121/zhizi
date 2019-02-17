<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:80:"D:\PHPTutorial\WWW\FastAdmin\public/../application/index\view\index\message.html";i:1548489106;s:70:"D:\PHPTutorial\WWW\FastAdmin\application\index\view\common\header.html";i:1548470184;s:72:"D:\PHPTutorial\WWW\FastAdmin\application\index\view\common\leftinfo.html";i:1548490452;s:70:"D:\PHPTutorial\WWW\FastAdmin\application\index\view\common\footer.html";i:1548224989;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>留言页面</title>
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
	<style type="text/css">
	.message-board{
		float: right;
		width: 65%;
		height: 100%;
		
	}
	.board{
		width: 700px;
		height: 100px !important;
		border:2px solid #ccc;
		border-radius: 15px;
		outline: 0;
	}
	.tj{
		outline: 0;
		border-radius: 10px;
		border:0;
		float: right;
		width: 120px;
		margin-right: 100px;
		background-color: #ffe20d;
	}
	.mtitle{
		width: 60%;
		height: 40px;
	}
	.leaveinfo{
		margin-bottom: 100px;

	}
	.show{
		margin-bottom: 10px;
		padding: 10px; 
		width: 100%;
		height: auto;

	}
	i{
		float: right;
	}
	.pgs{
		float: right;
		color: pink;
	}
	</style>
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


	<!-- 主要内容部分	 -->
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

		<div class="message-board">
			<form action="" method="" class="leaveinfo">
				<div class="form-group">
					<label for="name">id名称~</label>
					<input type="text" class="form-control mtitle"  id="title" placeholder="请输入名称">
				</div>
				<label for="name">留言板~</label>
				<div class="form-group ">
					<textarea class="board form-control" id="mes">
					</textarea>
				</div>
				<input type="button" id="tjinfo" class="btn btn-default btn-sm tj" value="发送">
			</form>
			<label for="">评论(<?php echo $count; ?>)</label>
			<?php if(is_array($showinfo) || $showinfo instanceof \think\Collection || $showinfo instanceof \think\Paginator): $i = 0; $__LIST__ = $showinfo;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
			<div class="show" >
				<h3><?php echo $vo['mtitle']; ?></h3>
				<p><?php echo $vo['minfo']; ?></p>
				<i><?php echo date("Y-m-d H:i:s",$vo['createtime']); ?></i>
				<!-- <input type="button" value="删除" class="btn btn-default dele" data_id="<?php echo $vo['id']; ?>" > -->
			</div>
			<?php endforeach; endif; else: echo "" ;endif; ?>
			<div calss="pgs"><?php echo $page; ?></div>
			
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
<script>
$(function(){
    $('#tjinfo').click(function(){
    	var title=$('#title').val();
    	var mes=$('#mes').val();
    	var tj =$('#tjinfo').css('outline:0');
    	if(title==""||title.replace(/^\s+,""/).replace(/^\s+$/,"")=='')
    	{
    		alert('请填写留言信息哦~');
    	}else if(mes==""||mes.replace(/^\s+,""/).replace(/^\s+$/,"")=='')
    	{
    		alert('请填写留言信息哦~');
    	}
    	else{
    		$.getJSON('<?php echo url("index/index/messageinfo"); ?>',{'mes':mes,'title':title},function(data){
    			if(data.result){
    				alert(data.msg);
    				window.location.reload();
    			}

    		});
    	}
    });

    $('.dele').click(function(){
    	var data_id=$(this).attr('data_id');
    	$.getJSON('<?php echo url("index/index/messagedelect"); ?>',{'id':data_id},function(data){
    		if(data.result){
    			alert(data.msg);
    			window.location.reload();
    		}
    	});
    });

});
</script>