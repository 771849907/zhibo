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
<link rel="stylesheet" type="text/css" href="${ctx}/css/setting.css">
<link rel="stylesheet" type="text/css" href="${ctx}/css/buttom.css">
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
<div id="com">
<div id="head">
     <div class="logo"><img src="${ctx}/images/logo01.png"></div>
     
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
     
	 </div>
</div>



<!--...............................个人信息设置........................................................-->

<div id="seting-information">
	<div class="set-avatar">
    	<a href="#">
    		<img src="${ctx}/images/头像.jpg" width="100px" height="120px">
            <p class="set-avatar-text">更换头像</p>
        </a>
    </div><!-- set-avatar-->
    	<div id="set-title">
        	<a href="#" class="basic">基本设置</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">安全设置</a>
            	<a href="information.html" class="set-return">返回</a>
                <hr style="border:1px solid #ccc; height:0.1px;">	
        </div><!-- set-title-->
        	<div id="set">
            	<form action="" method="post" class="amend">
                	<label>
                    <span>昵&nbsp;&nbsp;称:</span>
                    <input id="name" type="text" name="name" placeholder="&nbsp;猫视小主"/>
                    </label>
                <br>
                    <label>
                    <span>性&nbsp;&nbsp;别:</span>
                    <select name="selection" type="sex">
                     <option value="choose">请选择<option>
                    <option value="boy">男<option>
                    <option value="girl">女<option>
                    <option value="girl">保密<option>
                    </select>
                    </label>
                </br>
                   
                	<label>
                    <span>地&nbsp;&nbsp;区:</span>
                    <select name="selection" type="provice">
                    <option value="choose">请选择<option>
                    <option value="beijing">北京市<option>
                    <option value="tianjin">天津市<option>
                    <option value="guangdong">广东省<option>
                    <option value="guangxi">广西省<option>
                    <option value="hubei">湖北省<option>
                    <option value="hunan">湖南省<option>
                    <option value="shanxi">山西省<option>
                    </select>
                    
                    <select name="selection" type="area">
                    <option value="choose">请选择<option>
                    <option value="guangzhou">广州市<option>
                    <option value="qingyuan">清远市<option>
                    <option value="shaoguan">韶关市<option>
                    <option value="heyuan">河源市<option>
                    <option value="zhongshan">中山市<option>
                    <option value="foshan">佛山市<option>
                    <option value="zhuhai">珠海市<option>
                    </select>
                    </label>
                </br>
                	<label>
                    <span>生&nbsp;&nbsp;日:</span>
                    <select name="selection" type="year">
                    <option value="choose">年份<option>
                    <option value="year">年份<option>
                    <option value="zero">1990<option>
                    <option value="one">1991<option>
                    <option value="two">1992<option>
                    <option value="three">1993<option>
                    <option value="four">1994<option>
                    <option value="five">1995<option>
                    <option value="six">1996<option>
                    </select>
                    </label>
                  
                        <select name="selection" type="month">
                        <option value="zero">1<option>
                        <option value="one">2<option>
                        <option value="two">3<option>
                        <option value="three">4<option>
                        <option value="four">5<option>
                        <option value="five">6<option>
                        <option value="six">7<option>
                        </select>
                        
                        <select name="selection" type="date">
                        <option value="zero">1<option>
                        <option value="one">2<option>
                        <option value="two">3<option>
                        <option value="three">4<option>
                        <option value="four">5<option>
                        <option value="five">6<option>
                        <option value="six">7<option>
                        </select>
                 
                  </br> 
                    <label>
                    <span>常用邮箱:</span>
                  <input id="message" type="email" name="message" placeholder="&nbsp;输入您常用邮箱"/>
                    </label>
                </br>
                	<label>
    				<span>联系方式:</span>
                    <input id="contact" type="text" name="contact" placeholder=""/>
               		</label>
                </br>
                  	<label>
                    <span>个人签名:</span>
               <input id="name" type="sign" name="name" placeholder="&nbsp;不好意思我很懒，不想留..."/>
                    </label>
                </br>
                	<!--<input id="" type="submit" name="save" value="保存">
                    <input id="" type="reset" name="cancel" value="重置">-->
                    <a href="#"><button type="submit" id="save">保存</button></a>
                    <a href="#"><button type="reset" id="cancel">重置</button></a>
                </form>
            </div><!--set -->
		 
          
    	
</div><!-- seting-information-->
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