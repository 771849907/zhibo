<%@ page language="java" contentType="text/html; charset=utf-8"
 																							   pageEncoding="utf-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page session="false" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
 <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>首页</title>
<link  type="text/css" rel="stylesheet" href="${ctx}/css/home.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="${ctx}/css/jquery.slideBox.css" rel="stylesheet" type="text/css" />



</head>

<body>

<div id="com">
<!------------------版头-------------------->
<div  id="head">
     <div class="logo"><a href ="../backstage.jsp"><img src="${ctx}/images/logo01.png"></a></div>
     
      <!------------------导航-------------------->
     <div class="nav">
          <a href="#">首页</a>
          <a href="../live.jsp">直播</a>
          <a href="../tv.jsp">电视剧</a>
          <a href="../film.jsp">电影</a>
          <a href="../Var.jsp">综艺</a>
          
     </div>
     
     <%-- <div class="register-a"><img src="${ctx}/images/注销.png"><a href="<%=request.getContextPath()%>/register-a.jsp">个人</a></div> --%>
     
     <!------------------搜索框-------------------->
	 <div class="search">
		<form>
		  <input type="text" placeholder="搜索从这里开始...">
		  <button type="submit"></button>
		</form>
   
    <!------------------登录-------------------->
        <%-- <div class="login"><img src="${ctx}/images/用户.png"><a href="<%=request.getContextPath()%>/login.jsp">登录</a></div> --%>
        <li><label class="login-a" value="${sessionScope.username}" >${sessionScope.username}</label></li>
        <!------------------注册-------------------->
        <div class="register"><img src="${ctx}/images/个人信息.png"><a href="<%=request.getContextPath()%>/personal-details.jsp">个人</a></div>
	 </div>
      
   
    
        
	 
</div>



<!---------------------------轮播图----------------------------->
<center>
       <div id="demo1" class="slideBox">
            <ul class="items">
                <li><a href="#"><img src="${ctx}/images/slider_img/00.png" width="100%" ></a></li>
                <li><a href="#"><img src="${ctx}/images/film_slider/4.png" width="100%" ></a></li>
                <li><a href="#"><img src="${ctx}/images/film_slider/2.png" width="100%" ></a></li>
                <li><a href="#"><img src="${ctx}/images/var_slider/01.png" width="100%"></a></li>
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


<!---------------------------分类----------------------------->
<div id="classification">
     <div class="cla">
          <ul>
             <li>
                 <a href="#">电视剧</a><a href="#">综艺</a><a href="#">体育</a><a href="#">娱乐</a>
                 <a href="#">电影</a><a href="#">自制</a><a href="#">音乐</a><a href="#">热点</a>
             </li>
             <li>
                 <a href="#">动漫</a><a href="#">教育</a><a href="#">财经</a><a href="#">科技</a>
                 <a href="#">搞笑</a><a href="#">风尚</a><a href="#">美女</a><a href="#">游戏</a>
             </li>
             <li>
                 <a href="#">直播</a><a href="#">旅游</a><a href="#">宠物</a><a href="#">公益</a>
                 <a href="#">时尚</a><a href="#">生活</a><a href="#">亲子</a><a href="#">纪实</a>
             </li>
             <li>
                 <a href="#">热点</a><a href="#">文学</a><a href="#">漫画</a><a href="#">原创</a>
                 <a href="#">商城</a><a href="#">公益</a><a href="#">健康</a><a href="#">纪录片</a>
             </li>
          </ul>
     </div>
</div>

<!---------------------------热门直播----------------------------->
<div id="live">
     <div class="title">热门直播<a>更多</a></div>
     <div class="live-vedio">
          <ul>
              <li>
                  <a><img src="${ctx}/images/live_img/00.jpg">&nbsp;[重播]9月12日KPL秋季赛…<span class="game">王者荣耀&nbsp;</span><span class="live-user">&nbsp;王者荣耀                  官方赛事</span></a>
              </li>
              <li>
                  <a href ="backstage.jsp"><img src="${ctx}/images/live_img/01.jpg">&nbsp;SLI群星联赛S2重播<span class="game">绝地求生&nbsp;</span><span class="live-user">&nbsp;imba绝地求生频
                  道</span></a></li>
              <li>
                  <a><img src="${ctx}/images/live_img/02.jpg">&nbsp;无敌战神局，场均10杀<span class="game">刺激战场&nbsp;</span><span class="live-user">&nbsp;潇男莫虐
                  </span></a></li>
              <li><a>
                  <img src="${ctx}/images/live_img/03.jpg">&nbsp;LPL夏季赛精彩回顾<span class="game">英雄联盟&nbsp;</span><span class="live-user">&nbsp;英雄联盟官方赛事
                  </span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/live_img/04.jpg">&nbsp;吓skr，上76星<span class="game">王者荣耀&nbsp;</span><span class="live-user">&nbsp;少年不太冷Rex
                  </span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/live_img/05.jpg">&nbsp;巅峰寂寞单排65星…<span class="game">王者荣耀&nbsp;</span><span class="live-user">&nbsp;小宇宇宇yu
                  </span></a>
              </li>
          </ul>
          
          <ul>
              <li>
                  <a><img src="${ctx}/images/live_img/06.jpg">&nbsp;加拿大美丽极光…<span class="game">科普&nbsp;</span><span class="live-user">&nbsp;在线天文详细
                  讲解</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/live_img/07.jpg">&nbsp;震惊！40星冲个51<span class="game">王者荣耀&nbsp;</span><span class="live-user">&nbsp;AMa0、阿
                  毛</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/live_img/08.jpg">&nbsp;暴躁杠开集锦，这才叫…<span class="game">欢乐麻将&nbsp;</span><span class="live-user">&nbsp;霸哥来
                  了</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/live_img/09.jpg">&nbsp;今天认真吃鸡。<span class="game">绝地求生&nbsp;</span><span class="live-user">&nbsp;彬哥哥哥哥
                  、、</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/live_img/10.jpg">&nbsp;国服南京赵云：单排…<span class="game">王者荣耀&nbsp;</span><span class="live-user">&nbsp;声优赵猥琐
                  </span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/live_img/11.jpg">&nbsp;性感主播在线宠粉<span class="game">王者荣耀&nbsp;</span><span class="live-user">&nbsp;豆豆、Thomas
                  </span></a>
              </li>
          </ul>
     </div>
</div>



<!---------------------------综艺----------------------------->
<div id="Variety">
     <div class="title">综艺<a>更多</a></div>
     <div class="Var-slider"><img src="${ctx}/images/var_img/08.png"></div>
     <div class="Var-vedio">
          <ul>
              <li>
                  <a><img src="${ctx}/images/var_img/00.png" >&nbsp;非常静距离…<span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/01.png">&nbsp;S坑王驾到：周末双播<span class="live-user">&nbsp;imba姜子牙姻缘断弃独走西岐</span></a></li>
              <li>
                  <a><img src="${ctx}/images/var_img/02.png">&nbsp;围炉音乐会2018<span class="live-user">&nbsp;腾格尔献周华健经典《花心》
                  </span></a></li>
              <li><a>
                  <img src="${ctx}/images/var_img/03.png">&nbsp;梦想改造家第五季<span class="live-user">&nbsp;本间贵史打造自闭症患者新居
                  </span></a>
              </li>
           </ul>
           
           <ul>
              <li>
                  <a><img src="${ctx}/images/var_img/04.png">&nbsp;相声有新人<span class="live-user">&nbsp;“大喇叭”自带回音笑疯全场</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/05.png">&nbsp;匠心传奇第一季<span class="live-user">&nbsp;温太医杨澜携手制作犀皮漆</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/06.png">&nbsp;跨界喜剧王第三季<span class="live-user">&nbsp;喜剧练习生沙宝亮C位出道
                  </span></a></li>
              <li><a>
                  <img src="${ctx}/images/var_img/07.png">&nbsp;嗨！蓝朋友第一季<span class="live-user">&nbsp;萧敬腾被郑凯赞体力很棒</span></a>
              </li>
           </ul>
     </div>
</div>


<!---------------------------热播电视剧----------------------------->
<div id="TV">
     <div class="title">热播剧场<span class="TV-series-title">电视剧榜</span><a>更多</a></div>
      <div class="TV-vedio">
          <ul>
              <li><a href="#"><img src="${ctx}/images/TV_img/00.jpg">&nbsp;延禧攻略</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/01.jpg">&nbsp;再创世纪</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/02.jpg">&nbsp;我和两个他</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/03.jpg">&nbsp;芸汐传</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/04.jpg">&nbsp;1006的房客</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/05.jpg">&nbsp;朕的刺客女友</a></li>
              </ul>

         
           <ul>
              <li><a href="#"><img src="${ctx}/images/TV_img/06.jpg">&nbsp;天盛长歌</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/07.jpg">&nbsp;香蜜沉沉烬如霜</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/08.jpg">&nbsp;龙门飞甲</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/09.jpg">&nbsp;爱情进化论</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/10.jpg">&nbsp;月嫂先生</a></li>
              <li><a href="#"><img src="${ctx}/images/TV_img/11.jpg">&nbsp;最美的青春</a></li>
          </ul>
     </div>
     <div class="TV-series">                
                      <span class="red">&nbsp;&nbsp;1.延禧攻略</span><br>
                      <span class="red">&nbsp;&nbsp;2.香蜜沉沉烬如霜</span><br>
                      <span class="red">&nbsp;&nbsp;3.天盛长歌</span><br>
                      <span >&nbsp;&nbsp;4.桃花依旧笑春风</span><br>
                      <span>&nbsp;&nbsp;5.最美的青春</span><br>
                      <span>&nbsp;&nbsp;6.月嫂先生</span><br>
                      <span>&nbsp;&nbsp;7.胜利之路</span><br>
                      <span>&nbsp;&nbsp;8.龙门飞甲</span><br>
                      <span>&nbsp;&nbsp;9.芸汐传</span><br>
                      <span >&nbsp;&nbsp;10.桃花依旧笑春风</span><br>
                      <span>&nbsp;&nbsp;11.最美的青春</span><br>
                      <span>&nbsp;&nbsp;12.月嫂先生</span><br>
                      <span>&nbsp;&nbsp;13.胜利之路</span><br>
                      <span>&nbsp;&nbsp;14.龙门飞甲</span><br>
                      <span>&nbsp;&nbsp;15.芸汐传</span><br>
                      <span>&nbsp;&nbsp;16.胜利之路</span><br>
                      <span>&nbsp;&nbsp;17.龙门飞甲</span><br>
                    
     </div>
</div>



<!---------------------------热播电影----------------------------->
<div id="film">
     <div class="title">热播电影<span class="film-series-title">电影榜</span><a>更多</a></div>
     <div class="film-vedio">
          <ul>
              <li><a href="#"><img src="${ctx}/images/film_img/00.jpg">&nbsp;神奇马戏团</a><span class="score">7.2</span><br><span><a>&nbsp;萌想由你想变就变</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/01.jpg">&nbsp;神探风云</a><span class="score">7.2</span><br><span><a>&nbsp;爆裂神探除恶追凶</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/02.jpg">&nbsp;007：幽灵党</a><span class="score">7.5</span><br><span><a>&nbsp;传奇英雄背水一战</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/03.jpg">&nbsp;狄仁杰之神都龙王</a><span class="score">8.7</span><br><span><a>&nbsp;徐克玩转水下3D</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/04.jpg">&nbsp;霍比特人：五军之战</a><span class="score">7.2</span><br><span><a>&nbsp;霍比特系列完结篇 </a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/05.jpg">&nbsp;机甲神七 </a><span class="score">7.5</span><br><span><a>&nbsp;彭禺厶变身钢铁侠</a></span></li>
              
          </ul>
           <ul>
              <li><a href="#"><img src="${ctx}/images/film_img/06.jpg">&nbsp;蚁人</a><span class="score">8.8</span><br><span><a>&nbsp;逗比英雄逆袭</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/07.jpg">&nbsp;幸福马上来</a><span class="score">8.2</span><br><span><a>&nbsp;冯巩刘昊然父子档</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/08.jpg">&nbsp;蚁人2：黄蜂女现身</a><span class="score"> 7.3</span><br><span><a>&nbsp;蚁人复联后再现身</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/09.jpg">&nbsp;英伦对决</a><span class="score">8.7</span><br><span><a>&nbsp;成龙对决007</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/10.jpg">&nbsp;银魂</a><span class="score">6.7</span><br><span><a>&nbsp;白夜叉血战群雄</a></span></li>
              <li><a href="#"><img src="${ctx}/images/film_img/11.jpg">&nbsp;机器之血</a><span class="score">8.6</span><br><span><a>&nbsp;成龙血性搏杀</a></span></li>
               </ul>
     </div>
     <div class="film-series">  
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
                      <span>&nbsp;&nbsp;11.狄仁杰之神都龙王</span><br>
                      <span>&nbsp;&nbsp;12.英伦对决</span><br>
                      <span>&nbsp;&nbsp;13.机器之血</span><br>
                      <span>&nbsp;&nbsp;14.天下第一镖局</span><br>
                      <span>&nbsp;&nbsp;15.狄仁杰之通天帝国</span><br>
                      <span>&nbsp;&nbsp;16.神探风云</span><br>
                      <span>&nbsp;&nbsp;17.唐人街探案2</span><br>
                       <span>&nbsp;&nbsp;18.唐人街探案2</span>
     </div>
                      
</div>


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
</div><!--com -->


</body>
</html>
