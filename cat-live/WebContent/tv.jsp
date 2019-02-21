<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page session="false" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>TV</title>
<link href="${ctx}/css/TV.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="${ctx}/css/jquery.slideBox.css" rel="stylesheet" type="text/css" />
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
                <li><a href="#"><img src="${ctx}/images/slider_img/00.png" width="100%" ></a></li>
                <li><a href="#"><img src="${ctx}/images/slider_img/01.png" width="100%" ></a></li>
                <li><a href="#"><img src="${ctx}/images/slider_img/02.png" width="100%" ></a></li>
                <li><a href="#"><img src="${ctx}/images/slider_img/03.png" width="100%"></a></li>
                <li><a href="#"><img src="${ctx}/images/slider_img/04.png" width="100%" ></a></li>
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


<!---------------------------分类-----------------------------><!---------------------------分类----------------------------->
<div id="classification">
     <div class="cla">
          <ul>
             <li>
			 <p style="margin-left:15px;">按类型</p>
                  <a href="#">全部</a><a href="#">言情</a><a href="#">都市</a><a href="#">伦理</a>
                 <a href="#">悬疑</a><a href="#">喜剧</a><a href="#">警匪</a><a href="#">历史</a>
             </li>
             <li>  
			 <p style="margin-left:15px;">按地区</p>
                 <a href="#">全部</a><a href="#">大陆</a><a href="#">香港</a><a href="#">美国</a>
                 <a href="#">英国</a><a href="#">日本</a><a href="#">韩国</a><a href="#">泰国</a>
             </li>
             <li>
			 <p style="margin-left:15px;">按演员</p>
                <a href="#">全部</a><a href="#">胡歌</a><a href="#">赵丽颖</a><a href="#">靳东</a>
                 <a href="#">邓伦</a><a href="#">杨幂</a><a href="#">刘诗诗</a><a href="#">杨怡</a>
             </li>
             <li>
			   <p style="margin-left:15px;">按年份</p>
                  <a href="#">全部</a><a href="#">2018</a><a href="#">2017</a><a href="#">2016</a>
                 <a href="#">2015</a><a href="#">2014</a><a href="#">2013</a><a href="#">2012</a>
             </li>
          </ul>
     </div>
</div>



<!---------------------------最新电视剧----------------------------->
<div id="live">
     <div class="title">最新电视剧<a>更多</a></div>
     <div class="live-vedio">
          <ul>
              <li>
                  <a href="tv-play.jsp"><img src="${ctx}/images/tv-img/古剑奇谭2.jpg" width="218" height="135" >
						&nbsp;古剑奇谭2
                        <br>
                        <span class="live-user">&nbsp;辛颖夫妇</span>
                        </a>
              </li>
              <li>
                  <a><img src="${ctx}/images/tv-img/流星花园.jpg" width="218" height="135">
                  		&nbsp;流星花园
                        <br>
                        <span class="live-user">&nbsp;F4又双来了</span>
                  </a>
              </li>
              <li>
                  <a><img src="${ctx}/images/tv-img//胜利之路.jpg" width="218" height="135">
                      &nbsp;胜利之路
                      <br>
                      <span class="live-user">&nbsp;狼王队长郭京飞横扫日军</span>
                  </a>
              </li>
              <li>
                  <a><img src="${ctx}/images/tv-img//猎毒人.jpg" width="218" height="135">
                      &nbsp;猎毒人
                      <br>
                      <span class="live-user">&nbsp;于和伟变身制毒专家上演无间道</span>
                  </a>
              </li>
              <li>
                  <a><img src="${ctx}/images/tv-img/扶摇.jpg" width="218" height="135">
                      &nbsp;扶摇
                      <br>
                      <span class="live-user">&nbsp;扶摇以一人之死换天下苍生</span>
                  </a>
              </li>
              <li>
                  <a><img src="${ctx}/images/tv-img/开封府.jpg" width="218" height="135" >
                      &nbsp;开封府
                      <br>
                      <span class="live-user">&nbsp;黄维德版包拯夯傻正直不懂爱</span>
                  </a>
              </li>
          </ul>
          
          <ul>
              <li>
                  <a><img src="${ctx}/images/tv-img/女神夏洛克.jpg" width="218" height="135">
                      &nbsp;女神夏洛克
                      <br>
                      <span class="live-user">&nbsp;女版福尔摩斯与华生破奇案</span>
                  </a>
              </li>
              <li>
                  <a><img src="${ctx}/images/tv-img/产科医鸿鸟.jpg" width="218" height="135">
                      &nbsp;产科医鸿鸟
                      <br>
                      <span class="live-user">&nbsp;每个降生的孩子都是天使</span>
                 </a>
              </li>
              <li>
                  <a><img src="${ctx}/images/tv-img/天生绝配.jpg" width="218" height="135">
                      &nbsp;天生绝配
                      <br>
                      <span class="live-user">&nbsp;网红少女遇旧爱重燃爱火</span>
                  </a>
              </li>
              <li>
                  <a><img src="${ctx}/images/tv-img/等你爱我.jpg" width="218" height="135">
                      &nbsp;等你爱我
                      <br>
                      <span class="live-user">&nbsp;高冷总裁爱上平凡“假妹妹”</span>
                  </a>
              </li>
              <li>
                  <a><img src="${ctx}/images/tv-img/不懂撒娇的女人.jpg" width="218" height="135">
                      &nbsp;不懂撒娇的女人
                      <br>
                      <span class="live-user">&nbsp;宣萱化身女魔头套路林文龙</span>
                  </a>
              </li>
              <li>
                  <a><img src="${ctx}/images/tv-img/幕后玩家.jpg" width="218" height="135">
                      &nbsp;幕后玩家
                      <br>
                      <span class="live-user">&nbsp;黄宗泽心机渣男的双面人生</span>
                  </a>
              </li>
          </ul>
     </div>
</div>





<!---------------------------内地热播----------------------------->
<div id="TV">
     <div class="title">内地热播<span class="TV-series-title">电视剧榜</span><a>更多</a></div>
     <div class="TV-vedio">
          <ul>
              <li><a href="#"><img src="${ctx}/images/TV_img/00.jpg">&nbsp;延禧攻略</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/01.jpg">&nbsp;再创世纪</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/02.jpg">&nbsp;我和两个他</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/03.jpg">&nbsp;芸汐传</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/04.jpg">&nbsp;1006的房客</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/05.jpg">&nbsp;朕的刺客女友</a></li>
              <li class="bg-series">
                  <a href="#" class="TV-series">
                      <span class="red">&nbsp;&nbsp;1.延禧攻略</span><br>
                      <span class="red">&nbsp;&nbsp;2.香蜜沉沉烬如霜</span><br>
                      <span class="red">&nbsp;&nbsp;3.天盛长歌</span><br>
                      <span >&nbsp;&nbsp;4.桃花依旧笑春风</span><br>
                      <span>&nbsp;&nbsp;5.最美的青春</span><br>
                      <span>&nbsp;&nbsp;6.月嫂先生</span><br>
                      <span>&nbsp;&nbsp;7.胜利之路</span><br>
                      <span>&nbsp;&nbsp;8.龙门飞甲</span><br>
                      <span>&nbsp;&nbsp;9.芸汐传</span><br>
                  </a>
              </li>
          </ul>
           <ul>
              <li><a href="#"><img src="${ctx}/images/TV_img/06.jpg">&nbsp;天盛长歌</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/07.jpg">&nbsp;香蜜沉沉烬如霜</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/08.jpg">&nbsp;龙门飞甲</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/09.jpg">&nbsp;爱情进化论</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/10.jpg">&nbsp;月嫂先生</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/11.jpg">&nbsp;最美的青春</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/12.jpg">&nbsp;调香师</a></li>
          </ul>

     </div>
</div>



<!---------------------------海外热播----------------------------->
<div id="film">
     <div class="title">海外热播<span class="film-series-title">排名榜</span><a>更多</a></div>
     <div class="film-vedio">
          <ul>
              <li><a href="#"><img src="${ctx}/images/film_img/00.jpg">&nbsp;神奇马戏团</a><span class="score">7.2</span><br><span><a>&nbsp;萌想由你想变就变</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/01.jpg">&nbsp;神探风云</a><span class="score">7.2</span><br><span><a>&nbsp;爆裂神探除恶追凶</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/02.jpg">&nbsp;007：幽灵党</a><span class="score">7.5</span><br><span><a>&nbsp;传奇英雄背水一战</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/03.jpg">&nbsp;狄仁杰之神都龙王</a><span class="score">8.7</span><br><span><a>&nbsp;徐克玩转水下3D</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/04.jpg">&nbsp;霍比特人：五军之战</a><span class="score">7.2</span><br><span><a>&nbsp;霍比特系列完结篇 </a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/05.jpg">&nbsp;机甲神七 </a><span class="score">7.5</span><br><span><a>&nbsp;彭禺厶变身钢铁侠</a></span></li>
              <li class="bg-series">
                  <a href="#" class="film-series">
                      <span class="red">&nbsp;&nbsp;1.007：幽灵党</span><br>
                      <span class="red">&nbsp;&nbsp;2.灵魂摆渡黄泉</span><br>
                      <span class="red">&nbsp;&nbsp;3.蚁人</span><br>
                      <span>&nbsp;&nbsp;4.狄仁杰之神都龙王</span><br>
                      <span>&nbsp;&nbsp;5.英伦对决</span><br>
                      <span>&nbsp;&nbsp;6.机器之血</span><br>
                      <span>&nbsp;&nbsp;7.天下第一镖局</span><br>
                      <span>&nbsp;&nbsp;8.狄仁杰之通天帝国</span><br>
                      <span>&nbsp;&nbsp;9.神探风云</span><br>
                      <span>&nbsp;&nbsp;10.唐人街探案2</span><br>
                  </a>
              </li>
          </ul>
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
