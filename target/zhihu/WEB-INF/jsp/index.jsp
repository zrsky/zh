<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>首页</title>
    <%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/share.min.css">--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <%--<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico"/>--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
</head>

<body>
<jsp:include page="top.jsp"/>
<!-- 导航 -->
<%--<div class="navigator">
    <nav class="navbar navbar-default">
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
                    <a class="navbar-brand" href="./index.html"><img src="images/logo.png" width="60px" style="margin-top:-3px;"></a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/index.html">首页<span class="sr-only">(current)</span></a></li>
                        <li class="active"><a href="/find.html">发现<span class="sr-only">(current)</span></a></li>
                    </ul>
                    <form class="navbar-form navbar-left">
                        <div class="form-group">
                            <input type="text" id="searchKeyWord" class="form-control" placeholder="搜索你感兴趣的内容">
                            <a href="jsvascript:;" onclick="getSearchArticleByKeyWord()" class="btn btn-primary">搜一搜</a>
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
</div>--%>
<!-- /导航 -->
<!-- 版心 -->
<section class="content">
    <div class="container">
        <div class="top hidden-xs">
            <div class="top-left col-md-6">
                    <span class="question"><svg width="16" height="16" viewBox="0 0 17 17" xmlns="http://www.w3.org/2000/svg" class="Icon Icon--question" style="height:16px;width:16px;" aria-hidden="true" data-reactid="58"><title data-reactid="59"></title><g data-reactid="60"><g transform="translate(-3 -3)" fill="#8590A6" fill-rule="evenodd">     <path
                            d="M3.833 6.356c0-1.66 1.334-3.007 2.993-3.007h9.348c1.653 0 2.993 1.338 2.993 3.006v8.498c0 1.66-1.266 3.467-2.812 4.03l-1.09.396c-2.08.757-5.447.76-7.53 0l-1.09-.396c-1.553-.565-2.812-2.363-2.812-4.03V6.356zm1.643.67v7.492c0 1.1.84 2.314 1.873 2.697l2.277.844c1.035.383 2.712.383 3.746 0l2.278-.845c1.036-.384 1.874-1.59 1.874-2.697V7.026c0-1.1-.897-2.003-2.003-2.003H7.48c-1.118 0-2.004.897-2.004 2.003z"></path>     <path
                            d="M13.012 11.46l-.422.29c-.232.177-.433.53-.433.53s-.08.134-.11.398v.16h-1.63v-.24c.02-.555.11-.86.343-1.13.364-.422 1.168-.935 1.202-.956.114-.086.212-.184.284-.288.17-.23.244-.412.244-.59 0-.25-.074-.478-.22-.682-.143-.197-.41-.296-.798-.296-.385 0-.648.12-.806.368-.162.254-.243.523-.243.796l-.005.23-1.656-.003.003-.23c.043-1.007.406-1.732 1.078-2.155.424-.27 1.113-.396 1.657-.406.873.01 1.39.193 1.923.575.54.387.815.965.815 1.72 0 .422-.135.82-.4 1.18-.14.193-.442.434-.826.73z"></path>     <ellipse
                            cx="11.226" cy="14.791" rx="1.095" ry="1.116"></ellipse>   </g></g></svg><button class="btn" id="modal" data-toggle="modal" data-target="#myModal">
                     提问
                    </button>
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" id="closeQuestionModal" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h3 class="modal-title" id="myModalLabel">写下你的问题</h3>
                          </div>
                          <div class="modal-body">
                                <form class="form-horizontal" id="questionForm" method="post">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="questionTitle" required="required" name="topic" placeholder="标题">
                                    </div>
                                    <div class="form-group">
                                    <label style="margin-bottom:0px;margin-left:55px;" for="questionCategory">选择话题:</label>
                                        <select id="questionCategory" style="height:25px;">
                                            <option value="故事" selected>故事</option>
                                            <option value="摄影">摄影</option>
                                            <option value="健康">健康</option>
                                            <option value="游戏">游戏</option>
                                            <option value="医学">医学</option>
                                            <option value="商业">商业</option>
                                            <option value="互联网">互联网</option>
                                            <option value="电影">电影</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label style="margin-bottom:0px;margin-left:55px;" for="questionContent">问题描述:</label>
                                        <textarea class="form-control" id="questionContent" required="required" rows="5" name="content"></textarea>
                                    </div>
                                </form>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" id="questionSubmit" class="btn btn-primary">提交问题</button>
                          </div>
                        </div>
                      </div>
                    </div>
                    </span>
                <a href="/answer.html">
                    <span class="answer"><svg width="16" height="16" viewBox="0 0 17 18" xmlns="http://www.w3.org/2000/svg" class="Icon Icon--paper" style="height:16px;width:16px;" aria-hidden="true" data-reactid="64"><title data-reactid="65"></title><g data-reactid="66"><g fill="#8590A6" fill-rule="evenodd">     <path
                            d="M.833 4.35c0-2.21 1.79-4 4.01-4h7.315c2.214 0 4.01 1.79 4.01 4v8.743c0 2.21-1.79 4-4.01 4H4.842c-2.214 0-4.01-1.792-4.01-4V4.35zm1.643-.32v9.383c0 1.106.897 2.006 2.003 2.006h8.04c1.118 0 2.004-.9 2.004-2.007V4.03c0-1.107-.897-2.007-2.003-2.007H4.48c-1.118 0-2.004.898-2.004 2.006z"></path><path d="M4.667 4.814h7.666v1.674H4.667V4.814zm0 2.79h7.666V9.28H4.667V7.604zm0 2.79h4.928v1.676H4.667v-1.675z"></path>   </g></g></svg>回答</span>
                </a>
                <a href="/article/writeArticle.html" target="_blank" id="writeArticle">
                    <span class="write"><svg width="16" height="16" viewBox="0 0 18 18" xmlns="http://www.w3.org/2000/svg" class="Icon Icon--write" style="height:16px;width:16px;" aria-hidden="true" data-reactid="69"><title data-reactid="70"></title><g data-reactid="71"><g fill="none" fill-rule="evenodd">     <path
                            d="M9.595 2.023H4.842c-2.22 0-4.01 1.793-4.01 4.005v7.62c0 2.21 1.796 4.003 4.01 4.003h7.316c2.22 0 4.01-1.792 4.01-4.003v-7.11.51L14.523 8.72v4.253c0 1.66-1.336 3.004-3.01 3.004h-6.03c-1.66 0-3.008-1.338-3.008-3.004V6.7c0-1.657 1.336-3.002 3.01-3.002h2.467L9.595 2.03v-.007z" fill="#8590A6"></path>     <path d="M6.372 11.08c-.185-.915.2-2.238.85-2.888l6.616-6.616c.565-.565 1.472-.567 2.038 0 .56.56.56 1.477 0 2.038L9.258 10.23c-.652.65-1.975 1.034-2.888.85z" stroke="#8590A6"
                                                                                                                                                                                                                                                                                                                                                  stroke-width="1.5"></path>     <path fill="#8590A6" d="M13.04 2.088l2.324 2.324-.987.986-2.323-2.324z"></path>   </g></g></svg>写文章</span>
                </a>
            </div>
            <div class="save top-right pull-right hidden-sm hidden-xs"><a href="/drafts.html">草稿</a></div>
        </div>
        <div id="hotQuestion">

        </div>

        <%--<div class="main">
            <div class="media pull-left">
                <span class="from">热门内容，来自:<i>故事</i></span>
                <div class="media-left media-middle">
                    <a href="./myIndex.html">
                        <img class="media-object" src="images/avatar.jpg" width="50px" alt="...">
                        <span class="username">张瑞</span>
                    </a>
                </div>
                <div class="media-body topic">
                    <a href="question.html">
                        <h4 class="media-heading">有哪些看似很傻，实则聪明的行为？</h4> <span class="word">我到家福克斯覅胃康灵是你覅额外求偶遇然后哦李凤华容沙嗲地方还能刷卡缴费hi为U盘撒解放路afhksadfhpwolsanlkjdshuw爱妃味道温柔点群大法师的阿双方缺乏</span>
                    </a>
                </div>
                <div class="media-bottom">
                    <p><span><svg class="Zi Zi--Comment Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M10.241 19.313a.97.97 0 0 0-.77.2 7.908 7.908 0 0 1-3.772 1.482.409.409 0 0 1-.38-.637 5.825 5.825 0 0 0 1.11-2.237.605.605 0 0 0-.227-.59A7.935 7.935 0 0 1 3 11.25C3 6.7 7.03 3 12 3s9 3.7 9 8.25-4.373 9.108-10.759 8.063z" fill-rule="evenodd"></path></span></svg><i class="comment1" style="cursor:pointer;">3条评论</i>
                        <span data-toggle="tooltip" data-placement="bottom" title="点击复制链接" style="cursor:pointer;">
                            <span><svg class="Zi Zi--Share Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M2.931 7.89c-1.067.24-1.275 1.669-.318 2.207l5.277 2.908 8.168-4.776c.25-.127.477.198.273.39L9.05 14.66l.927 5.953c.18 1.084 1.593 1.376 2.182.456l9.644-15.242c.584-.892-.212-2.029-1.234-1.796L2.93 7.89z" fill-rule="evenodd"></path></svg></span><i>分享</i>
                        </span>
                        <a class="collect"><span><svg class="Zi Zi--Star Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M5.515 19.64l.918-5.355-3.89-3.792c-.926-.902-.639-1.784.64-1.97L8.56 7.74l2.404-4.871c.572-1.16 1.5-1.16 2.072 0L15.44 7.74l5.377.782c1.28.186 1.566 1.068.64 1.97l-3.89 3.793.918 5.354c.219 1.274-.532 1.82-1.676 1.218L12 18.33l-4.808 2.528c-1.145.602-1.896.056-1.677-1.218z" fill-rule="evenodd"></path></svg></span><i>收藏</i></a>
                        <a class="thanks"><span><svg class="Zi Zi--Heart Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M2 8.437C2 5.505 4.294 3.094 7.207 3 9.243 3 11.092 4.19 12 6c.823-1.758 2.649-3 4.651-3C19.545 3 22 5.507 22 8.432 22 16.24 13.842 21 12 21 10.158 21 2 16.24 2 8.437z" fill-rule="evenodd"></path></svg></span><i>感谢</i></a></p>
                         <div class="comment">
                            <div class="answer" id="answer">
                                <div class="main">
                                    <div class="media pull-left" style="margin-bottom:30px;">
                                        <div class="countCtm">3条评论</div>
                                        <div class="media-left media-middle">
                                            <a href="#">
                                                <img class="media-object" src="images/avatar.jpg" width="25px" alt="...">
                                                <span class="username" style="font-size:16px;font-weight:normal;">王五</span>
                                            </a>
                                        </div>
                                        <div class="media-body topic">
                                            <span class="word">我到家福克斯覅胃康灵是你覅额外求偶遇然后哦李凤华容沙嗲地方还能刷卡缴费hi为U盘撒解放路afhksadfhpwolsanlkjdshuw爱妃味道温柔点群大法师的阿双方缺乏</span>
                                            <p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span>2017-10-7</span></p>
                                        </div>
                                        <div class="media-bottom">
                                            <p><span class="zan"><svg viewBox="0 0 20 18" xmlns="http://www.w3.org/2000/svg" class="Icon Icon--like Icon--left" width="13" height="16" aria-hidden="true" style="height: 16px; width: 13px;"><title></title><g><path d="M.718 7.024c-.718 0-.718.63-.718.63l.996 9.693c0 .703.718.65.718.65h1.45c.916 0 .847-.65.847-.65V7.793c-.09-.88-.853-.79-.846-.79l-2.446.02zm11.727-.05S13.2 5.396 13.6 2.89C13.765.03 11.55-.6 10.565.53c-1.014 1.232 0 2.056-4.45 5.83C5.336 6.965 5 8.01 5 8.997v6.998c-.016 1.104.49 2 1.99 2h7.586c2.097 0 2.86-1.416 2.86-1.416s2.178-5.402 2.346-5.91c1.047-3.516-1.95-3.704-1.95-3.704l-5.387.007z"></path></g></svg><i>1</i></span>
                                                <span><svg viewBox="0 0 22 16" class="Icon Icon--reply Icon--left" width="13" height="16" aria-hidden="true" style="height: 16px; width: 13px;"><title></title><g><path d="M21.96 13.22c-1.687-3.552-5.13-8.062-11.637-8.65-.54-.053-1.376-.436-1.376-1.56V.677c0-.52-.635-.915-1.116-.52L.47 6.67C.18 6.947 0 7.334 0 7.763c0 .376.14.722.37.987 0 0 6.99 6.818 7.442 7.114.453.295 1.136.124 1.135-.5V13c.027-.814.703-1.466 1.532-1.466 1.185-.14 7.596-.077 10.33 2.396 0 0 .395.257.535.257.892 0 .614-.967.614-.967z"></path></g></svg></span><i class="huifu_in">回复</i>
                                            </p>
                                            <div class="huifuInput">
                                                <input type="" class="form-control" name="content" placeholder="写下你的评论">
                                                <button class="btn btn-primary">评论</button>
                                            </div>
                                            <div class="answer">
                                                <div class="main"">
                                                    <div class="media pull-left huifu" style=" padding: 0;border: 0;box-shadow: none;border-top: 1px solid #f0f2f7;">
                                                        <div class="media-left media-middle">
                                                            <a href="#">
                                                                <img class="media-object" src="images/avatar.jpg" width="25px" alt="...">
                                                                <span class="username" style="font-size: 16px;font-weight: normal;">张瑞</span><span style="margin: 0 10px;color:#8590a6;">回复</span><span style="color:#000;">王五</span>
                                                            </a>
                                                        </div>
                                                        <div class="media-body topic">
                                                            <span class="word">我到家福克斯覅胃康灵是你覅额外求偶遇然后哦李凤华容沙嗲地方还能刷卡缴费hi为U盘撒解放路afhksadfhpwolsanlkjdshuw爱妃味道温柔点群大法师的阿双方缺乏</span>
                                                            <p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span>2017-10-8</span></p>
                                                        </div>
                                                        <div class="media-bottom">
                                                            <p><span class="zan"><svg viewBox="0 0 20 18" xmlns="http://www.w3.org/2000/svg" class="Icon Icon--like Icon--left" width="13" height="16" aria-hidden="true" style="height: 16px; width: 13px;"><title></title><g><path d="M.718 7.024c-.718 0-.718.63-.718.63l.996 9.693c0 .703.718.65.718.65h1.45c.916 0 .847-.65.847-.65V7.793c-.09-.88-.853-.79-.846-.79l-2.446.02zm11.727-.05S13.2 5.396 13.6 2.89C13.765.03 11.55-.6 10.565.53c-1.014 1.232 0 2.056-4.45 5.83C5.336 6.965 5 8.01 5 8.997v6.998c-.016 1.104.49 2 1.99 2h7.586c2.097 0 2.86-1.416 2.86-1.416s2.178-5.402 2.346-5.91c1.047-3.516-1.95-3.704-1.95-3.704l-5.387.007z"></path></g></svg><i>0</i></span><span class="delete"><svg viewBox="0 0 18 20" class="Icon Icon--trash Icon--left" width="12" height="16" aria-hidden="true" style="height: 16px; width: 12px;"><title></title><g><path d="M13.464 2s.05-2-1.48-2H6C4.193 0 4.464 2 4.464 2H1.752c-2.57 0-2.09 3.5 0 3.5l1.213 13.027S2.965 20 4.475 20h8.987c1.502 0 1.502-1.473 1.502-1.473l1.2-13.027c2.34 0 2.563-3.5 0-3.5h-2.7zM5.936 16.5l-.58-9h1.8v9h-1.22zm4.824 0v-9h1.8l-.61 9h-1.19z"></path></g></svg><i>删除</i></span></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="writeCmt">
                                                <input type="" class="form-control" name="content" placeholder="写下你的评论">
                                                <button class="btn btn-primary">评论</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>--%>
        <%--<div class="main">
            <div class="media pull-left">
                <span class="from">热门内容，来自:<i>故事</i></span>
                <div class="media-left media-middle">
                    <a href="./myIndex.html">
                        <img class="media-object" src="images/avatar.jpg" width="50px" alt="...">
                        <span class="username">张瑞</span>
                    </a>
                </div>
                <div class="media-body topic">
                    <a href="question.html">
                        <h4 class="media-heading">有哪些看似很傻，实则聪明的行为？</h4> <span class="word">我到家福克斯覅胃康灵是你覅额外求偶遇然后哦李凤华容沙嗲地方还能刷卡缴费hi为U盘撒解放路afhksadfhpwolsanlkjdshuw爱妃味道温柔点群大法师的阿双方缺乏</span>
                    </a>
                </div>
                <div class="media-bottom">
                    <p><span><svg class="Zi Zi--Comment Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M10.241 19.313a.97.97 0 0 0-.77.2 7.908 7.908 0 0 1-3.772 1.482.409.409 0 0 1-.38-.637 5.825 5.825 0 0 0 1.11-2.237.605.605 0 0 0-.227-.59A7.935 7.935 0 0 1 3 11.25C3 6.7 7.03 3 12 3s9 3.7 9 8.25-4.373 9.108-10.759 8.063z" fill-rule="evenodd"></path></span></svg><i class="comment1" style="cursor:pointer;">3条评论</i>
                        <span data-toggle="tooltip" data-placement="bottom" title="点击复制链接" style="cursor:pointer;">
                            <span><svg class="Zi Zi--Share Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M2.931 7.89c-1.067.24-1.275 1.669-.318 2.207l5.277 2.908 8.168-4.776c.25-.127.477.198.273.39L9.05 14.66l.927 5.953c.18 1.084 1.593 1.376 2.182.456l9.644-15.242c.584-.892-.212-2.029-1.234-1.796L2.93 7.89z" fill-rule="evenodd"></path></svg></span><i>分享</i>
                        </span>
                        <a class="collect"><span><svg class="Zi Zi--Star Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M5.515 19.64l.918-5.355-3.89-3.792c-.926-.902-.639-1.784.64-1.97L8.56 7.74l2.404-4.871c.572-1.16 1.5-1.16 2.072 0L15.44 7.74l5.377.782c1.28.186 1.566 1.068.64 1.97l-3.89 3.793.918 5.354c.219 1.274-.532 1.82-1.676 1.218L12 18.33l-4.808 2.528c-1.145.602-1.896.056-1.677-1.218z" fill-rule="evenodd"></path></svg></span><i>收藏</i></a>
                        <a class="thanks"><span><svg class="Zi Zi--Heart Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M2 8.437C2 5.505 4.294 3.094 7.207 3 9.243 3 11.092 4.19 12 6c.823-1.758 2.649-3 4.651-3C19.545 3 22 5.507 22 8.432 22 16.24 13.842 21 12 21 10.158 21 2 16.24 2 8.437z" fill-rule="evenodd"></path></svg></span><i>感谢</i></a></p>
                         <div class="comment">
                            <div class="answer" id="answer">
                                <div class="main">
                                    <div class="media pull-left" style="margin-bottom:30px;">
                                        <div class="countCtm">3条评论</div>
                                        <div class="media-left media-middle">
                                            <a href="#">
                                                <img class="media-object" src="images/avatar.jpg" width="25px" alt="...">
                                                <span class="username" style="font-size:16px;font-weight:normal;">王五</span>
                                            </a>
                                        </div>
                                        <div class="media-body topic">
                                            <span class="word">我到家福克斯覅胃康灵是你覅额外求偶遇然后哦李凤华容沙嗲地方还能刷卡缴费hi为U盘撒解放路afhksadfhpwolsanlkjdshuw爱妃味道温柔点群大法师的阿双方缺乏</span>
                                            <p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span>2017-10-7</span></p>
                                        </div>
                                        <div class="media-bottom">
                                            <p><span class="zan"><svg viewBox="0 0 20 18" xmlns="http://www.w3.org/2000/svg" class="Icon Icon--like Icon--left" width="13" height="16" aria-hidden="true" style="height: 16px; width: 13px;"><title></title><g><path d="M.718 7.024c-.718 0-.718.63-.718.63l.996 9.693c0 .703.718.65.718.65h1.45c.916 0 .847-.65.847-.65V7.793c-.09-.88-.853-.79-.846-.79l-2.446.02zm11.727-.05S13.2 5.396 13.6 2.89C13.765.03 11.55-.6 10.565.53c-1.014 1.232 0 2.056-4.45 5.83C5.336 6.965 5 8.01 5 8.997v6.998c-.016 1.104.49 2 1.99 2h7.586c2.097 0 2.86-1.416 2.86-1.416s2.178-5.402 2.346-5.91c1.047-3.516-1.95-3.704-1.95-3.704l-5.387.007z"></path></g></svg><i>1</i></span>
                                                <span><svg viewBox="0 0 22 16" class="Icon Icon--reply Icon--left" width="13" height="16" aria-hidden="true" style="height: 16px; width: 13px;"><title></title><g><path d="M21.96 13.22c-1.687-3.552-5.13-8.062-11.637-8.65-.54-.053-1.376-.436-1.376-1.56V.677c0-.52-.635-.915-1.116-.52L.47 6.67C.18 6.947 0 7.334 0 7.763c0 .376.14.722.37.987 0 0 6.99 6.818 7.442 7.114.453.295 1.136.124 1.135-.5V13c.027-.814.703-1.466 1.532-1.466 1.185-.14 7.596-.077 10.33 2.396 0 0 .395.257.535.257.892 0 .614-.967.614-.967z"></path></g></svg></span><i class="huifu_in">回复</i>
                                            </p>
                                            <div class="huifuInput">
                                                <input type="" class="form-control" name="content" placeholder="写下你的评论">
                                                <button class="btn btn-primary">评论</button>
                                            </div>
                                            <div class="answer">
                                                <div class="main"">
                                                    <div class="media pull-left huifu" style=" padding: 0;border: 0;box-shadow: none;border-top: 1px solid #f0f2f7;">
                                                        <div class="media-left media-middle">
                                                            <a href="#">
                                                                <img class="media-object" src="images/avatar.jpg" width="25px" alt="...">
                                                                <span class="username" style="font-size: 16px;font-weight: normal;">张瑞</span><span style="margin: 0 10px;color:#8590a6;">回复</span><span style="color:#000;">王五</span>
                                                            </a>
                                                        </div>
                                                        <div class="media-body topic">
                                                            <span class="word">我到家福克斯覅胃康灵是你覅额外求偶遇然后哦李凤华容沙嗲地方还能刷卡缴费hi为U盘撒解放路afhksadfhpwolsanlkjdshuw爱妃味道温柔点群大法师的阿双方缺乏</span>
                                                            <p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span>2017-10-8</span></p>
                                                        </div>
                                                        <div class="media-bottom">
                                                            <p><span class="zan"><svg viewBox="0 0 20 18" xmlns="http://www.w3.org/2000/svg" class="Icon Icon--like Icon--left" width="13" height="16" aria-hidden="true" style="height: 16px; width: 13px;"><title></title><g><path d="M.718 7.024c-.718 0-.718.63-.718.63l.996 9.693c0 .703.718.65.718.65h1.45c.916 0 .847-.65.847-.65V7.793c-.09-.88-.853-.79-.846-.79l-2.446.02zm11.727-.05S13.2 5.396 13.6 2.89C13.765.03 11.55-.6 10.565.53c-1.014 1.232 0 2.056-4.45 5.83C5.336 6.965 5 8.01 5 8.997v6.998c-.016 1.104.49 2 1.99 2h7.586c2.097 0 2.86-1.416 2.86-1.416s2.178-5.402 2.346-5.91c1.047-3.516-1.95-3.704-1.95-3.704l-5.387.007z"></path></g></svg><i>0</i></span><span class="delete"><svg viewBox="0 0 18 20" class="Icon Icon--trash Icon--left" width="12" height="16" aria-hidden="true" style="height: 16px; width: 12px;"><title></title><g><path d="M13.464 2s.05-2-1.48-2H6C4.193 0 4.464 2 4.464 2H1.752c-2.57 0-2.09 3.5 0 3.5l1.213 13.027S2.965 20 4.475 20h8.987c1.502 0 1.502-1.473 1.502-1.473l1.2-13.027c2.34 0 2.563-3.5 0-3.5h-2.7zM5.936 16.5l-.58-9h1.8v9h-1.22zm4.824 0v-9h1.8l-.61 9h-1.19z"></path></g></svg><i>删除</i></span></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="writeCmt">
                                                <input type="" class="form-control" name="content" placeholder="写下你的评论">
                                                <button class="btn btn-primary">评论</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <div class="main">
            <div class="media pull-left">
                <span class="from">热门内容，来自:<i>故事</i></span>
                <div class="media-left media-middle">
                    <a href="./myIndex.html">
                        <img class="media-object" src="images/avatar.jpg" width="50px" alt="...">
                        <span class="username">张瑞</span>
                    </a>
                </div>
                <div class="media-body topic">
                    <a href="question.html">
                        <h4 class="media-heading">有哪些看似很傻，实则聪明的行为？</h4> <span class="word">我到家福克斯覅胃康灵是你覅额外求偶遇然后哦李凤华容沙嗲地方还能刷卡缴费hi为U盘撒解放路afhksadfhpwolsanlkjdshuw爱妃味道温柔点群大法师的阿双方缺乏</span>
                    </a>
                </div>
                <div class="media-bottom">
                    <p><span><svg class="Zi Zi--Comment Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M10.241 19.313a.97.97 0 0 0-.77.2 7.908 7.908 0 0 1-3.772 1.482.409.409 0 0 1-.38-.637 5.825 5.825 0 0 0 1.11-2.237.605.605 0 0 0-.227-.59A7.935 7.935 0 0 1 3 11.25C3 6.7 7.03 3 12 3s9 3.7 9 8.25-4.373 9.108-10.759 8.063z" fill-rule="evenodd"></path></span></svg><i class="comment1" style="cursor:pointer;">3条评论</i>
                        <span data-toggle="tooltip" data-placement="bottom" title="点击复制链接" style="cursor:pointer;">
                            <span><svg class="Zi Zi--Share Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M2.931 7.89c-1.067.24-1.275 1.669-.318 2.207l5.277 2.908 8.168-4.776c.25-.127.477.198.273.39L9.05 14.66l.927 5.953c.18 1.084 1.593 1.376 2.182.456l9.644-15.242c.584-.892-.212-2.029-1.234-1.796L2.93 7.89z" fill-rule="evenodd"></path></svg></span><i>分享</i>
                        </span>
                        <a class="collect"><span><svg class="Zi Zi--Star Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M5.515 19.64l.918-5.355-3.89-3.792c-.926-.902-.639-1.784.64-1.97L8.56 7.74l2.404-4.871c.572-1.16 1.5-1.16 2.072 0L15.44 7.74l5.377.782c1.28.186 1.566 1.068.64 1.97l-3.89 3.793.918 5.354c.219 1.274-.532 1.82-1.676 1.218L12 18.33l-4.808 2.528c-1.145.602-1.896.056-1.677-1.218z" fill-rule="evenodd"></path></svg></span><i>收藏</i></a>
                        <a class="thanks"><span><svg class="Zi Zi--Heart Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M2 8.437C2 5.505 4.294 3.094 7.207 3 9.243 3 11.092 4.19 12 6c.823-1.758 2.649-3 4.651-3C19.545 3 22 5.507 22 8.432 22 16.24 13.842 21 12 21 10.158 21 2 16.24 2 8.437z" fill-rule="evenodd"></path></svg></span><i>感谢</i></a></p>
                         <div class="comment">
                            <div class="answer" id="answer">
                                <div class="main">
                                    <div class="media pull-left" style="margin-bottom:30px;">
                                        <div class="countCtm">3条评论</div>
                                        <div class="media-left media-middle">
                                            <a href="#">
                                                <img class="media-object" src="images/avatar.jpg" width="25px" alt="...">
                                                <span class="username" style="font-size:16px;font-weight:normal;">王五</span>
                                            </a>
                                        </div>
                                        <div class="media-body topic">
                                            <span class="word">我到家福克斯覅胃康灵是你覅额外求偶遇然后哦李凤华容沙嗲地方还能刷卡缴费hi为U盘撒解放路afhksadfhpwolsanlkjdshuw爱妃味道温柔点群大法师的阿双方缺乏</span>
                                            <p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span>2017-10-7</span></p>
                                        </div>
                                        <div class="media-bottom">
                                            <p><span class="zan"><svg viewBox="0 0 20 18" xmlns="http://www.w3.org/2000/svg" class="Icon Icon--like Icon--left" width="13" height="16" aria-hidden="true" style="height: 16px; width: 13px;"><title></title><g><path d="M.718 7.024c-.718 0-.718.63-.718.63l.996 9.693c0 .703.718.65.718.65h1.45c.916 0 .847-.65.847-.65V7.793c-.09-.88-.853-.79-.846-.79l-2.446.02zm11.727-.05S13.2 5.396 13.6 2.89C13.765.03 11.55-.6 10.565.53c-1.014 1.232 0 2.056-4.45 5.83C5.336 6.965 5 8.01 5 8.997v6.998c-.016 1.104.49 2 1.99 2h7.586c2.097 0 2.86-1.416 2.86-1.416s2.178-5.402 2.346-5.91c1.047-3.516-1.95-3.704-1.95-3.704l-5.387.007z"></path></g></svg><i>1</i></span>
                                                <span><svg viewBox="0 0 22 16" class="Icon Icon--reply Icon--left" width="13" height="16" aria-hidden="true" style="height: 16px; width: 13px;"><title></title><g><path d="M21.96 13.22c-1.687-3.552-5.13-8.062-11.637-8.65-.54-.053-1.376-.436-1.376-1.56V.677c0-.52-.635-.915-1.116-.52L.47 6.67C.18 6.947 0 7.334 0 7.763c0 .376.14.722.37.987 0 0 6.99 6.818 7.442 7.114.453.295 1.136.124 1.135-.5V13c.027-.814.703-1.466 1.532-1.466 1.185-.14 7.596-.077 10.33 2.396 0 0 .395.257.535.257.892 0 .614-.967.614-.967z"></path></g></svg></span><i class="huifu_in">回复</i>
                                            </p>
                                            <div class="huifuInput">
                                                <input type="" class="form-control" name="content" placeholder="写下你的评论">
                                                <button class="btn btn-primary">评论</button>
                                            </div>
                                            <div class="answer">
                                                <div class="main"">
                                                    <div class="media pull-left huifu" style=" padding: 0;border: 0;box-shadow: none;border-top: 1px solid #f0f2f7;">
                                                        <div class="media-left media-middle">
                                                            <a href="#">
                                                                <img class="media-object" src="images/avatar.jpg" width="25px" alt="...">
                                                                <span class="username" style="font-size: 16px;font-weight: normal;">张瑞</span><span style="margin: 0 10px;color:#8590a6;">回复</span><span style="color:#000;">王五</span>
                                                            </a>
                                                        </div>
                                                        <div class="media-body topic">
                                                            <span class="word">我到家福克斯覅胃康灵是你覅额外求偶遇然后哦李凤华容沙嗲地方还能刷卡缴费hi为U盘撒解放路afhksadfhpwolsanlkjdshuw爱妃味道温柔点群大法师的阿双方缺乏</span>
                                                            <p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span>2017-10-8</span></p>
                                                        </div>
                                                        <div class="media-bottom">
                                                            <p><span class="zan"><svg viewBox="0 0 20 18" xmlns="http://www.w3.org/2000/svg" class="Icon Icon--like Icon--left" width="13" height="16" aria-hidden="true" style="height: 16px; width: 13px;"><title></title><g><path d="M.718 7.024c-.718 0-.718.63-.718.63l.996 9.693c0 .703.718.65.718.65h1.45c.916 0 .847-.65.847-.65V7.793c-.09-.88-.853-.79-.846-.79l-2.446.02zm11.727-.05S13.2 5.396 13.6 2.89C13.765.03 11.55-.6 10.565.53c-1.014 1.232 0 2.056-4.45 5.83C5.336 6.965 5 8.01 5 8.997v6.998c-.016 1.104.49 2 1.99 2h7.586c2.097 0 2.86-1.416 2.86-1.416s2.178-5.402 2.346-5.91c1.047-3.516-1.95-3.704-1.95-3.704l-5.387.007z"></path></g></svg><i>0</i></span><span class="delete"><svg viewBox="0 0 18 20" class="Icon Icon--trash Icon--left" width="12" height="16" aria-hidden="true" style="height: 16px; width: 12px;"><title></title><g><path d="M13.464 2s.05-2-1.48-2H6C4.193 0 4.464 2 4.464 2H1.752c-2.57 0-2.09 3.5 0 3.5l1.213 13.027S2.965 20 4.475 20h8.987c1.502 0 1.502-1.473 1.502-1.473l1.2-13.027c2.34 0 2.563-3.5 0-3.5h-2.7zM5.936 16.5l-.58-9h1.8v9h-1.22zm4.824 0v-9h1.8l-.61 9h-1.19z"></path></g></svg><i>删除</i></span></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="writeCmt">
                                                <input type="" class="form-control" name="content" placeholder="写下你的评论">
                                                <button class="btn btn-primary">评论</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>--%>
    </div>
</section>
<div id="comment6"></div>
<!-- /版心 -->
</body>

</html>
<script src="${pageContext.request.contextPath}/node_modules/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<%--<script src="${pageContext.request.contextPath}/js/social-share.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/js/qrcode.js"></script>--%>
<script src="${pageContext.request.contextPath}/js/base.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script>
    $("#questionSubmit").on("click", function (e) {
        //e.preventDefault();
        var questionTitle = $("#questionTitle").val();
        var questionContent = $("#questionContent").val();
        var questionCategory = $("#questionCategory").val();

        if (questionTitle == "") {
            layer.msg("标题不能为空");
            return;
        }
        if(!(/\？|\?$/.test(questionTitle))) {
            layer.msg("标题请以问号结尾");
            return;
        }
        if (questionContent == "") {
            layer.msg("内容描述不能为空");
            return;
        }
        if (questionCategory == "") {
            layer.msg("话题不能为空");
            return;
        }
        $.ajax({
            url: '/article/publishQuestion.action',
            type: 'post',
            data: {
                "title": questionTitle,
                "content": questionContent,
                "categoryName": questionCategory,
                "type": 0,
                "status": 1
            },
            success: function (data) {
                layer.msg(data.msg);
                if (data.status == 200) {
                    $("#closeQuestionModal").click();
                    getArticleList();
                }
            }
        })

    });
    $(function () {
        var liked;
        getUserByUserId();
        getArticleList();
    });
    var page = 1, limit1 = 5;
    function getArticleList() {
        $.ajax({
            url: '/article/getArticleList.action',
            type: 'post',
            // data: {page: 20, limit: limit1},
            // async:false,
            success: function (data) {
                console.log(data.length)
                if (data.length > 0) {
                    var str = "";
                    // language=HTML

                    for (var i = 0; i < data.length; i++) {
                        var ua = data[i];
                        // language=HTML
                        str += '<div class="main">\n' +
                            '                <div class="media pull-left">\n' +
                            '                    <span class="from">';
                        if(ua.article.readed > 20)
                            str += '热门内容 ';
                        if(ua.article.categoryName!=null)
                        str += '来自:<i>' + ua.article.categoryName + '</i>';
                        str += '&nbsp;&nbsp浏览量：'+ua.article.readed+'</span>\n' +
                            '                    <div class="media-left media-middle">\n' +
                            '                        <a href="/userInfo.html?id=' + ua.user.id + '">\n' +
                            '                            <img class="media-object" src="images/avatar.jpg" width="50px" alt="...">\n' +
                            '                            <span class="username">' + ua.user.username + '</span>\n' +
                            '                        </a>\n' +
                            '                    </div>\n' +
                            '                    <div class="media-body topic readBox">\n' +
                            '                        <a href="/question.html?id=' + ua.article.id + '&uid=' + ua.user.id + '">\n' +
                            '                            <h4 class="media-heading">' + ua.article.title + '</h4> <span class="word">' + ua.article.content + '</span>\n' +
                            '                        </a>\n' +
                            '                    </div>\n' +
                            '                    <div class="media-bottom">\n';
                        if(ua.article.type==1){
                            str += '                        <p><span><svg class="Zi Zi--Comment Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M10.241 19.313a.97.97 0 0 0-.77.2 7.908 7.908 0 0 1-3.772 1.482.409.409 0 0 1-.38-.637 5.825 5.825 0 0 0 1.11-2.237.605.605 0 0 0-.227-.59A7.935 7.935 0 0 1 3 11.25C3 6.7 7.03 3 12 3s9 3.7 9 8.25-4.373 9.108-10.759 8.063z" fill-rule="evenodd"></path></span></svg><i class="comment1"  id="showCommentList' + ua.article.id + '" onclick="getCommentList(event,this, ' + ua.article.id + ','+ ua.article.type + ')" style="cursor:pointer;">添加评论</i>\n' ;
                        }else if(ua.article.type==0){
                            str += '                        <p><span><svg class="Zi Zi--Comment Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M10.241 19.313a.97.97 0 0 0-.77.2 7.908 7.908 0 0 1-3.772 1.482.409.409 0 0 1-.38-.637 5.825 5.825 0 0 0 1.11-2.237.605.605 0 0 0-.227-.59A7.935 7.935 0 0 1 3 11.25C3 6.7 7.03 3 12 3s9 3.7 9 8.25-4.373 9.108-10.759 8.063z" fill-rule="evenodd"></path></span></svg><i class="comment1"  id="showCommentList' + ua.article.id + '" onclick="getCommentList(event,this, ' + ua.article.id + ','+ ua.article.type + ')" style="cursor:pointer;">添加回答</i>\n' ;
                        }
                            str +='                            <span data-toggle="tooltip" data-placement="bottom" style="cursor:pointer;">\n' +
                            // '                                <span><svg class="Zi Zi--Share Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M2.931 7.89c-1.067.24-1.275 1.669-.318 2.207l5.277 2.908 8.168-4.776c.25-.127.477.198.273.39L9.05 14.66l.927 5.953c.18 1.084 1.593 1.376 2.182.456l9.644-15.242c.584-.892-.212-2.029-1.234-1.796L2.93 7.89z" fill-rule="evenodd"></path></svg></span><i>分享</i>\n' +
                            // '<div class="social-share" data-sites="weibo,qq,qzone,tencent,wechat" data-url="https://www.baidu.com"></div>\n'+
                                '                            </span>\n' +
                            '                            <a class="collect" onclick="likeQuestion(' + ua.article.id + ',' + i + ')" ><span><svg class="Zi Zi--Star Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M5.515 19.64l.918-5.355-3.89-3.792c-.926-.902-.639-1.784.64-1.97L8.56 7.74l2.404-4.871c.572-1.16 1.5-1.16 2.072 0L15.44 7.74l5.377.782c1.28.186 1.566 1.068.64 1.97l-3.89 3.793.918 5.354c.219 1.274-.532 1.82-1.676 1.218L12 18.33l-4.808 2.528c-1.145.602-1.896.056-1.677-1.218z" fill-rule="evenodd"></path></svg></span><i id="like' + i + '">';
                        // if (checkExistOrNot(ua.user.liked, ua.article.id))
                        if (checkExistOrNot(liked, ua.article.id))
                            str += "取消收藏";
                        else
                            str += "收藏";
                        str += '</i></a>\n' ;
                        if(ua.user.id == ${user.id} || ${user.role==1})
                           str += '                            <a class="btn btn-xs btn-danger" onclick="deleteArticleByArticleId(' + ua.article.id + ')"><i>删除</i></a></p>\n';
                          str +=  '<div id="comment' + ua.article.id + '" class="commentListByArticleId"></div>' +
                            '                    </div>\n' +
                            '                </div>\n' +
                            '            </div>';
                    }
                    $("#hotQuestion").html(str);
                    limit();
                }

            }
        })
    };


    function deleteArticleByArticleId(id) {
        layer.confirm("确定删除该条记录吗？",function () {
            $.ajax({
                url: '/deleteArticleByArticleId.action',
                type: 'post',
                data:{
                    "id":id
                },
                success:function (data) {
                    layer.msg(data.msg);
                    getArticleList();

                }
            });

        });



    }

    function checkExistOrNot(liked, id) {
        console.log(JSON.stringify(liked));
        if(liked) {
            liked = liked.toString();
        }else {
            return false;
        }
        var likeFlag = false;
        //var liked = user.liked;
        if (liked.indexOf("[") >= 0) {
            liked = liked.substring(1, liked.length);
        }
        if (liked.indexOf("]") >= 0) {
            liked = liked.substring(0, liked.length - 1);
        }
        if (!liked) {
            return false;
        }

        if (liked.length > 0) {

            var str = liked.split(",");

            for (var i = 0; i < str.length; i++) {
                if (str[i].trim() == id) {
                    return true;
                }
            }
            return false;

        } else {

            return liked == id ? true : false;
        }
    };
    var commentListId, html,index,self,updateTime, timeName="createTime";

    function getCommentList(event,obj,id,type) {
        event.stopPropagation();
        self = obj;
        $.ajax({
            url: '/getArticleCommentListByArticleId.action',
            data: {'id': id},
            type: 'post',
            success: function (data) {
                var ele =  $("#comment" + id);
                if(data.length) {
                    if(type == 0) {

                        $("#comment" + id).html('<div class="comment"><div class="answer" id="answer"><div class="main"><div class="media" style="margin-bottom:30px;"><div class="countCtm fg">' + data.length + '个回答</div><div class="commentWrappers"></div><div class="media-bottom  commentText"><div class="writeCmt"><input type="hidden" value=" ' + id + '"><input type="text" class="form-control" name="content"  style="display: inline-block; width: 90%;margin-bottom: 10px;" placeholder="写下你的回答"><button class="btn btn-primary addComment" onclick="sentComment(this,'+id+')">提交回答</button></div></div></div></div></div></div></div>');
                    }else if(type == 1) {
                        $("#comment" + id).html('<div class="comment"><div class="answer" id="answer"><div class="main"><div class="media" style="margin-bottom:30px;"><div class="countCtm">' + data.length + '条评论</div><div class="commentWrappers"></div><div class="media-bottom  commentText"><div class="writeCmt"><input type="hidden" value=" ' + id + '"><input type="text" class="form-control" name="content"  style="display: inline-block; width: 90%;margin-bottom: 10px;" placeholder="写下你的评论"><button class="btn btn-primary addComment" onclick="sentComment(this,'+id+')">评论</button></div></div></div></div></div></div></div>');

                    }
                    data.forEach(function(comment,index) {
                        updateTime = new Date(parseInt(comment[timeName])).format("yyyy-MM-dd hh:mm:ss");
                        $("#comment" + id +" .commentWrappers").append('<div class="commentWrapper"><div class="media-left media-middle"><a href="javascript:void(0);" style="font-size:16px; font-weight:normal;"><img class="media-object" src="images/avatar.jpg" width="25px" alt="..."><span class="username" style="font-size:16px;font-weight:normal;">' + comment.fromUserName + '</span></a></div><div class="media-body topic readBox"><span class="word">' + comment.content + '</span><p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span class="createTime">' + updateTime + '</span></p></div></div>')
                        if( comment.fromUserId == ${user.id} || ${user.role==1}){
                            $("#comment" + id +" .commentWrapper  .createTime").eq(index).after('<a class="btn btn-xs btn-danger" onclick="deleteCommentByCommentId(this,' + comment.id + ')">删除</a>');
                        }
                    })

                }else{
                    if(type == 0) {

                        $("#comment" + id).html('<div class="comment"><div class="answer" id="answer"><div class="main"><div class="media" style="margin-bottom:30px;"><div class="countCtm">' + data.length + '个回答</div><div class="commentWrappers"></div><div class="media-bottom  commentText"><div class="writeCmt"><input type="hidden" value=" ' + id + '"><input type="text" class="form-control" name="content"  style="display: inline-block; width: 90%;margin-bottom: 10px;" placeholder="写下你的评论"><button class="btn btn-primary addComment" onclick="sentComment(this,'+id+')">提交回答</button></div></div></div></div></div></div></div>');
                    }else if(type == 1) {
                        $("#comment" + id).html('<div class="comment"><div class="answer" id="answer"><div class="main"><div class="media" style="margin-bottom:30px;"><div class="countCtm">' + data.length + '条评论</div><div class="commentWrappers"></div><div class="media-bottom  commentText"><div class="writeCmt"><input type="hidden" value=" ' + id + '"><input type="text" class="form-control" name="content"  style="display: inline-block; width: 90%;margin-bottom: 10px;" placeholder="写下你的评论"><button class="btn btn-primary addComment" onclick="sentComment(this,'+id+')">评论</button></div></div></div></div></div></div></div>');

                    }
                }


                $(".commentListByArticleId").hide();
                $("#comment" + id).show();
                limit();
                index = $('.comment1').index(self);
                html = $(self).html();
                if(type == 1) {

                    if (html != "收起评论") {
                        $(self).html("收起评论");
                        $(".commentListByArticleId").eq(index).css({"display":"block"});
                    } else {
                        $(self).html("添加评论")
                        $(".commentListByArticleId").eq(index).css({"display":"none"});
                    }
                }else if(type == 0) {

                    if (html != "收起回答") {
                        $(self).html("收起回答");
                        $(".commentListByArticleId").eq(index).css({"display":"block"});
                    } else {
                        $(self).html("添加回答")
                        $(".commentListByArticleId").eq(index).css({"display":"none"});
                    }

                }

            }
        });


    };
    function getUserByUserId() {
        var id = "${user.id}";
        if (id != null) {
            $.ajax({
                url: '/getUserByUserId.action',
                type: 'post',
                async:false,
                data: {
                    "id": id
                },
                success: function (user) {
                    console.log(JSON.stringify(user))
                    liked = user.liked;
                }
            })
        }

    };

    function likeQuestion(id, index) {

        $.ajax({
            url: '/user/likeQuestion.action',
            type: 'post',
            data: {
                'questionId': id,
                'userId': '${user.id}'
            }, success: function (data) {
                var html = $("#like" + index).html();
                if (html == "收藏") {
                    $("#like" + index).html("取消收藏");
                    return;
                }
                if (html == "取消收藏") {
                    $("#like" + index).html("收藏");
                    return;
                }
            }
        });
    }
    //删除评论
    function deleteCommentByCommentId(obj,id) {
        var self = obj;
        layer.confirm("确定删除吗？",function () {
            $.ajax({
                url:'/deleteCommentByCommentId.action',
                type:'post',
                data:{
                    "id":id
                },
                success:function (data) {
                    layer.msg(data.msg);
                    var count = $(self).parents(".commentWrappers").siblings('.countCtm').html().substring(0,1)-1;
                    var text = $(self).parents(".commentWrappers").siblings('.countCtm').html().substring(1);
                    $(self).parents(".commentWrappers").siblings('.countCtm').html(count+text);
                    $(self).parents(".commentWrapper").eq(0).empty();
                    // getArticleList();
                }
            });
        });
    };



    function replyTo(id) {
        $(".replyCommentDiv").hide();
        $("#replyHideId").val();
        $("#replyText").val();
        var str = ' <div class="replyCommentDiv">\n' +
            '<input type="hidden" id="replyHideId" value="' + id + '">' +
            '    <input type="text" id="replyText" class="form-control" name="content" placeholder="写下你的评论" style="display:inline-block; width:90%;margin-bottom:10px;">\n' +
            '    <button class="btn btn-primary" onclick="sendReplyComment(this)">评论</button>\n' +
            '   </div>';
        $("#replyTo" + id).empty().html(str);
        limit();
    }

    //TODO:回复用户评论信息
    function sendReplyComment(obj) {

        var id = $(obj).siblings("input[type='hidden']").val();
        var text = $(obj).siblings("input[type='text']").val();

    };

    function sentComment(obj, ele) {
        var id = $(obj).siblings("input[type='hidden']").val();
        var text = $(obj).siblings("input[type='text']").val();
        var commentId = id;
        var self = obj;
        $.ajax({
            url: '/submitQuestionAnswer.action',
            type: 'post',
            data: {
                'userId': '${user.id}',
                'questionId': id,
                'content': text
            },
            success: function (data) {
                layer.msg(data.msg);
                // getArticleList();
                updateTime = new Date().format("yyyy-MM-dd hh:mm:ss");
                var count = parseInt($(self).parents(".commentText").siblings('.countCtm').html().substring(0,1))+1;
                var text1 = $(self).parents(".commentText").siblings('.countCtm').html().substring(1);
                $(self).parents(".commentText").siblings('.countCtm').html(count+text1);
                $("#comment"+ ele + " .commentWrappers").append('<div class="commentWrapper"><div class="media-left media-middle"><a href="./myIndex.html" style="font-size:16px; font-weight:normal;"><img class="media-object" src="images/avatar.jpg" width="25px" alt="..."><span class="username" style="font-size:16px;font-weight:normal;">' + '${user.username}'+ '</span></a></div><div class="media-body topic readBox"><span class="word">' + text + '</span><p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span class="createTime">' + updateTime + '</span><a class="btn btn-xs btn-danger" onclick="deleteCommentByCommentId(this,' + id + ')">删除</a></p></div></div>')
                limit();

                $(obj).siblings("input[type='text']").val();
                var commentId = "comment" + $(obj).siblings("input[type='hidden']").val();
                $("#" + commentId).show();
            }
        });

    }

    function formatDate(date) {
        date = new Date(date);
        var year = date.getUTCFullYear();
        var month = date.getUTCMonth() + 1;
        var day = date.getUTCDate();
        var hours = date.getHours();
        var minutes = date.getMinutes();
        var seconds = date.getSeconds();
        if (minutes < 10) {
            minutes = "0" + minutes;
        }
        var seconds = date.getSeconds();
        if (seconds < 10) {
            seconds = "0" + seconds;
        }
        return year + "-" + month + "-" + day + " " + hours + ":" + minutes + ":" + seconds;
    };
    // function check() {
    //     var parent = document.getElementById("hotQuestion");
    //     var child = parent.querySelectorAll('.main');
    //
    //     var lastContentHeight = child[child.length-1].children[0].offsetTop + child[child.length-1].children[0].clientHeight;
    //     var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
    //     var pageHeight = document.documentElement.clientHeight || document.body.clientHeight;
    //     if (lastContentHeight <= scrollTop + pageHeight) {
    //         return true;
    //     }
    // }
    //
    // window.onscroll = function() {
    //     var flag = check();
    //     if(flag) {
    //         page++;
    //         getArticleList();
    //
    //     }
    //     console.log("flag: "+flag , page)
    // }

    /*
    //公用方法
        //搜索
        function getSearchArticleByKeyWord() {
            var searchKeyWord = $("#searchKeyWord").val();
            if(searchKeyWord == "") {
                //alert("请输入搜索的内容");
                layer.msg("请输入搜索的内容");
                return;
            }else{

                window.open("/search.html?kw="+searchKeyWord);


            }


        };

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
    */


</script>
<script src="${pageContext.request.contextPath}/js/index.js"></script>