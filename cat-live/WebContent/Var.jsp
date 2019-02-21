<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page session="false" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
 <!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"><!--ie使用edge渲染模式-->
<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no" id="viewport" name="viewport">
<meta name="renderer" content="webkit"><!--360渲染模式-->
<meta name="format-detection" content="telephone=notelphone=no, email=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<meta name="apple-touch-fullscreen" content="yes"><!-- 是否启用 WebApp 全屏模式，删除苹果默认的工具栏和菜单栏 -->
<meta name="apple-mobile-web-app-status-bar-style" content="black"><!-- 设置苹果工具栏颜色:默认值为 default，可以定为 black和 black-translucent-->
<meta http-equiv="Cache-Control" content="no-siteapp" /><!-- 不让百度转码 -->
<meta name="HandheldFriendly" content="true"><!-- 针对手持设备优化，主要是针对一些老的不识别viewport的浏览器，比如黑莓 -->
<meta name="MobileOptimized" content="320"><!-- 微软的老式浏览器 -->
<meta name="screen-orientation" content="portrait"><!-- uc强制竖屏 -->
<meta name="x5-orientation" content="portrait"><!-- QQ强制竖屏 -->
<meta name="browsermode" content="application"><!-- UC应用模式 -->
<meta name="x5-page-mode" content="app"><!-- QQ应用模式 -->
<meta name="msapplication-tap-highlight" content="no"><!-- windows phone 点击无高光 -->
<title>综艺</title>
<link rel="stylesheet" href="${ctx}/css/Var-slider.css" />
<link href="${ctx}/css/Var.css" type="text/css" rel="stylesheet">
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
<div class="js-silder">
   <div class="silder-scroll">
		<div class="silder-main">
			<div class="silder-main-img">
				<img src="${ctx}/images/var_slider/00.png" alt="">
			</div>
			<div class="silder-main-img">
				<img src="${ctx}/images/var_slider/01.png" alt="">
			</div>
			<div class="silder-main-img">
				<img src="${ctx}/images/var_slider/02.png" alt="">
			</div>
		</div>
	</div>
</div>


<script src="<%=request.getContextPath()%>/javascript/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/javascript/wySilder.min.js" type="text/javascript"></script>
<script>
	$(function (){
		$(".js-silder").silder({
			auto: true,//自动播放，传入任何可以转化为true的值都会自动轮播
			speed: 20,//轮播图运动速度
			sideCtrl: true,//是否需要侧边控制按钮
			bottomCtrl: true,//是否需要底部控制按钮
			defaultView: 0,//默认显示的索引
			interval: 3000,//自动轮播的时间，以毫秒为单位，默认3000毫秒
			activeClass: "active",//小的控制按钮激活的样式，不包括作用两边，默认active
		});
	});
</script>

<!---------------------------分类----------------------------->
<div id="classification">
     <div class="cla">
          <ul>
             <li>
             <p style="margin-left:15px;">按类型;</p>
                 <a href="#">晚会</a><a href="#">生活</a><a href="#">访谈</a><a href="#">音乐</a>
                 <a href="#">时尚</a><a href="#">游戏</a><a href="#">旅游</a><a href="#">真人秀</a>
             </li>
             <li>
              <p style="margin-left:15px;">按地区</p>
                 <a href="#">大陆</a><a href="#">香港</a><a href="#">台湾</a><a href="#">韩国</a>
                 <a href="#">日本</a><a href="#">美国</a><a href="#">泰国</a>
             </li>
             <li>
             <p style="margin-left:15px;">按年份</p>
                 <a href="#">2016</a><a href="#">2015</a><a href="#">2014</a><a href="#">2013</a>
                 <a href="#">2012</a><a href="#">2011</a><a href="#">2010</a>
             </li>
          </ul>
     </div>
</div>

<!---------------------------热门直播----------------------------->
<div id="hot">
     <div class="title">热门综艺<a>更多</a></div>
     <div class="hot-var">
          <ul>
              <li>
                  <a><img src="${ctx}/images/var_img/00.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li >
                  <a><span class="Explanation"><br>&nbsp;&nbsp;1v1:酷girl嗲音说炸现场<br>&nbsp;&nbsp;纯宇：胖妹彪哥pk邓紫棋<br>&nbsp;&nbsp;顽皮：阎研”调戏“李荣浩<br>&nbsp;&nbsp;未播：Casper炫耀”女人缘“</span></a></li>
             <li>
                  <a><img src="${ctx}/images/var_img/01.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li >
                  <a><span class="Explanation"><br>&nbsp;&nbsp;1v1:酷girl嗲音说炸现场<br>&nbsp;&nbsp;纯宇：胖妹彪哥pk邓紫棋<br>&nbsp;&nbsp;顽皮：阎研”调戏“李荣浩<br>&nbsp;&nbsp;未播：Casper炫耀”女人缘“</span></a></li>
              </li>
             <li>
                  <a><img src="${ctx}/images/var_img/02.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li >
                  <a><span class="Explanation"><br>&nbsp;&nbsp;1v1:酷girl嗲音说炸现场<br>&nbsp;&nbsp;纯宇：胖妹彪哥pk邓紫棋<br>&nbsp;&nbsp;顽皮：阎研”调戏“李荣浩<br>&nbsp;&nbsp;未播：Casper炫耀”女人缘“</span></a></li>
          </ul>
          
          <ul>
              <li>
                  <a><img src="${ctx}/images/var_img/03.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/04.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
             <li>
                  <a><img src="${ctx}/images/var_img/05.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/06.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
             <li>
                  <a><img src="${ctx}/images/var_img/07.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/01.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
          </ul>
     </div>
</div>


<!---------------------------综艺----------------------------->
<div id="new">
     <div class="title">最新更新<a>更多</a></div>
     <div class="new-slider"><img src="${ctx}/images/var_img/09.png"></div>
     <div class="new-var">
          <ul>
              <li>
                  <a><img src="${ctx}/images/var_img/00.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/01.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/02.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/03.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
           </ul>
           
           <ul>
              <li>
                  <a><img src="${ctx}/images/var_img/04.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/05.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/06.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
             <li>
                  <a><img src="${ctx}/images/var_img/07.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
           </ul>
           
            <ul>
              <li>
                  <a><img src="${ctx}/images/var_img/01.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
             <li>
                  <a><img src="${ctx}/images/var_img/02.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
             <li>
                  <a><img src="${ctx}/images/var_img/03.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/04.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/05.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/06.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
           </ul>
     </div>
</div>

<div id="inland">
     <div class="title">大陆综艺<a>更多</a></div>
     <div class="series">
     <span>&nbsp;排行榜</span>
     <!--<a><span class="red">&nbsp;1.欢乐喜剧人第四季</span></a>
     <a><span class="red">&nbsp;2.周六夜现场第一季</span></a>
     <a><span class="red">&nbsp;3.晓说</span></a>-->
     <a>&nbsp;&nbsp;1.欢乐喜剧人第四季</a>
     <a>&nbsp;&nbsp;2.周六夜现场第一季</a>
     <a>&nbsp;&nbsp;3.晓说</a>
     <a>&nbsp;&nbsp;4.这就是对唱</a>
     <a>&nbsp;&nbsp;5.欢乐喜剧人第三季</a>
     <a>&nbsp;&nbsp;6.喜剧总动员第二季</a>
     <a>&nbsp;&nbsp;7.这！就是街舞第一季</a>
     <a>&nbsp;&nbsp;8.极限挑战</a>
     <a>&nbsp;&nbsp;10.欢乐喜剧人第一季</a>
     <a>&nbsp;&nbsp;11.奔跑吧第五季</a>
     <a>&nbsp;&nbsp;12.奇葩说第二季</a></div>
     <div class="inland-var">
          <ul>
              <li>
                  <a><img src="${ctx}/images/var_img/00.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/01.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
             <li>
                  <a><img src="${ctx}/images/var_img/02.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/03.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/04.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
           </ul>
           
           <ul>
             <li>
                  <a><img src="${ctx}/images/var_img/05.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/06.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/07.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
              <li>
                  <a><img src="${ctx}/images/var_img/01.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
             <li>
                  <a><img src="${ctx}/images/var_img/02.png" >&nbsp;非常静距离…</span><span class="live-user">&nbsp;张哲瀚自爆拍戏只对女主熟悉</span></a>
              </li>
           </ul>
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