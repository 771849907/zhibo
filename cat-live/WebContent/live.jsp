<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page session="false" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
 <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>直播</title>
<link href="${ctx}/css/live.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
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
             <li onmouseover=" displaysubMenu(this)" onmouseout="hidesubMenu(this)">
                  <a href="home-user.jsp">首页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a>
             </li>
             <li onmouseover=" displaysubMenu(this)" onmouseout="hidesubMenu(this)">
                  <a href="#">导航</a>
                      <ul>
                          <li><a href="#">直播</a></li> 
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
        <div class="login"><img src="${ctx}/images/用户.png"><a href="<%=request.getContextPath()%>/login.jsp">登录</a></div>
        
        <!------------------注册-------------------->
        <div class="register"><img src="${ctx}/images/注册.png"><a href="<%=request.getContextPath()%>/register.jsp">注册</a></div>
	 </div>
</div>

<div id="live-box">

<!---------------------------热门直播----------------------------->
<div id="game-live">
     <div class="title">游戏直播<a>逆水寒</a><a>绝地求生</a><a>王者荣耀</a><a>英雄联盟
     </a><a>迷你之夜</a><span><a>更多</a></span></div>
     <div class="game-live-vedio">
          <ul>
              <li>
                  <a href="play.jsp"><img src="${ctx}/images/live_img/00.jpg">&nbsp;[重播]9月12日KPL秋季赛…<span class="game">王者荣耀&nbsp;</span><span class="live-user">&nbsp;王者荣耀                  官方赛事</span></a>
              </li>
              <li>
                  <a href="playtest.jsp"><img src="${ctx}/images/live_img/01.jpg">&nbsp;SLI群星联赛S2重播<span class="game">绝地求生&nbsp;</span><span class="live-user">&nbsp;imba绝地求生频
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

<!---------------------------二次元直播----------------------------->
<div id="cosplay-live">
     <div class="title">二次元<span><a>更多</a></span></div>
     <div class="cosplay-live-vedio">
          <ul>
              <li>
                  <a><img src="${ctx}/images/live_img/13.jpg">&nbsp;月底最后一天拉拉啦<span class="game">萌妹&nbsp;</span><span class="live-user">&nbsp;Mo魔音兰兰呐</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/live_img/14.jpg">&nbsp;佛系跳开心就好舞<span class="game">跳舞&nbsp;</span><span class="live-user">&nbsp;imba绝地求生频
                  道</span></a></li>
              <li>
                  <a><img src="${ctx}/images/live_img/15.jpg">&nbsp;都哪个小宝贝要开学了呀<span class="game">唱歌&nbsp;</span><span class="live-user">&nbsp;小闹闹2333
                  </span></a></li>
              <li><a>
                  <img src="${ctx}/images/live_img/16.jpg">&nbsp;新主播、求求求罩顾<span class="game">萌妹&nbsp;</span><span class="live-user">&nbsp;泊含、阿蛮蛮
                  </span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/live_img/17.jpg">&nbsp;吃播来啦！带你去吃好吃的<span class="game">吃播&nbsp;</span><span class="live-user">&nbsp;瑶瑶小公主
                  </span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/live_img/18.jpg">&nbsp;开跳跳跳跳啦！民族舞<span class="game">跳舞&nbsp;</span><span class="live-user">&nbsp;小宇宇宇yu
                  </span></a>
              </li>
          </ul>
     </div>
</div>

<!---------------------------热播电视剧----------------------------->
<div id="TV">
     <div class="title">热门主播<span><a>更多</a>
     </div>
     <div class="TV-vedio">
          <ul>
              <li><a href="#"><img src="${ctx}/images/live_img/21.jpg">&nbsp;BYQ琳琳</a></li>
              <li><a href="#"><img src="${ctx}/images/live_img/22.jpg">&nbsp;隆星桐羽</a></li>
              <li><a href="#"><img src="${ctx}/images/live_img/23.jpg">&nbsp;小猫承蒙疯爱</a></li>
              <li><a href="#"><img src="${ctx}/images/live_img/24.jpg">&nbsp;火山过档</a></li>
              <li><a href="#"><img src="${ctx}/images/live_img/19.jpg">&nbsp;Mss优一只小可爱</a></li>
              <li><a href="#"><img src="${ctx}/images/live_img/26.jpg">&nbsp;酷哥小李子</a></li>
              <li><a href="#"><img src="${ctx}/images/live_img/27.jpg">&nbsp;洗牌技巧</a></li>
          </ul>
     </div>
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

</body>
</html>