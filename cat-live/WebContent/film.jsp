<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page session="false" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>电影</title>
<link href="${ctx}/css/film.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="${ctx}/css/jquery.slideBox.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/css/Cooldog.css" type="text/css" rel="stylesheet">
<link href="${ctx}/css/iconfont.css" type="text/css" rel="stylesheet">

<script type="text/javascript">
		function displaysubMenu(li){
		var subMenu=li.getElementsByTagName("ul")[0]; //到DOM树中li下面的的第一个ul标签
		subMenu.style.display = "block"; //把它属性显示
			}
			function hidesubMenu(li) { 
		var subMenu = li.getElementsByTagName("ul")[0]; 
		subMenu.style.display = "none"; 
		}
</script>
</head>

<body>
<div id="head">
     <div class="logo"><img src="${ctx}/images/logo.png"></div>
     
      <!------------------导航-------------------->
     <div class="nav">
          <ul class="nav2">
             <li onMouseOver=" displaysubMenu(this)" onMouseOut="hidesubMenu(this)">
                  <a href="home-user.jsp">首页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a>
             </li>
             <li onMouseOver=" displaysubMenu(this)" onMouseOut="hidesubMenu(this)">
                  <a href="#">导航</a>
                      <ul>
                          <li><a href="live.jsp">直播</a></li> 
                          <li><a href="tv.jsp">电视剧</a></li> 
                          <li><a href="film.jsp">电影</a></li> 
                          <li><a href="Var.jsp">综艺</a></li> 
                      </ul>
           </li>
         </ul>
     </div>
     
     <!------------------搜索框-------------------->
	 <div class="search">
		<form>
		  <input type="text" placeholder="搜索从这里开始...">
		  <button type="submit"></button>
		</form>
        
        <!------------------登录-------------------->
        <div class="login"><img src="${ctx}/images/用户.png"><a href="#">登录</a></div>
        
        <!------------------注册-------------------->
        <div class="register"><img src="${ctx}/images/注册.png"><a href="#">注册</a></div>
	 </div>
</div>



<!---------------------------轮播图----------------------------->
<center>
       <div id="demo1" class="slideBox">
            <ul class="items">
                <li><a href="#"><img src="${ctx}/images/film_slider/1.png" width="100%" ></a></li>
                <li><a href="#"><img src="${ctx}/images/film_slider/2.png" width="100%" ></a></li>
                <li><a href="#"><img src="${ctx}/images/film_slider/3.png" width="100%" ></a></li>
                <li><a href="#"><img src="${ctx}/images/film_slider/4.png" width="100%"></a></li>
                <li><a href="#"><img src="${ctx}/images/film_slider/5.png" width="100%" ></a></li>
            </ul>
      </div>
</center>
<script src="<%=request.getContextPath()%>/javascript/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/javascript/jquery.slideBox.min.js" type="text/javascript"></script>
<script>
jQuery(function($){
	$('#demo1').slideBox();
	$('#demo2').slideBox({
		direction : 'top',//left,top#方向
		duration : 0.3,//滚动持续时间，单位：秒
		easing : 'linear',//swing,linear//滚动特效
		delay : 5,//滚动延迟时间，单位：秒
		startIndex : 1//初始焦点顺序
	});
	$('#demo3').slideBox({
		duration : 0.3,//滚动持续时间，单位：秒
		easing : 'linear',//swing,linear//滚动特效
		delay : 5,//滚动延迟时间，单位：秒
		hideClickBar : false,//不自动隐藏点选按键
		clickBarRadius : 10
	});
	$('#demo4').slideBox({
		hideBottomBar : true//隐藏底栏
	});
});
</script>



<!---------------------------分类----------------------------->
<div id="classification">
     <div class="cla">
          <ul>
             <li>
                 <a href="#">近期热门</a><a href="#">免费电影</a><a href="#">会员专区</a><a href="#">最新上线</a>
                 <a href="#">院线大片</a><a href="#">评分最高</a>
             </li>
             <li>
			 <p style="margin-left:28px">按地区</p>
                 <a href="#">华语</a><a href="#">美国</a><a href="#">日本</a><a href="#">欧洲</a>
                 <a href="#">英国</a><a href="#">韩国</a><a href="#">泰国</a><a href="#">其他</a>
             </li>
             <li>
			  <p style="margin-left:28px">按类型</p>
                 <a href="#">喜剧</a><a href="#">悲剧</a><a href="#">爱情</a><a href="#">动作</a>
                 <a href="#">悬疑</a><a href="#">动画</a><a href="#">家庭</a><a href="#">科幻</a>
             </li>
             <li> <p style="margin-left:28px">按年份</p>
                 <a href="#">2018</a><a href="#">2017</a><a href="#">2016</a><a href="#">2015</a>
                 <a href="#">2015</a><a href="#">2014</a><a href="#">00年代</a><a href="#">90年代</a>
             </li>
          </ul>
     </div>
</div>


<!---------------------------院线热映----------------------------->
<div id="hotspot">
     <div class="title">院线热映<a>更多</a></div>
     <div class="hotspot-slider"><img src="${ctx}/images/film_img/21.jpg"></div>
     <div class="hotspot-vedio">
          <ul>
               <li>
                  <a><img src="${ctx}/images/film_img/13.jpg" >《无双》爆导演特辑</span><span class="live-user">&nbsp;庄文强挑战自我印伪钞</span></a>
               </li>
               <li>
                  <a><img src="${ctx}/images/film_img/14.jpg" >&nbsp;张艺谋作品《影》</span><span class="live-user">&nbsp;琴棋书画样样精通</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/film_img/15.jpg" >&nbsp;《武林怪兽定档圣诞》</span><span class="live-user">&nbsp;古天乐携众星大战乱</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/film_img/16.jpg" >&nbsp;《虎胆追凶》持枪出击版</span><span class="live-user">&nbsp;布鲁斯威利斯行侠仗义</span></a>
              </li>
           </ul>
           
           <ul>
               <li>
                  <a><img src="${ctx}/images/film_img/17.jpg" >&nbsp;《苏丹》格斗口碑特辑</span><span class="live-user">&nbsp;硬汉泪洒观影现场</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/film_img/18.jpg" >&nbsp;《阿尔法：狼伴归途》</span><span class="live-user">&nbsp;有了狼不怕神对手</span></a>
              </li>
               <li>
                  <a><img src="${ctx}/images/film_img/19.jpg" >&nbsp;《李宗伟：败者为王》</span><span class="live-user">&nbsp;意外的感动和惊喜</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/film_img/20.jpg" >&nbsp;《李茶的姑妈》傻瓜三兄弟</span><span class="live-user">&nbsp;戏里戏外都爆笑</span></a>
              </li>
           </ul>
     </div>
</div>


<!---------------------------热播电影----------------------------->
<div id="First-broadcast">
     <div class="title">首播影院<!--<span class="film-series-title">电影榜</span>--><span><a>更多</a></span></div>
     <div class="First-broadcast-vedio">
           <ul>
              <li><a href="#"><img src="${ctx}/images/film_img/06.jpg">&nbsp;蚁人</a><span class="score">8.8</span><br><span><a>&nbsp;逗比英雄逆袭</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/07.jpg">&nbsp;幸福马上来</a><span class="score">8.2</span><br><span><a>&nbsp;冯巩刘昊然父子档</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/08.jpg">&nbsp;蚁人2：黄蜂女现身</a><span class="score"> 7.3</span><br><span><a>&nbsp;蚁人复联后再现身</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/09.jpg">&nbsp;英伦对决</a><span class="score">8.7</span><br><span><a>&nbsp;成龙对决007</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/10.jpg">&nbsp;银魂</a><span class="score">6.7</span><br><span><a>&nbsp;白夜叉血战群雄</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/11.jpg">&nbsp;机器之血</a><span class="score">8.6</span><br><span><a>&nbsp;成龙血性搏杀</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/12.jpg">&nbsp;王牌保镖</a><span class="score">9.0</span><br><span><a>&nbsp;贱萌搭档爆笑逃亡</a></span></li>
          </ul>

     </div>
</div>


<!---------------------------排行榜----------------------------->
<div id="series">
     <div class="title">排行榜<a>热播</a><a>内地</a><a>美国</a><a>港台</a><a>院线</a><span><a>更多</a></span></div>
     <div class="series-vedio">
           <ul>
              <li><a href="#"><img src="${ctx}/images/film_img/06.jpg">&nbsp;蚁人</a><span class="score">8.8</span><br><span><a>&nbsp;逗比英雄逆袭</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/07.jpg">&nbsp;幸福马上来</a><span class="score">8.2</span><br><span><a>&nbsp;冯巩刘昊然父子档</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/08.jpg">&nbsp;蚁人2：黄蜂女现身</a><span class="score"> 7.3</span><br><span><a>&nbsp;蚁人复联后再现身</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/09.jpg">&nbsp;英伦对决</a><span class="score">8.7</span><br><span><a>&nbsp;成龙对决007</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/10.jpg">&nbsp;银魂</a><span class="score">6.7</span><br><span><a>&nbsp;白夜叉血战群雄</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/11.jpg">&nbsp;机器之血</a><span class="score">8.6</span><br><span><a>&nbsp;成龙血性搏杀</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/12.jpg">&nbsp;王牌保镖</a><span class="score">9.0</span><br><span><a>&nbsp;贱萌搭档爆笑逃亡</a></span></li>
          </ul>

     </div>
</div>


<!---------------------------特色影院----------------------------->
<div id="features">
<div class="title">特色影院<!--<span class="film-series-title">电影榜</span>--><span><a>更多</a></span></div>
<div class="Cooldog_container">
    <div class="Cooldog_content">
        <ul>
            <li class="p1">
                <a href="#">
                    <img src="${ctx}/images/film_slider/1.png" alt="">
                </a>
            </li>
            <li class="p2">
                <a href="#">
                    <img src="${ctx}/images/film_slider/2.png" alt="">
                </a>
            </li>
            <li class="p3">
                <a href="#">
                    <img src="${ctx}/images/film_slider/3.png" alt="">
                </a>
            </li>
            <li class="p4">
                <a href="#">
                    <img src="${ctx}/images/film_slider/4.png" alt="">
                </a>
            </li>
            <li class="p5">
                <a href="#">
                    <img src="${ctx}/images/film_slider/5.png" alt="">
                </a>
            </li>
            <li class="p5">
                <a href="#">
                    <img src="${ctx}/images/film_slider/6.png" alt="">
                </a>
            </li>
            <li class="p5">
                <a href="#">
                    <img src="${ctx}/images/film_slider/7.png" alt="">
                </a>
            </li>
        </ul>
    </div>
    <a href="javascript:;" class="btn_left">
        <i class="iconfont icon-zuoyoujiantou"></i>
    </a>
    <a href="javascript:;" class="btn_right">
        <i class="iconfont icon-zuoyoujiantou-copy-copy"></i>
    </a>
    <a href="javascript:;" class="btn_close">
        <i class="iconfont icon-icon-test"></i>
    </a>
    <div class="buttons clearfix">
        <a href="javascript:;" class="color"></a>
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
    </div>
</div>

</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/Cooldog.js"></script>




<!---------------------------版尾----------------------------->
<div id="buttom">
    <div class="bottom-com">
    	<div class="bottom-left">
            <ul>
               <li><a href="#">关于</a></li>
               <li><a href="#">关于我们</a></li>
               <li><a href="#">版权声明</a></li>
               <li><a href="#">用户协议</a></li>
            </ul>
         </div><!--bottom-left -->
         
        	<div class="bottom-middle">
            	<ul>
                	<li><a href="#">服务</a></li>
                	<li><a href="#">加入收藏</a></li>
                	<li><a href="#">官方微博</a></li>
                	<li><a href="#">联系方式</a></li>
                </ul>
            </div><!-- bottom-middle-->
            
        		<div class="bottom-right">
           			<img src="${ctx}/images/二维码.jpg" width="67px" height="66px">
            			<br>
                        <p style="margin-top:8px">扫一扫</p><p style="margin-top:8px"></p>为您送上猫视的最新动态
            	</div><!--bottom-right -->
       		</div><!-- bottom-com-->
    </div><!--版尾 -->


</body>
</html>
