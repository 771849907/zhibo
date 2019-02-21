<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page session="false" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>个人信息</title>
<link rel="stylesheet" type="text/css" href="${ctx}/css/personal-details.css">
<link rel="stylesheet" type="text/css" href="${ctx}/css/buttom.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
</head>

<body>
<div id="com">
<div id="head">
     <div class="logo"><img src="${ctx}/images/logo01.png"></div>
     
      <!------------------导航-------------------->
     <div class="nav">
          <ul class="nav2">
             <li onMouseOver=" displaysubMenu(this)" onMouseOut="hidesubMenu(this)">
                  <a href="index.html">首页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a>
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
        
      
	 </div>
</div>
<!--.........................................个人信息..................................... -->
<div id="information">
	<form action="" method="post" class="STYLE-NAME">
    	<h1>基本信息
    		<span>essential information</span>
    			<img src="${ctx}/images/头像.jpg" width="130" height="150">
    	</h1>
            <label>
            <span>昵&nbsp;&nbsp;称: 猫视小主</span>
            </label>
        </br>
            <label>
            <span>性&nbsp;&nbsp;别: 保密</span>
            </label>
        </br>
            <label>
            <span>地&nbsp;&nbsp;区: 广东深圳</span>
            </label>
        </br>    
            <label>
            <span>常用邮箱: 145&times;&times;&times;&times;99@qq.com</span>
            </label>
        </br>
            <label>
            <span>联系方式：180&times;&times;&times;&times;57</span>
          
            </label>
        </br>
            <label>
            <span>个性签名：未设置</span>
            </label>
    	</br>
 		
    		<a href="setting.jsp">
            <img src="${ctx}/images/设置.png" width="35px" height="31px">
            </a>
   
    </form>
</div><!--information -->
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