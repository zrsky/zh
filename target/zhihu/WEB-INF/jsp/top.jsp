<%--
  User: super
  Date: 2018/4/21
  Time: 22:29
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">
<%--<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico"/>--%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layui/css/layui.css">--%>
<style>
    .navbar-brand {
        color: #3399ff!important;
        font-size: 30px;
        font-family: "宋体";
    }
</style>
<!-- 导航 -->
<div class="navigator">
    <nav class="navbar navbar-default" style="background: #fff;">
        <div class="container">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="./index.html">晓乎</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/index.html" style="background:#fff; color:#000;">首页<span class="sr-only">(current)</span></a></li>
                        <li class="active"><a href="/find.html" style="background:#fff; color:#000;">发现<span class="sr-only">(current)</span></a></li>
                    </ul>
                    <form class="navbar-form navbar-left" action="javascript:void(0);">
                        <div class="form-group">
                            <input type="text" id="searchKeyWord" class="form-control" placeholder="搜索你感兴趣的内容">
                            <a href="jsvascript:;" id="searchBtn" class="btn btn-primary">搜一搜</a>
                        </div>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="message">
                            <a href="#">
                                <svg viewBox="0 0 20 22" class="Icon Icon--news" width="20" height="20" aria-hidden="true" style="height: 20px; width: 20px;">
                                    <title></title>
                                    <g>
                                        <path d="M2.502 14.08C3.1 10.64 2 3 8.202 1.62 8.307.697 9.08 0 10 0s1.694.697 1.797 1.62C18 3 16.903 10.64 17.497 14.076c.106 1.102.736 1.855 1.7 2.108.527.142.868.66.793 1.206-.075.546-.542.95-1.09.943H1.1C.55 18.34.084 17.936.01 17.39c-.075-.547.266-1.064.794-1.206.963-.253 1.698-1.137 1.698-2.104zM10 22c-1.417.003-2.602-1.086-2.73-2.51-.004-.062.02-.124.063-.17.043-.045.104-.07.166-.07h5c.063 0 .124.025.167.07.044.046.067.108.063.17-.128 1.424-1.313 2.513-2.73 2.51z"></path>
                                    </g>
                                </svg>
                                <i class="num">1</i>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img class="setting" width="30px" height="30px" src="images/avatar.jpg">${user.username}</a>
                            <ul class="dropdown-menu">
                                <c:if test="${user.role=='1'}">
                                    <li>
                                        <a href="/users.html">后台管理</a>
                                    </li>
                                </c:if>

                                <li>
                                    <a href="/userInfo.html?id=${user.id}" target="_blank">
                                        <svg viewBox="0 0 20 20" class="Icon Button-icon Icon--profile" width="14" height="16" aria-hidden="true" style="height: 16px; width: 14px;">
                                            <title></title>
                                            <g>
                                                <path d="M13.4170937,10.9231839 C13.0412306,11.5757324 12.5795351,12.204074 12.6542924,12.7864225 C12.9457074,15.059449 18.2164534,14.5560766 19.4340179,15.8344151 C20,16.4286478 20,16.4978969 20,19.9978966 C13.3887136,19.9271077 6.63736785,19.9978966 0,19.9978966 C0.0272309069,16.4978969 0,16.5202878 0.620443914,15.8344151 C1.92305664,14.3944356 7.20116276,15.1185829 7.40016946,12.7013525 C7.44516228,12.1563518 7.02015319,11.5871442 6.63736814,10.9228381 C4.51128441,7.2323256 3.69679769,4.67956187e-11 10,9.32587341e-14 C16.3032023,-4.66091013e-11 15.4216968,7.4429255 13.4170937,10.9231839 Z"></path>
                                            </g>
                                        </svg>
                                        我的主页</a>
                                </li>
                                <li>
                                    <a href="/setting.html">
                                        <svg viewBox="0 0 20 20" class="Icon Button-icon Icon--setting" width="14" height="16" aria-hidden="true" style="height: 16px; width: 14px;">
                                            <title></title>
                                            <g>
                                                <path d="M18.868 15.185c-.164.096-.315.137-.452.137-.123 0-1.397-.26-1.617-.233-1.355.013-1.782 1.275-1.836 1.74-.055.454 0 .893.19 1.304.138.29.125.577-.067.85-.863.893-2.165 1.016-2.357 1.016-.123 0-.247-.055-.356-.15-.11-.097-.685-1.14-1.07-1.47-1.303-.954-2.246-.328-2.63 0-.397.33-.67.7-.835 1.126-.07.18-.18.302-.33.37-1.354.426-2.918-.92-3.014-1.056-.082-.11-.123-.22-.123-.356-.014-.138.383-1.276.342-1.688-.342-1.9-1.836-1.687-2.096-1.673-.303.014-.604.068-.92.178-.205.056-.396.03-.588-.054-.888-.462-1.137-2.332-1.11-2.51.055-.315.192-.52.438-.604.425-.164.81-.452 1.15-.85.932-1.262.344-2.25 0-2.634-.34-.356-.725-.645-1.15-.81-.137-.04-.233-.15-.328-.315C-.27 6.07.724 4.95.978 4.733c.255-.22.6-.055.723 0 .426.164.878.22 1.344.15C4.7 4.636 4.784 3.14 4.81 2.908c.015-.247-.11-1.29-.136-1.4-.027-.123-.014-.22.027-.315C5.318.178 7.073 0 7.223 0c.178 0 .33.055.44.178.108.124.63 1.11 1 1.4.398.338 1.582.83 2.588.013.398-.273.96-1.288 1.083-1.412.123-.123.26-.178.384-.178 1.56 0 2.33 1.03 2.438 1.22.083.124.096.248.07.37-.03.152-.33 1.153-.262 1.606.366 1.537 1.384 1.742 1.89 1.783.494.027 1.645-.357 1.81-.344.164.014.315.083.424.206.535.31.85 1.715.905 2.14.027.233-.014.44-.11.562-.11.138-1.165.714-1.48 1.112-.855.982-.342 2.25-.068 2.606.26.37 1.22.905 1.288.96.15.137.26.302.315.494.146 1.413-.89 2.387-1.07 2.47zm-8.905-.535c.644 0 1.246-.123 1.822-.356.575-.248 1.082-.59 1.493-1.016.425-.425.754-.92 1-1.495.247-.562.357-1.18.357-1.81 0-.66-.11-1.262-.356-1.825-.248-.562-.577-1.056-1.002-1.48-.41-.427-.918-.756-1.493-1.003-.576-.233-1.178-.357-1.822-.357-.644 0-1.247.124-1.81.357-.56.247-1.067.576-1.478 1.002-.425.425-.768.92-1 1.48-.247.564-.37 1.167-.37 1.826 0 .644.123 1.248.37 1.81.232.563.575 1.07 1 1.495.424.426.917.768 1.48 1.016.56.233 1.164.356 1.808.356z"></path>
                                            </g>
                                        </svg>
                                        设置</a>
                                </li>
                                <li>
                                    <a href="javascript:;" id="logoutBtn">
                                        <svg viewBox="0 0 20 20" class="Icon Button-icon Icon--logout" width="14" height="16" aria-hidden="true" style="height: 16px; width: 14px;">
                                            <title></title>
                                            <g>
                                                <path d="M0 10C0 7.242 1.154 4.58 3.167 2.697c.51-.477 1.31-.45 1.79.06.475.51.45 1.31-.06 1.787C3.37 5.975 2.53 7.91 2.53 10c0 4.118 3.35 7.468 7.47 7.468 4.12 0 7.47-3.35 7.47-7.47 0-2.04-.81-3.948-2.28-5.37-.5-.485-.514-1.286-.028-1.788.485-.5 1.286-.517 1.79-.03C18.915 4.712 20 7.265 20 10c0 5.512-4.486 9.998-10 9.998s-10-4.486-10-10zm8.7-.483V1.26C8.7.564 9.26 0 9.96 0c.695 0 1.26.564 1.26 1.26v8.257c0 .696-.565 1.26-1.26 1.26-.698 0-1.26-.564-1.26-1.26z"></path>
                                            </g>
                                        </svg>
                                        退出</a>
                                </li>
                                <!--  <li><a class="lg" href="#"><span><svg class="Zi Zi--Star TopstorySideBar-navIcon" fill="currentColor" viewBox="0 0 24 24" width="18" height="18" data-reactid="1254"><path d="M5.515 19.64l.918-5.355-3.89-3.792c-.926-.902-.639-1.784.64-1.97L8.56 7.74l2.404-4.871c.572-1.16 1.5-1.16 2.072 0L15.44 7.74l5.377.782c1.28.186 1.566 1.068.64 1.97l-3.89 3.793.918 5.354c.219 1.274-.532 1.82-1.676 1.218L12 18.33l-4.808 2.528c-1.145.602-1.896.056-1.677-1.218z" fill-rule="evenodd" data-reactid="1255"></path></svg></span><span class="ano">我的收藏</span></a></li>
                                 <li><a class="lg" href="#"><span><svg class="Zi Zi--HelpBubble TopstorySideBar-navIcon" fill="currentColor" viewBox="0 0 24 24" width="18" height="18" data-reactid="1259"><path d="M5.74 4h12.52c.961 0 1.74.775 1.74 1.73V16.27c0 .955-.779 1.73-1.74 1.73h-3.825l-1.658 2.044a1 1 0 0 1-1.554 0l-1.658-2.044H5.74C4.78 18 4 17.224 4 16.27V5.73C4 4.775 4.778 4 5.74 4zM12 16a.976.976 0 0 0 .705-.287.951.951 0 0 0 .295-.712.954.954 0 0 0-.295-.714A.976.976 0 0 0 12 14a.962.962 0 0 0-.705.295A.961.961 0 0 0 11 15c0 .284.098.522.295.713A.975.975 0 0 0 12 16zm1.278-4.924a36.81 36.81 0 0 0 1.023-.975c.19-.193.354-.422.492-.688.138-.266.207-.575.207-.928 0-.448-.12-.864-.363-1.246a2.517 2.517 0 0 0-1.029-.906C13.164 6.111 12.652 6 12.072 6c-.624 0-1.17.133-1.638.399-.468.265-.824.6-1.068 1.005-.244.405-.366.804-.366 1.2 0 .19.077.368.231.531a.747.747 0 0 0 .567.246c.38 0 .638-.234.774-.703.144-.449.32-.788.528-1.019.208-.23.532-.345.972-.345.376 0 .683.114.921.342.238.229.357.51.357.841 0 .17-.039.328-.117.473a1.782 1.782 0 0 1-.288.396c-.114.118-.3.294-.555.526a9.71 9.71 0 0 0-.696.688c-.172.194-.31.418-.414.673a2.391 2.391 0 0 0-.156.906c0 .278.071.488.213.63a.716.716 0 0 0 .525.211c.4 0 .638-.216.714-.648.044-.203.077-.345.099-.426.022-.081.053-.162.093-.243.04-.081.101-.17.183-.268.082-.098.191-.21.327-.34z" fill-rule="evenodd" data-reactid="1260"></path></svg></span><span class="ano">我的关注</span></a></li> -->
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </div>
    </nav>
</div>
<!-- /导航 -->
<script src="${pageContext.request.contextPath}/node_modules/jquery/dist/jquery.min.js"></script>
<script>
  $(function(){
      //搜索
      var searchKeyWord
      $("#searchBtn").on("click",function(){
          searchKeyWord = $("#searchKeyWord").val();
          if(searchKeyWord == "") {
              alert("请输入搜索的内容");
              //layer.msg("请输入搜索的内容");
              return;
          }else{
              // getSearchArticleByKeyWord(searchKeyWord);
              console.log("search.html?kw="+ searchKeyWord)
              var href = "search.html?kw="+ searchKeyWord;
              $(this).attr({"href":href})
          }

      })






  $("#logoutBtn").on("click",function () {
      layer.confirm("确定退出登录吗？",function () {
          $.ajax({
              url:'/logout.action',
              success:function () {
                  window.location.replace("/index.html");
              }
          });
      });
  });
  })

</script>