<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="content-type" content="text/html" charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta http-equiv="Cache-Control" content="no-siteapp" /><link rel="alternate" media="handheld" href="#" />

<title>个人信息/期望填写</title>
<link type="text/css" rel="stylesheet" href="stylesheets/hope.css"/>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    function stop(){
        if ($("input:checkbox[name='food']:checked").length != 3 ){
            alert("食物数量选择有误。");
            return false;
        }else if ($("input:radio[name='sex']:checked").length != 1 ||
            $("input:radio[name='personality']:checked").length != 1 ||
            $("input:radio[name='date']:checked").length != 1 ||
            $("input:radio[name='fav']:checked").length != 1 ||
            $("input:radio[name='u_age']:checked").length != 1 ||
            $("input:checkbox[name='u_per']:checked").length == 0 ||
            $("input:radio[name='u_rest']:checked").length != 1 ||
            $("input:checkbox[name='hobby']:checked").length == 0 ||
            $("input:radio[name='u_sex']:checked").length != 1 ||
            $("input:radio[name='travel']:checked").length != 1 || 
            $("input:checkbox[name='music']:checked").length == 0 ){
            alert("有东西没有填写完成。");
            return false;
        }
        document.getElementById("done").disabled=true;
        alert("提交成功！")
        return true;
    }
</script>
</head>

<body>
<form action="<%=request.getContextPath()%>/GetServlet" method="post" onsubmit="return stop()">
<div id="topic">
<div id="text">
    <p>姓名：</p>
    <input onkeyup="value=value.replace(/^[\d^<!>|}{?,.~@#$%^&amp;*()-\\=+_`' '[\]]/g,'') " maxlength="16" id="name" name="name"> （请填写中文或英文名，不能留空，否则提交无效)
    <p>微信号码：</p>
    <input class="input" maxlength="21" size="20" name="wechat" id="wechat"> （请填写正确微信号，以确保工作人员添加成功，工作人员微信15996265136）
    <p>性别：</p>
    <input type="radio" name="sex" id="x" value="1">男生
    <input type="radio" name="sex" id="y" value="2">女生
    <p>对于理想中的CP，ta的性别是？</p>
        <input type="radio" name="u_sex" value="1">男
        <input type="radio" name="u_sex" value="2">女
        <input type="radio" name="u_sex" value="3">都可以接受
    <p>年龄：</p>
        <select name="age" id="age">
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
        </select>（18以下的快去学习）
    <p>对方的年龄（一般都无所谓吧）：</p>
        <input type="radio" name="u_age" value="1">比我大
        <input type="radio" name="u_age" value="2">比我小
        <input type="radio" name="u_age" value="3">跟我一样
        <input type="radio" name="u_age" value="4">都可以接受
    <p>性格类型：</p><input type="radio" name="personality" value="1">开朗外向
        <input type="radio" name="personality" value="2">偏向开朗，但是需要自己放空的时间
        <input type="radio" name="personality" value="3">有点害羞，但是渴望与他人互动
        <input type="radio" name="personality" value="4">收敛内向
    <p>对方的性格（可多选）</p>
        <input type="checkbox" name="u_per" value="1">攻气十足
        <input type="checkbox" name="u_per" value="2">偏阳光
        <input type="checkbox" name="u_per" value="3">偏温柔
        <input type="checkbox" name="u_per" value="4">含羞小受
        <p>爱好（可多选）：</p>
        <input type="checkbox" name="hobby" id="hobby" value="1">电影
        <input type="checkbox" name="hobby" id="hobby" value="2">电视剧
        <input type="checkbox" name="hobby" id="hobby" value="3">动漫
        <input type="checkbox" name="hobby" id="hobby" value="4">唱歌
        <input type="checkbox" name="hobby" id="hobby" value="5">乐器
        <input type="checkbox" name="hobby" id="hobby" value="6">运动
        <input type="checkbox" name="hobby" id="hobby" value="7">桌游
        <input type="checkbox" name="hobby" id="hobby" value="8">电脑游戏
        <input type="checkbox" name="hobby" id="hobby" value="9">手机游戏
        <input type="checkbox" name="hobby" id="hobby" value="10">做饭/做点心
        <input type="checkbox" name="hobby" id="hobby" value="11">吃吃吃
        <input type="checkbox" name="hobby" id="hobby" value="12">睡觉
        <input type="checkbox" name="hobby" id="hobby" value="13">旅行
        <input type="checkbox" name="hobby" id="hobby" value="14">写代码
        <input type="checkbox" name="hobby" id="hobby" value="15">阅读
        <input type="checkbox" name="hobby" id="hobby" value="16">逛街
        <input type="checkbox" name="hobby" id="hobby" value="17">cos
        <input type="checkbox" name="hobby" id="hobby" value="18">宠物
        <input type="checkbox" name="hobby" id="hobby" value="19">发呆
        <input type="checkbox" name="hobby" id="hobby" value="20">绘画
        <input type="checkbox" name="hobby" id="hobby" value="21">舞蹈
        <p>几点睡？</p>
        <select name="bedtime" id="bedtime">
            <option value="21">21:00</option>
            <option value="22">22:00</option>
            <option value="23">23:00</option>
            <option value="0">00:00</option>
            <option value="1">01:00</option>
            <option value="2">02:00</option>
        </select>
        <p>几点起？</p>
        <select name="getup" id="getup">
            <option value="6">06:00</option>
            <option value="7">07:00</option>
            <option value="8">08:00</option>
            <option value="9">09:00</option>
            <option value="10">10:00</option>
            <option value="11">11:00</option>
            <option value="12">12:00</option>
        </select>
        <p>对方的作息</p>
        <input type="radio" name="u_rest" value="1">跟我差不多
        <input type="radio" name="u_rest" value="2">无所谓
        <p>爱吃的食物（选三个）：</p>
        <input type="checkbox" name="food" value="1">披萨
        <input type="checkbox" name="food" value="2">汉堡
        <input type="checkbox" name="food" value="3">奶茶
        <input type="checkbox" name="food" value="4">咖啡
        <input type="checkbox" name="food" value="5">汽水
        <input type="checkbox" name="food" value="6">火锅
        <input type="checkbox" name="food" value="7">炒饭/炒面
        <input type="checkbox" name="food" value="8">甜点
        <input type="checkbox" name="food" value="9">水果
        <input type="checkbox" name="food" value="10">日料
        <input type="checkbox" name="food" value="11">烤串
        <input type="checkbox" name="food" value="12">拉面
        <input type="checkbox" name="food" value="13">冰激凌
        <input type="checkbox" name="food" value="14">串串香
        <input type="checkbox" name="food" value="15">韩国烤肉
        <input type="checkbox" name="food" value="16">啤酒
        <input type="checkbox" name="food" value="17">二锅头

        <p>理想的约会场景：</p>
        <input type="radio" name="date" value="1">浪漫气氛的咖啡厅
        <input type="radio" name="date" value="2">两个人包场的电影院
        <input type="radio" name="date" value="3">微风习习的湖畔
        <input type="radio" name="date" value="4">令人目不暇接的商业街
        <input type="radio" name="date" value="5">超级好玩的游戏厅

        <p>以下哪件物品最让你心动？</p>
        <input type="radio" name="fav" value="1">温暖的被窝
        <input type="radio" name="fav" value="2">飞舞的气球
        <input type="radio" name="fav" value="3">绚丽的极光
        <input type="radio" name="fav" value="4">窸窣的蝉鸣
        <input type="radio" name="fav" value="5">浅浅的吻痕
        
        <p>最想和另一半去哪里旅游？</p>
        <input type="radio" name="travel" value="1">北海道
        <input type="radio" name="travel" value="2">巴黎
        <input type="radio" name="travel" value="3">纽约
        <input type="radio" name="travel" value="4">香港/台湾
        <input type="radio" name="travel" value="5">莫斯科
        <input type="radio" name="travel" value="6">巴厘岛
        <input type="radio" name="travel" value="7">伦敦
        
         <p>哪种题材的小说/电影/动漫/电视剧/短文/漫画最能打动你？（可多选）</p>
        <input type="checkbox" name="music" value="1">爱情
        <input type="checkbox" name="music" value="2">哲学
        <input type="checkbox" name="music" value="3">科幻
        <input type="checkbox" name="music" value="4">战争
        <input type="checkbox" name="music" value="5">日常
        <input type="checkbox" name="music" value="6">悬疑
        <input type="checkbox" name="music" value="7">恐怖
        <input type="checkbox" name="music" value="8">魔幻
        <input type="checkbox" name="music" value="9">热血
        <input type="checkbox" name="music" value="10">猎奇
        <input type="checkbox" name="music" value="11">沙雕
        <input type="checkbox" name="music" value="12">复杂黑暗的世界观，引人深思的人性
        <Br/>
    <input type="submit" name="done" id="done" value="提交">
</div>
</div>
</form>

</body>
</html>