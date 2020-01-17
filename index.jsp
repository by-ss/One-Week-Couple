<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="content-type" content="text/html" charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta http-equiv="Cache-Control" content="no-siteapp" /><link rel="alternate" media="handheld" href="#" />

<title>哎我对象呢</title>
<link type="text/css" rel="stylesheet" href="stylesheets/common.css"/>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script>
	$(document).ready(function(){
    	$("#ll").dblclick(function(){
    	$("#ll img").slideUp(1000).slideDown(1000);
  		});
});
</script>
</head>

<body>
<div id="top">
<div id="ll">
	<img src="pictures/logo.jpeg" id="logo" width="60" height="60">
	<b>有趣的灵魂总会相遇。 </b>
</div>
<div id="nav">
	<ul>
		<li><a href="#newpo"> 活动说明 </a></li>
		<li><a href="#routine"> 活动流程 </a></li>
		<li><a href="hope.jsp"> 我想参加❤ </a></li>
		<li><a href="#about"> 鸣谢与声明 </a></li>
	</ul>
</div>
</div>

<div id="poster"><img src="pictures/logo2.jpeg" id="logo2" width="100%"></div>
<div id="intro">
	<p>此曲有意无人传，<Br/>
	愿随春风寄燕然，<Br/>
	忆君迢迢隔青天。<Br/> 
	—— 李白《长相思三首·其二》</p>
</div>
<div id="newpo">
<div id="text">
		<h1>活动说明</h1>
		<p>1. 一周CP活动报名参与者建议满18周岁，且为自愿报名，并全程配合参与活动内容。报名参与活动即为认可网站根据报名填写资料匹配的CP结果。<Br/>
		2.一周CP活动进行过程中，对活动的不可控因素（如因个人原因中途退出等），活动组织者不承担责任。<Br/>
		3. 一周CP活动的每天的任务不同，走暖心路线，目的是为了让CP们尽可能多的互相了解彼此。活动为线上进行，每天任务简单，约半小时左右，不影响正常的学习和生活。例如：互道早安晚安，分享故事等。为了增加惊喜感，任务内容暂时保密。<Br/>
		4. 通过一周CP活动的任务，快速了解对方。经过一周的互相了解，是知己还是网友，或是擦肩而过的陌生人，完全由自己决定。在这里收获的不仅仅是友情，更能再一次的了解自己。<Br/>
		5. 一周CP活动参与者应时刻注意活动中存在风险，涉及财产和其他方面的交易需谨慎处理。<Br/>
		6.一周CP活动参与者应认真阅读以上内容，本次活动最终解释权归南京三立所有。</p>
	</div>
</div>
<div id="routine" align="center">
	<div id="before">
	<Br/>
		<p>山顶看日出<Br/>
海边放烟花<Br/>
教堂听钟声<Br/>
都是我想和你做的事<Br/>
所以你快出现吧<Br/>
有趣的灵魂总会相遇<Br/>
<a href="hope.jsp">点击报名（此处附加报名链接）</a></p>
	</div>
	<div id="present">
	<Br/>
		<p>我们会根据各位填写的个人资料和对于cp的期望为大家匹配到最合适的对方CP，<Br/>
		（建议适当放宽限制更容易匹配到cp）<Br/>
		在这一周期间各位会收到一些日常任务，请相互配合尽量完成！<Br/>
		当然除此之外大家私下聊些什么玩些什么（法律许可范围内的），我们一概尊重！</p>
	</div>
	<div id="after">
	<Br/>
		<p>一生里应该有这样一次相遇<Br/>
不求有结果，不求同行<Br/>
不求曾经拥有，不求你爱我<Br/>
只求在我最美的年华里，遇到你<Br/>
网络一线牵，珍惜这份缘。<Br/>
不管做不做的成情侣（划掉）朋友，这都是一份新奇刺激的体验，请多多尊重对方，也更经常地感受生活中的幸福吧。</p>
		
	</div>
</div>

<div id="about">
	<p>活动时间：7/25-7/31，7/24报名结束<Br/>
	活动组织：南京三立教育<Br/>
	网站制作：by<Br/>
	点名表扬：感谢陈女士的鼎力相助，笪女士的灵光点子，张小姐的满满正能量<Br/>
	责任声明：关于此活动中的一切事项，南京三立拥有最终解释权<Br/>
	如有任何疑问请扫码添加工作人员微信</p>
	<img src="pictures/QR.jpg" width="250" height="250" style="margin-left: 120px;">
</div>

</body>
</html>