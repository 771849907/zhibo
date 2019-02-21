<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page session="false" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript "src="<%=request.getContextPath()%>/javascript/player/ckplayer.js"></script>
<script type="text/javascript "src="<%=request.getContextPath()%>/javascript/player/ckplayer.min.js"></script>
<link href="${ctx}/css/play.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<script type = "text/javascript">
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


<!------------------版头-------------------->
<div id="head">
     <div class="logo"><img src="${ctx}/images/logo.png"></div>
     
      <!------------------导航-------------------->
     <div class="nav">
          <ul class="nav2">
             <li onMouseOver=" displaysubMenu(this)" onMouseOut="hidesubMenu(this)">
                  <a href="#">首页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a>
             </li>
             <li onMouseOver=" displaysubMenu(this)" onMouseOut="hidesubMenu(this)">
                  <a href="#">导航</a>
                      <ul>
                          <li><a href="#">直播</a></li> 
                          <li><a href="#">电视剧</a></li> 
                          <li><a href="#">电影</a></li> 
                          <li><a href="#">综艺</a></li> 
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



<!------------------content-------------------->
<div id="content">
        <div id="Introduction">
               <div class="Anchor-img"><img src="${ctx}/images/主播头像.png"></div>
               <div class="Anchor-name"><span class="title">一只致力于吃遍美食的大噗噗兽</span>
                                        <span class="time">小时榜:&nbsp;57</span>
                                     <a><span class="red">Lv.14</span>&nbsp;&nbsp;噗噗兽&nbsp;&nbsp;&nbsp;房间号：227594&nbsp;&nbsp;&nbsp;
                                        <span class="green"><img src="${ctx}/images/直播中.png">&nbsp;直播中</span>&nbsp;&nbsp;&nbsp;
                                     </a>
               </div>
               <div class="other"><span class="img"><img src="${ctx}/images/举报.png"></span>
                                  <span class="word">&nbsp;举报</span>
                                  <span class="img"><img src="${ctx}/images/分享.png"></span>
                                  <span class="word">&nbsp;分享</span>
                                  <span class="img"><img src="${ctx}/images/下载.png"></span>
                                  <span class="word">&nbsp;下载</span>
                                  <span class="blue">订阅&nbsp;|&nbsp;312,715</span>
                                  
               </div>
        </div>
        <div id = "video" style = "width:1180px;height:700px;"></div>
		<script type = "text/javascript">
			var videoObject = {
			container:'#video',
			variable:'player',
			autoplay:true,
			//在推流端发布的rtmp地址
			video:'rtmp://localhost/live/record1'
			};
			var play = new ckplayer(videoObject);
	</script>
        <div id="series">
                  <div class="fan-series">
                       <a>粉丝榜</a>
                  </div>
                  <div class="nav-series">
                      <a>日榜</a>
                      <a>总榜</a>
                      <a>守护</a>
                  </div>
                  <div class="series-anchor">
                        <span class="series-img"><img src="${ctx}/images/列表主播头像.png"></span>
                        <div class="series-Anchor-intro">
                             <span class="fan">噗噗兽的粉丝团</span><br>
                             <span class="series-Anchor-name">噗噗兽</span>
                        </div>
                  </div>
                  <div class="fan-sum">
                       <a>454<br><span class="size">团成员</span></a>
                       <a>54<br><span class="size">本周真爱卡</span></a>
                       <span class="week-series">13<br><span class="size">排名</span></span>
                  </div>
                  <div class="send">
                       <input type="text" placeholder="&nbsp;发送弹幕，大家一起互动..."><button>发送</button>
                  </div>
        </div>
        
        <div class="personal">
                  <div class="live-details">直播详情</div>
                  <div class="details">想成为噗噗家房管请噗噗吃5只龙虾或者守护噗噗，不卖私人<span class="green">微信</span>~~<br>改版后房管有限，几个月不见人可能会清理哦，抱歉！<br>噗噗是个很爱吃的人，看着胖乎乎软绵绵的，但是如果噗噗被人欺负了还是会怼回去的，<br>如果实在受不了的请见谅！<br>各种食物在线吃播，小到街边美食，大到跨国美食，各种美味告知你！<br><span class="live-time">每天下午3点半-6点，晚上8点半-10点半直播</span><br>微博：<span class="yello">噗噗</span><br>直播录像，B站：<span class="yello">噗噗直播录像</span>
                  </div>
                  
                  <div class="personal-show"><img src="${ctx}/images/噗噗.jpg"></div>
                 
        
        </div>
</div>

</body>
</html>