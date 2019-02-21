<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page session="false" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>播放页面</title>
</head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${ctx}/css/1.css">
<link rel="stylesheet" href="${ctx}/css/buttom.css">
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
<body>
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

        <!------------------登录-------------------->
        <div class="login"><img src="${ctx}/images/用户.png"><a href="#">登录</a></div>

        <!------------------注册-------------------->
        <div class="register"><img src="${ctx}/images/注册.png"><a href="#">注册</a></div>
     </div>
</div>

        
      
          </header><!-- /header --> -->
             <div class="head_persion">
                   <div class="home">
                      <div class="text">
                           <span><i class="fas fa-home"></i>打开主页界面</span>
                      </div>
                   </div>
                   <div class="title">
                        <div>
                            <span>楚乔传&nbsp;第一集</span>
                        </div>
                   </div>
                   <div class="collect">
                        <div class="text">
                           <span><i class="far fa-heart"></i></span>
                      </div>
                      <div class="text">
                           <span><i class="fas fa-download"></i></span>
                      </div>
                      <div class="text">
                           <span><i class="far fa-share-square"></i></span>
                      </div>
                   </div>
                   <div class="control">
                        <div class="text">
                           <span><i class="fas fa-align-left"></i></span>
                      </div>
                      <div class="text">
                           <span><i class="far fa-bell"></i></span>
                      </div>
                      <div class="text">
                           <span><i class="fas fa-compress"></i></span>
                      </div>
                       <div class="text">
                           <span><i class="fas fa-expand"></i></span>
                      </div>
                      <div class="text">
                           <span><i class="fas fa-times"></i></span>
                      </div>
                   </div>
              </div>

            <div class="content">
            <div>

                   <div class="left">
                             <video src="${ctx}/images/t1693h9gjuy.mp4" autobuffer autoloop loop controls poster="../img/play_tv.png" id="video"></video>
                             <div class="left_paly">
                                  <div>

                                      <button onClick="bofang()"><i class="fas fa-play"></i></button>
                                      <button onClick="zanting()"><i class="fas fa-pause"></i></button>
                                      <button onClick="kuaijin()"><i class="fas fa-forward"></i></button>
                                      <button onClick="kuaitui()"><i class="fas fa-backward"></i></button>
                                       <button onClick="shutup(this)"><i class="fas fa-bell"></i></button>
                                  </div>

                             </div>

                             <div>
                                  <div class="left_title">

                        <h3>第1集：楚乔偶遇宇文玥</h3>

                            </div>
                             </div>
                        </div>
                        <div class="right">
                            <div class="right_head">
                                <ul>
                                    <li class="cur">播放列表</li>
                                    <li>doki</li>
                                    <li>详情</li>
                                </ul>
                            </div>
                            <div class="right_title">
                                  <span>楚乔传</span>
                                 <span>更新到68/共68集</span>
                                 <span>全部剧情</span>
                            </div>
                            <div class="right_span">
                                 <ul>

                                <li ><a href="#" style="color:#008040;">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">6</a></li>
                                <li><a href="#">7</a></li>
                                <li><a href="#">8</a></li>
                                <li><a href="#">9</a></li>
                                <li><a href="#">10</a></li>
                                <li><a href="#">11</a></li>
                                <li><a href="#">12</a></li>
                                <li><a href="#">13</a></li>
                                <li><a href="#">14</a></li>
                                <li><a href="#">15</a></li>
                                <li><a href="#">16</a></li>
                                <li><a href="#">17</a></li>
                                <li><a href="#">18</a></li>
                                <li><a href="#">19</a></li>
                                <li><a href="#">20</a></li>
                                <li><a href="#">21</a></li>
                                <li><a href="#">22</a></li>
                                <li><a href="#">23</a></li>
                                <li><a href="#">24</a></li>
                                <li><a href="#">25</a></li>
                                <li><a href="#">26</a></li>
                                <li><a href="#">27</a></li>
                                <li><a href="#">28</a></li>
                                <li><a href="#">29</a></li>
                                <li><a href="#">30</a></li>
                                <li><a href="#">31</a></li>
                                <li><a href="#">32</a></li>
                                <li><a href="#">33</a></li>
                                <li><a href="#">35</a></li>
                                 <li><a href="#">36</a></li>
                                <li><a href="#">37</a></li>
                                 <li><a href="#">38</a></li>
                                <li><a href="#">39</a></li>
                                <li><a href="#">40</a></li>
                                 <li><a href="#">41</a></li>
                                <li><a href="#">42</a></li>
                             
                               
                               
                               
                                <li><a href="#">....</a></li>

                            </ul>
                        </div>
                        <div class="right_foot">
                             <div>
                                  <img src="${ctx}/images/0.jpg" alt="">
                             </div>
                            <span>点赞</span>
                            <span>分享</span>
                             <span>缓存</span>
                            <span>查看更多</span>

                        </div>
                        </div>

            </div>

                       </div>
             <div class="content_body">
                        <div class="body">
                            <div class="body_left">
                                <div class="actor">
                                    <h3>《楚乔传》主演</h3>
                                    <div class="actor_img">
                                        <ul>
                                            <li><a href="#"><span style="font-family:16px"><img src="${ctx}/images/chuqiaozhuan-img/赵丽颖.jpg" alt=""></span>&nbsp;<a style="color:#008040;">赵丽颖</a>&nbsp;饰演&nbsp;楚乔</a></li>
                                            <li><a href="#"><span span style="font-family:16px"><img src="${ctx}/images/chuqiaozhuan-img/林更新.jpg" alt="" ></span><a style="color:#008040;">林更新</a></a>&nbsp;饰演&nbsp;宇文玥</a></li>
                                            <li><a href="#"><span span style="font-family:16px"><img src="${ctx}/images/chuqiaozhuan-img/李沁.jpg" alt="" ></span><a style="color:#008040;">李沁</a>&nbsp;饰演&nbsp;元淳</a></li>
                                              <li><a href="#"><span span style="font-family:16px"><img src="${ctx}/images/chuqiaozhuan-img/窦骁.png" alt=""></span><a style="color:#008040;">窦骁</a>&nbsp;饰演&nbsp;燕洵</a></li>

                                        </ul>

                                    </div>
                                </div>
                                   <div class="video">
                                    <h3>《楚乔传》小视频</h3>
                                    <div class="video_img">
                                       <ul>
                                           <li><video src="${ctx}/images/play/p1839yytgex.mp4" autobuffer autoloop loop controls poster="../img/play/1.png"></video></li>
                                            <li><video src="${ctx}/images/play/v1698isdb3q.mp4" autobuffer autoloop loop controls poster="../img/play/2.png"></video></li>
                                             <li><video src="${ctx}/images/play/y1808ggdyyu.mp4" autobuffer autoloop loop controls poster="../img/play/3.png"></video></li>
                                              <li><video src="${ctx}/images/play/z1695jpe6bq.mp4" autobuffer autoloop loop controls poster="../img/play/4.png"></video></li>
                                       </ul>
                                    </div>
                                   </div>

                                       <div class="juchang">
                                    <h3>《楚乔传》剧照</h3>
                                    <div class="juchang_img">
                                       <ul>
                                           <li><img src="${ctx}/images/play/juchang1.jpg" alt=""></li>
                                            <li><img src="${ctx}/images/play/juchang2.jpg" alt=""></li>
                                             <li><img src="${ctx}/images/play/juchang3.jpg" alt=""></li>
                                              <li><img src="${ctx}/images/play/jucahng4.jpg" alt=""></li>
                                       </ul>
                                    </div>
                                   </div>

                                     <div class="juchang">
                                    <h3>《楚乔传》表情包</h3>
                                    <div class="biaoqinbao_img">
                                       <ul>
                                           <li><img src="${ctx}/images/play/0.gif" alt=""></li>
                                            <li><img src="${ctx}/images/play/1.gif" alt=""></li>
                                             <li><img src="${ctx}/images/play/2.gif" alt=""></li>
                                              <li><img src="${ctx}/images/play/3.gif" alt=""></li>
                                              <li><img src="${ctx}/images/play/4.gif" alt=""></li>
                                       </ul>
                                    </div>
                                   </div>

                                     <div class="juchang">
                                    <h3>《楚乔传》相关作品</h3>
                                    <div class="zuoping">
                                       <ul>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/花千骨.jpg" alt=""></li>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/诛仙青云志.jpg" alt=""></li>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/幸福归来.jpg" alt=""></li>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/我是女王.jpg" alt=""></li>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/同桌的你.jpg" alt=""></li>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/新步步惊心.jpg" alt=""></li>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/杉杉来了.jpg" alt=""></li>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/武神赵子龙.jpg" alt=""></li>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/花开半夏.jpg" alt=""></li>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/轩辕剑之天之痕.jpg" alt=""></li>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/极品新娘.jpg" alt=""></li>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/狼图腾.jpg" alt=""></li>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/白鹿原.jpg" alt=""></li>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/破风.jpg" alt=""></li>
                                           <li><img src="${ctx}/images/chuqiaozhuan-img/舞乐传奇.jpg" alt=""></li>


                                       </ul>
                                    </div>
                                   </div>




                            </div>
                            <div class="body_right">
                                  <div class="body_title">
                                      <h3>电视剧每日热播榜</h3>
                                      <span>更多</span>
                                  </div>
                                  <div class="right_img">
                                    <div class="tv_img">
                                       <img src="${ctx}/images/play/1.jpg" alt="">
                                    </div>
                                   <div class="tv_text">
                                         <span class="tv_name">1.如懿传</span><span class="tv_actor">周迅 / 霍建华 / 张钧甯 / 董洁<span class="hearts" title="点个赞"><a>&hearts;</a></span></span>
                                     <span class="tv_play"><i class="fas fa-play"></i>&nbsp;2.6亿</span>
                                   </div>
                                  </div>
                                    <div class="right_img">
                                    <div class="tv_img">
                                       <img src="${ctx}/images/play/2.jpg" alt="">
                                    </div>
                                   <div class="tv_text">
                                         <span class="tv_name">2.沙海</span><span class="tv_actor">吴磊 / 秦昊 / 张萌 / 杨蓉<span class="hearts" title="点个赞"><a>&hearts;</a></span></span>
                                     <span class="tv_play"><i class="fas fa-play"></i>&nbsp;1.3亿</span>
                                   </div>
                                  </div>
                                    <div class="right_img">
                                    <div class="tv_img">
                                       <img src="${ctx}/images/play/3.jpg" alt="">
                                    </div>
                                   <div class="tv_text">
                                         <span class="tv_name">3.香蜜沉沉烬如霜</span><span class="tv_actor">杨紫 / 邓伦 / 陈钰琪 / 罗云熙<span class="hearts" title="点个赞"><a>&hearts;</a></span></span>
                                     <span class="tv_play"><i class="fas fa-play"></i>&nbsp;7258.4万</span>
                                   </div>
                                  </div>
                                      <div class="right_img">
                                    <div class="tv_img">
                                       <img src="${ctx}/images/play/4.jpg" alt="">
                                    </div>
                                   <div class="tv_text">
                                         <span class="tv_name">4.斗破苍穹</span><span class="tv_actor">吴磊 / 林允 / 李沁 / 陈楚河<span class="hearts" title="点个赞"><a>&hearts;</a></span></span>
                                     <span class="tv_play"><i class="fas fa-play"></i>&nbsp;5034.5万</span>
                                   </div>
                                  </div>
                                    <div class="right_img">
                                    <div class="tv_img">
                                       <img src="${ctx}/images/play/5.jpg" alt="">
                                    </div>
                                   <div class="tv_text">
                                         <span class="tv_name">5.夜天子</span><span class="tv_actor">徐海乔 / 宋祖儿 / 王紫潼 / 肥龙<span class="hearts" title="点个赞"><a>&hearts;</a></span></span>
                                     <span class="tv_play"><i class="fas fa-play"></i>&nbsp;3298.2万</span>
                                   </div>
                                  </div>
                                    <div class="right_img">
                                    <div class="tv_img">
                                       <img src="${ctx}/images/play/6.jpg" alt="">
                                    </div>
                                   <div class="tv_text">
                                         <span class="tv_name">6.法医秦明之幸存者</span><span class="tv_actor">经超 / 余心恬 / 艾晓琪 / 刘海宽<span class="hearts" title="点个赞"><a>&hearts;</a></span></span>
                                     <span class="tv_play"><i class="fas fa-play"></i>&nbsp;3200.5万</span>
                                   </div>
                                  </div>
                                      <div class="right_img">
                                    <div class="tv_img">
                                       <img src="${ctx}/images/play/7.jpg" alt="">
                                    </div>
                                   <div class="tv_text">
                                         <span class="tv_name">7.我们的千阙歌</span><span class="tv_actor">贾清 / 陈键锋 / 周楚濋 / 王钧赫<span class="hearts" title="点个赞"><a>&hearts;</a></span></span>
                                     <span class="tv_play"><i class="fas fa-play"></i>&nbsp;2675万</span>
                                   </div>
                                  </div>
                                    <div class="right_img">
                                    <div class="tv_img">
                                       <img src="${ctx}/images/play/8.jpg" alt="">
                                    </div>
                                   <div class="tv_text">
                                         <span class="tv_name">8.胜利之路</span><span class="tv_actor">郭京飞 / 郭珍霓 / 高洋 / 冯恩鹤<span class="hearts" title="点个赞"><a>&hearts;</a></span></span>
                                     <span class="tv_play"><i class="fas fa-play"></i>&nbsp;2398.7万</span>
                                   </div>
                                  </div>
                                    <div class="right_img">
                                    <div class="tv_img">
                                       <img src="${ctx}/images/play/9.jpg" alt="">
                                    </div>
                                   <div class="tv_text">
                                         <span class="tv_name">9.娘演</span><span class="tv_actor">岳丽娜 / 于毅 / 刘智扬 / 张少华<span class="hearts" title="点个赞"><a>&hearts;</a></span></span>
                                     <span class="tv_play"><i class="fas fa-play"></i>&nbsp;1900万</span>
                                   </div>
                                  </div>
                                      <div class="right_img">
                                    <div class="tv_img">
                                       <img src="${ctx}/images/play/10.jpg" alt="">
                                    </div>
                                   <div class="tv_text">
                                         <span class="tv_name">10.桃花依旧笑春风</span><span class="tv_actor">苗圃 / 陈龙 / 郑国霖 / 徐小飒<span class="hearts" title="点个赞"><a>&hearts;</a></span></span>
                                     <span class="tv_play"><i class="fas fa-play"></i>&nbsp;8394万</span>
                                   </div>
                                  </div>

                                  <div class="huiyuan">
                                      <h3>会员福利</h3>
                                      <div>
                                          <img src="${ctx}/images/play/huiyuan1.jpg" alt=""><span>学生专享VIP10元/月</span>
                                      </div>
                                      <div>
                                          <img src="${ctx}/images/play/huiyaun2.jpg" alt=""><span>V爱献礼，VIP连续包月仅19元/月</span>
                                      </div>
                                  </div>
                            </div>
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
<script>
    var video=document.getElementById("video");
    //播放方法
    function bofang(){
        video.play();
    }
    //暂停
    function zanting(){
        video.pause();
    }
    //快进
    function kuaijin(){
        video.currentTime+=3;
    }
    //快退
    function kuaitui(){
        video.currentTime-=3;
    }
       //静音
    function shutup(obj){
        if(video.muted){
            obj.innerHTML="静音";
            video.muted=false;
        }else{
            obj.innerHTML="有声";
            video.muted=true;
        }
    }

</script>