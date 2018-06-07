<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>我的问题</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <%--<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}//images/favicon.ico"/>--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/question.css">
    <style>

        .commentWrapper {
            background: #fff;
            padding: 20px;
        }
        .commentWrapper .media-object {
            display: inline-block;
            margin-right: 10px;
        }
        .commentWrapper .media-body .word {
            margin-top: 10px;
            display: inline-block;
        }
        .navbar-brand {
            color: #3399ff!important;
            font-size: 30px;
            font-family: "宋体";
        }
    </style>
</head>

<body>
<!-- 导航 -->
<div class="navigator">
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
                    <a class="navbar-brand" href="./index.html">晓乎</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/index.html">首页<span class="sr-only">(current)</span></a></li>
                        <li class="active"><a href="/find.html">发现<span class="sr-only">(current)</span></a></li>
                    </ul>
                    <form class="navbar-form navbar-left" action="javascript:void(0);">
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
</div>
<!-- /导航 -->

<div class="top">
    <div class="container">
        <div class="pull-left visible-md visible-lg visible-sm readBox">
            <div class="media">
                <div class="media-left topic" id="questionTitle"></div>
                <div class="media-body">
                    <p class="media-heading" id="editWrapper">
                            <span class="change" data-toggle="modal" data-target="#myModal">
                        <svg viewBox="0 0 12 12" class="Icon Icon--modify Icon--left" style="height:16px;width:14px;" width="14" height="16" aria-hidden="true" data-reactid="80">
                            <title data-reactid="81"></title>
                            <g data-reactid="82">
                                <path d="M.423 10.32L0 12l1.667-.474 1.55-.44-2.4-2.33-.394 1.564zM10.153.233c-.327-.318-.85-.31-1.17.018l-.793.817 2.49 2.414.792-.814c.318-.328.312-.852-.017-1.17l-1.3-1.263zM3.84 10.536L1.35 8.122l6.265-6.46 2.49 2.414-6.265 6.46z" fill-rule="evenodd"></path>
                            </g>
                        </svg>
                        修改
                        </span></p>
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" id="editQuestionCloseBtn" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h3 class="modal-title">写下你的问题</h3>
                                </div>
                                <div class="modal-body">
                                    <form class="form-horizontal" id="questionForm" method="post">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="editQuestionTitle" required="required" name="topic" placeholder="标题">
                                        </div>
                                        <div class="form-group">
                                            <label style="margin-top: 30px;font-size:16px;color:#000;font-weight:bold;" for="editQuestionContent">问题描述:</label>
                                            <textarea style="resize:none;" class="form-control" id="editQuestionContent" required="required" rows="5" name="content"></textarea>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    <button type="button" id="editQuestionSubmitBtn" class="btn btn-primary">提交问题</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <p class="answer word" id="questionContent"></p>
            <div class="media-bottom question_bottom">
                <p>
                    <span>
                        <button class=" btn btn-primary" id="follow" onclick="updateFollowedStatus(this)">关注TA</button>
                    </span>
                    <!-- Standard button -->
                    <button style="margin-left:20px;margin-right:20px;" type="button" id="answerBtn" class="btn btn-default">
                        <svg class="write_answer" viewBox="0 0 12 12" class="Icon Button-icon Icon--modify" style="height:16px;width:14px;" width="14" height="16" aria-hidden="true" data-reactid="114">
                            <title data-reactid="115"></title>
                            <g data-reactid="116">
                                <path d="M.423 10.32L0 12l1.667-.474 1.55-.44-2.4-2.33-.394 1.564zM10.153.233c-.327-.318-.85-.31-1.17.018l-.793.817 2.49 2.414.792-.814c.318-.328.312-.852-.017-1.17l-1.3-1.263zM3.84 10.536L1.35 8.122l6.265-6.46 2.49 2.414-6.265 6.46z" fill-rule="evenodd"></path>
                            </g>
                        </svg>
                        <span id="writeBtn"></span></button
                    <%-- <span><svg class="Zi Zi--Comment Button-zi" fill="#777" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M10.241 19.313a.97.97 0 0 0-.77.2 7.908 7.908 0 0 1-3.772 1.482.409.409 0 0 1-.38-.637 5.825 5.825 0 0 0 1.11-2.237.605.605 0 0 0-.227-.59A7.935 7.935 0 0 1 3 11.25C3 6.7 7.03 3 12 3s9 3.7 9 8.25-4.373 9.108-10.759 8.063z" fill-rule="evenodd"></path></svg></span><i data-toggle="modal" data-target="#myModal_comment"><span id="showCommentCountBtn"></span></i>--%>
                  <%--  <span><svg class="Zi Zi--Share Button-zi" fill="#777" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M2.931 7.89c-1.067.24-1.275 1.669-.318 2.207l5.277 2.908 8.168-4.776c.25-.127.477.198.273.39L9.05 14.66l.927 5.953c.18 1.084 1.593 1.376 2.182.456l9.644-15.242c.584-.892-.212-2.029-1.234-1.796L2.93 7.89z" fill-rule="evenodd"></path></svg></span><i>分享</i>--%>
                    <a><span><svg class="Zi Zi--Star Button-zi" fill="#777" color="#777" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M5.515 19.64l.918-5.355-3.89-3.792c-.926-.902-.639-1.784.64-1.97L8.56 7.74l2.404-4.871c.572-1.16 1.5-1.16 2.072 0L15.44 7.74l5.377.782c1.28.186 1.566 1.068.64 1.97l-3.89 3.793.918 5.354c.219 1.274-.532 1.82-1.676 1.218L12 18.33l-4.808 2.528c-1.145.602-1.896.056-1.677-1.218z" fill-rule="evenodd"></path></svg></span><i id="liked" style="display:none; color:#777">收藏</i></a>
                    <span id="deleteArticleBtn"></span>
                </p>


                <!-- Button trigger modal -->
                <!-- Modal -->
                <div class="modal fade" id="myModal_comment" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">
                                    <div class="countCtm">3条评论</div>
                                </h4>
                            </div>
                            <div class="modal-body">
                                <div class="comment_top comment" style="display: block;">
                                    <div class="answer" id="answer">
                                        <div class="main">
                                            <div class="media" style="margin-bottom:30px;">
                                                <div class="media-left media-middle">
                                                    <a href="#">
                                                        <img class="media-object" src="images/avatar.jpg" width="25px" alt="...">
                                                        <span class="username">王五</span>
                                                    </a>
                                                </div>
                                                <div class="topic readBox">
                                                    <span class="word" style="color: #2F2F2F;">我到家福克斯覅胃康灵是你覅额外求偶遇然后哦李凤华容沙嗲地方还能刷卡缴费hi为U盘撒解放路afhksadfhpwolsanlkjdshuw爱妃味道温柔点群大法师的阿双方缺乏</span>
                                                    <p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span>2017-10-7</span></p>
                                                </div>
                                                <div class="media-bottom">
                                                    <p><span class="zan"><svg viewBox="0 0 20 18" xmlns="http://www.w3.org/2000/svg" class="Icon Icon--like Icon--left" width="13" height="16" aria-hidden="true" style="height: 16px; width: 13px;"><title></title><g><path
                                                            d="M.718 7.024c-.718 0-.718.63-.718.63l.996 9.693c0 .703.718.65.718.65h1.45c.916 0 .847-.65.847-.65V7.793c-.09-.88-.853-.79-.846-.79l-2.446.02zm11.727-.05S13.2 5.396 13.6 2.89C13.765.03 11.55-.6 10.565.53c-1.014 1.232 0 2.056-4.45 5.83C5.336 6.965 5 8.01 5 8.997v6.998c-.016 1.104.49 2 1.99 2h7.586c2.097 0 2.86-1.416 2.86-1.416s2.178-5.402 2.346-5.91c1.047-3.516-1.95-3.704-1.95-3.704l-5.387.007z"></path></g></svg><i>1</i></span>
                                                        <span><svg viewBox="0 0 22 16" class="Icon Icon--reply Icon--left" width="13" height="16" aria-hidden="true" style="height: 16px;margin-left: 10px; width: 13px;"><title></title><g><path
                                                                d="M21.96 13.22c-1.687-3.552-5.13-8.062-11.637-8.65-.54-.053-1.376-.436-1.376-1.56V.677c0-.52-.635-.915-1.116-.52L.47 6.67C.18 6.947 0 7.334 0 7.763c0 .376.14.722.37.987 0 0 6.99 6.818 7.442 7.114.453.295 1.136.124 1.135-.5V13c.027-.814.703-1.466 1.532-1.466 1.185-.14 7.596-.077 10.33 2.396 0 0 .395.257.535.257.892 0 .614-.967.614-.967z"></path></g></svg></span><i class="huifu_in">回复</i>
                                                    </p>
                                                    <div class="huifuInput">
                                                        <input type="" class="form-control" name="content" placeholder="写下你的评论" style="display: inline-block; width: 90%;margin-bottom: 10px;">
                                                        <button class="btn btn-primary">评论</button>
                                                    </div>
                                                    <div class="answer">
                                                        <div class="main">
                                                            <div class="media pull-left huifu" style=" padding: 0;border: 0;box-shadow: none;border-top: 1px solid #f0f2f7; padding: 20px 0 20px 0;">
                                                                <div class="media-left media-middle">
                                                                    <a href="#">
                                                                        <img class="media-object" src="images/avatar.jpg" width="25px" alt="...">
                                                                        <span class="username" style="font-size: 16px;font-weight: normal;">张瑞</span><span style="margin: 0 10px;color:#8590a6;">回复</span><span class="username">王五</span>
                                                                    </a>
                                                                </div>
                                                                <div class="topic readBox">
                                                                    <span class="word" style="color: #2F2F2F;">我到家福克斯覅胃康灵是你覅额外求偶遇然后哦李凤华容沙嗲地方还能刷卡缴费hi为U盘撒解放路afhksadfhpwolsanlkjdshuw爱妃味道温柔点群大法师的阿双方缺乏</span>
                                                                    <p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span>2017-10-8</span></p>
                                                                </div>
                                                                <div class="media-bottom">
                                                                    <p><span class="zan"><svg viewBox="0 0 20 18" xmlns="http://www.w3.org/2000/svg" class="Icon Icon--like Icon--left" width="13" height="16" aria-hidden="true" style="height: 16px; width: 13px;"><title></title><g><path
                                                                            d="M.718 7.024c-.718 0-.718.63-.718.63l.996 9.693c0 .703.718.65.718.65h1.45c.916 0 .847-.65.847-.65V7.793c-.09-.88-.853-.79-.846-.79l-2.446.02zm11.727-.05S13.2 5.396 13.6 2.89C13.765.03 11.55-.6 10.565.53c-1.014 1.232 0 2.056-4.45 5.83C5.336 6.965 5 8.01 5 8.997v6.998c-.016 1.104.49 2 1.99 2h7.586c2.097 0 2.86-1.416 2.86-1.416s2.178-5.402 2.346-5.91c1.047-3.516-1.95-3.704-1.95-3.704l-5.387.007z"></path></g></svg><i>0</i></span><span
                                                                            class="delete"><svg viewBox="0 0 18 20" class="Icon Icon--trash Icon--left" width="12" height="16" aria-hidden="true" style="height: 16px;margin-left: 10px; width: 12px;"><title></title><g><path
                                                                            d="M13.464 2s.05-2-1.48-2H6C4.193 0 4.464 2 4.464 2H1.752c-2.57 0-2.09 3.5 0 3.5l1.213 13.027S2.965 20 4.475 20h8.987c1.502 0 1.502-1.473 1.502-1.473l1.2-13.027c2.34 0 2.563-3.5 0-3.5h-2.7zM5.936 16.5l-.58-9h1.8v9h-1.22zm4.824 0v-9h1.8l-.61 9h-1.19z"></path></g></svg><i>删除</i></span></p>
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
                </div>
            </div>
        </div>
        <div class="pull-right col-md-2 col-sm-2 top_right visible-md visible-lg visible-sm">
            <div type="button" class="col-md-6 col-sm-6 left" data-toggle="modal" data-target="#myModal_care">
                <a href="javascript:;" onclick="getFollowedUser()">
                    <p>关注</p>
                    <span class="followedSize"></span>
                </a>
            </div>
            <!-- <div class="col-md-6 col-sm-6 left"><a href="#"><p>关注者</p><span>12</span></a></div> -->
            <div class="col-md-5 col-sm-5 right">
                <p>浏览</p><span id="hadReaded"></span>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal_care" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title pull-left"><span class="followedSize"></span>人已关注了我</h4>
                    </div>
                    <div id="followedModalBody">

                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<div class="middle">
    <div class="container">
        <div class="content" id="writeAnswerContentDiv">
            <div class="media write">
                <div class="media-left">
                    <a href="#">
                        <img class="media-object" width="50px" src="images/avatar.jpg" alt="...">
                    </a>
                </div>
                <div class="media-body">
                    <h3 style="margin-top:10px;" class="media-heading">${user.username}</h3>
                    <form class="form-horizontal" id="commentBtn_wrapper">
                        <div class="form-group">
                            <textarea class="form-control" cols="10" rows="5" id="writeAnswerContent" placeholder="写回答"></textarea>
                            <button type="button" class="btn btn-primary" id="submitQuestionAnswerBtn" style="position: absolute;left: 458px; top: 111px;">提交回答</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="comment_count" id="commentCount" style="display:none;">

        </div>
        <div id="commentAnswer"></div>


    </div>
</div>
</body>

</html>
<script src="${pageContext.request.contextPath}/node_modules/jquery/dist/jquery.min.js "></script>
<script src="${pageContext.request.contextPath}/node_modules/bootstrap/dist/js/bootstrap.min.js "></script>
<script src="${pageContext.request.contextPath}/js/question.js "></script>
<script src="${pageContext.request.contextPath}/js/base.js "></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
<link href="${pageContext.request.contextPath}/layui/css/layui.css">
<script>
    var questionId;
    var flag = false;
    var writerUserId;
    $(function () {
        $("#writeAnswerContentDiv").hide();
        questionId = getRequestUri().id;

        writerUserId = getRequestUri().uid;
        getQuestionDetail(questionId);
        getUserByUserId();
        getFollowedCountByUserId();


    });


    function getRequestUri() {
        var url = location.search; //获取url中"?"符后的字串
        var theRequest = new Object();
        if (url.indexOf("?") != -1) {
            var str = url.substr(1);
            strs = str.split("&");
            for (var i = 0; i < strs.length; i++) {
                theRequest[strs[i].split("=")[0]] = unescape(strs[i].split("=")[1]);
            }
        }
        return theRequest;
    }

    $("#answerBtn").on("click", function (e) {

        if (flag) {
            $("#writeAnswerContentDiv").hide();
        } else {
            $("#writeAnswerContentDiv").show();
        }
        flag = !flag;
    });


    function deleteArticleByArticleId() {
        layer.confirm("确定删除该条记录吗？",function () {
            $.ajax({
                url: '/deleteArticleByArticleId.action',
                type: 'post',
                data:{
                    "id":questionId
                },
                success:function (data) {
                    window.location.replace("/index.html");
                    layer.msg(data.msg);

                }
            });

        });



    };



    function getQuestionDetail(id) {
        if(writerUserId == ${user.id} || ${user.role==1} ){
            $("#deleteArticleBtn").html('  <a class="btn btn-xs btn-danger" onclick="deleteArticleByArticleId()">删除</a>');
        }
        $.ajax({
            url: '/getQuestionDetail.action',
            type: 'post',
            data: {
                "id": id
            },
            success: function (data) {
                $("#questionTitle").html(data.article.title);
                $("#questionContent").html(data.article.content);
                $("#editQuestionTitle").val(data.article.title);
                $("#editQuestionContent").html(data.article.content);
                $("#hadReaded").html(data.article.readed);
                limit();
                writerUserId = data.user.id;
                if (data.comments == null) {
                    $("#commentCount").hide();
                    //$("#showCommentCountBtn").html("暂无评论");
                    return;
                }
                if(data.user.id == ${user.id} || ${user.role==1}){
                    $("#editWrapper").css({"display": "block"});
                } else {
                    $("#editWrapper").css({"display": "none"});
                }
                if(data.article.type==1) {
                    $("#writeBtn").html("写评论");
                    $("#writeAnswerContent").attr({"placeholder":"写评论"});
                    $("#submitQuestionAnswerBtn").html("提交评论");
                } else if(data.article.type==0) {
                    $("#writeBtn").html("写回答");
                    $("#writeAnswerContent").attr({"placeholder":"写回答"});
                    $("#submitQuestionAnswerBtn").html("提交回答");
                }
                if (data.comments.length > 0) {
                    $("#commentCount").show();
                    // $("#showCommentCountBtn").html(data.comments.length + '条评论');

                    if(data.article.type==0) {
                        $("#commentCount").html("<p><i >" + data.comments.length + " </i>个回答</p>");
                    }else if(data.article.type==1) {
                        $("#commentCount").html("<p><i >" + data.comments.length + " </i>条评论</p>");
                    }
                    var str = '';
                    for (var i = 0; i < data.comments.length; i++) {
                        var comment = data.comments[i];
                        // language=HTML

                        str += '<div class="commentWrapper"><div class="media-left media-middle"><a href="./userInfo.html?id='+ comment.fromUserId + '  "  target="_blank" style="font-size:16px; font-weight:normal;"><img class="media-object" src="images/avatar.jpg" width="50px" alt="..."><span class="username" style="font-size:16px;font-weight:normal;">' +  comment.fromUserName + '</span></a></div><div class="media-body topic readBox"><span class="word">' + comment.content + '</span><p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span>' + formatDate(comment.createTime) + '</span>';
                        if( comment.fromUserId == ${user.id} || ${user.role==1})
                            str += ' &nbsp;&nbsp;&nbsp;<a class="btn btn-xs btn-danger" onclick="deleteCommentByCommentId('+comment.id+')">删除</a>';
                        str += '</p></div></div>';
                    }
                    $("#commentAnswer").html(str);
                    limit();
                }
                else {
                    $("#commentAnswer").empty();
                }
            }

        })

    };

    //删除评论
    function deleteCommentByCommentId(id) {
        layer.confirm("确定删除该条评论吗？",function () {
            $.ajax({
                url:'/deleteCommentByCommentId.action',
                type:'post',
                data:{
                    "id":id
                },
                success:function (data) {
                    layer.msg(data.msg);
                    getQuestionDetail(questionId);

                }
            });
        });
    };
    function formatDate(date) {
        date = new Date(date);
        var year = date.getUTCFullYear();
        var month = date.getUTCMonth() + 1;
        var day = date.getUTCDate();
        var hours = date.getHours();
        var minutes = date.getMinutes();
        if(minutes< 10){
            minutes = "0" + minutes;
        }
        var seconds = date.getSeconds();
        if (seconds < 10) {
            seconds = "0" + seconds;
        }
        return year + "-" + month + "-" + day + " " + hours + ":" + minutes + ":" + seconds;
    };

    $("#submitQuestionAnswerBtn").on("click", function (e) {
        e.preventDefault();
        $.ajax({
            url: '/submitQuestionAnswer.action',
            type: 'post',
            data: {
                'userId': '${user.id}',
                'questionId': questionId,
                'content': $("#writeAnswerContent").val()
            },
            success: function (data) {
                $("#writeAnswerContent").val("");
                $("#writeAnswerContentDiv").hide();
                layer.msg(data.msg);
                getQuestionDetail(questionId);

            }
        });
    });
    $("#editQuestionSubmitBtn").on("click", function (e) {
        e.preventDefault();

        var title = $("#editQuestionTitle").val();
        var content = $("#editQuestionContent").val();
        if (title == "") {
            layer.msg("标题不能为空");
            return;
        }
        if (content == "") {
            layer.msg("问题内容不能为空");
            return;
        }
        $.ajax({
            url: '/editQuestionByQuestionId.action',
            type: 'post',
            data: {
                'id': questionId,
                'title': title,
                'content': content
            },
            success: function (data) {
                layer.msg(data.msg);
                $("#editQuestionCloseBtn").click();
                if (data.status == 200) {
                    getQuestionDetail(questionId);
                }
            }
        })
    });

    function getUserByUserId() {
        var id = "${user.id}";
        if (id != null) {
            $.ajax({
                url: '/getUserByUserId.action',
                type: 'post',
                data: {
                    "id": id
                },
                success: function (user) {
                    var result = checkExistOrNot(user.liked, questionId, false);//收藏
                    var res = checkExistOrNot(user.followed, writerUserId, true);//关注
                    $("#follow").show();
                    $("#liked").show();
                    if (result) {
                        $("#liked").html("取消收藏");
                    } else {
                        $("#liked").html("收藏");
                    }
                    if (res) {
                        $("#follow").removeClass().addClass("btn btn-default").html("取消关注");
                    } else {
                        $("#follow").removeClass().addClass("btn btn-primary").html("关注TA");
                    }
                }
            })
        }

    };

    function checkExistOrNot(liked, id, followedFlag) {
        var likeFlag = false;
        //var liked = user.liked;
        if(liked){
            if (liked.indexOf("[") >= 0) {
                liked = liked.substring(1, liked.length);
            }
            if (liked.indexOf("]") >= 0) {
                liked = liked.substring(0, liked.length - 1);
            }
            if (liked == null) {
                return false;
            }
        }

        if(liked) {
            if (liked.length > 0) {

                var str = liked.split(",");
                if (followedFlag) {
                    //$(".followedSize").html(str.length);
                }
                for (var i = 0; i < str.length; i++) {
                    if (str[i].trim() == id) {
                        return true;
                    }
                }
                return likeFlag;

            } else {

                return liked == id ? true : false;
            }
        }
    };

    //收藏
    $("#liked").on("click", function () {

        $.ajax({
            url: '/user/likeQuestion.action',
            type: 'post',
            data: {
                'questionId': questionId,
                'userId': '${user.id}'
            }, success: function (data) {
                var html = $("#liked").html();
                if (html == "收藏") {
                    $("#liked").html("取消收藏");
                    return;
                }
                if (html == "取消收藏") {
                    $("#liked").html("收藏");
                    return;
                }
            }
        });
    });

    //关注
    function updateFollowedStatus(obj) {

        $.ajax({
            url: '/user/followUser.action',
            type: 'post',
            data: {
                'id': writerUserId,
                'userId': '${user.id}'
            }, success: function (data) {
                var html = $(obj).html();
              if (html == "关注TA") {
                    $(obj).removeClass().addClass("btn btn-default").html("取消关注");
                    return;
                }
                if (html == "取消关注") {
                    $(obj).removeClass().addClass("btn btn-primary").html("关注TA");
                    return;
                }
                getFollowedCountByUserId();
            }
        });
    }

    function getFollowedUser() {
        $.ajax({
            url: '/getFollowedUserByIdUserId.action',
            type: 'post',
            data: {
                "id": "${user.id}"
            },
            success: function (data) {
                if (data.length > 0) {
                    var str = "";
                    for (var j = 0; j < data.length; j++) {


                        str += '<div class="modal-body">\n' +
                            '                            <div class="media">\n' +
                            '                                <div class="media-left media-middle">\n' +
                            '                                    <a href="#">\n' +
                            '                                        <img class="media-object" width="50px" src="images/avatar.jpg" alt="...">\n' +
                            '                                    </a>\n' +
                            '                                </div>\n'
                        ;
                        if (!checkExistOrNot('${user.followed}', data[j].user.id, false))
                            str += '<button class="btn btn-default pull-right" id="followIndex' + j + '" style="position:absolute;right:22px;" onclick="updateFollowedStatus(this);">取消关注</button>';
                        else
                            str += '<button class="btn btn-primary pull-right"  id="followIndex' + j + '" style="position:absolute;right:22px;" onclick="updateFollowedStatus(this);">关注TA</button>';

                        str += '                                <div class="media-body">\n' +
                            '                                    <a href="/userInfo.html?id='+data[j].user.id+'"><h4 class="media-heading" style="color:#353535;font-weight: bold;">' + data[j].user.username + '</h4></a>\n' +
                            '                                    <p style="font-weight: normal;font-size:14px;color:#777;"><i>' + calcLength(data[j].questionList) + '</i><i>提问</i> • <i>' + calcLength(data[j].articleList) + ' </i><i>文章</i> • <i>' + data[j].followedCount + '</i><i> 已关注</i></p>\n' +
                            '                                </div>\n' +
                            '                            </div>\n' +
                            '                        </div>';


                    }
                    $("#followedModalBody").html(str);

                }

            }
        });
    };

    function changeFollowedUserById(id, index) {
        $.ajax({
            url: '/user/followUser.action',
            type: 'post',
            data: {
                'id': id,
                'userId': '${user.id}'
            }, success: function (data) {
                var html = $("#followIndex" + index).html();
                if (html == "关注TA") {
                    $("#followIndex" + index).removeClass().addClass("btn btn-default pull-right").html("取消关注");
                }
                if (html == "取消关注") {
                    $("#followIndex" + index).removeClass().addClass("btn btn-primary pull-right").html("关注TA");
                }
            }
        });



    }



    function calcLength(data) {
        if (data == null)
            return 0;
        else
            return data.length;

    }

    function getFollowedCountByUserId() {
        $.ajax({
            url: '/getFollowedCountByUserId.action',
            data: {
                "id": '${user.id}'
            }, success: function (data) {
                $(".followedSize").html(data);
            }
        })

    }

    //搜索

    function getSearchArticleByKeyWord() {
        var searchKeyWord = $("#searchKeyWord").val();
        if(searchKeyWord == "") {
            // alert("请输入搜索的内容");
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

</script>