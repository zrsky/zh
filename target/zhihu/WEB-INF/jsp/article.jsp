<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>文章页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <%--<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico" />--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/article.css">
</head>

<body>
    <div class="visible-md visible-lg nav">
        <div class="col-md-4">
            <a href="./index.html">晓乎</a>
        </div>
        <div class="col-md-6 article">
            <p>草稿</p>
        </div>
        <div class="col-md-2">
            <a href="./article/index.html"><span><i class="icon-article"></i>写文章</span></a>
        </div>
    </div>
    <div class="container">
        <div class="content">
            <div class="topic">
                <a href="#">怎么才能健康减肥</a>
                <div class="img"><img width="60px" src="images/avatar.jpg" alt=""><span style="font-size:18px;margin-left: 10px;">张瑞</span></div>
                <p class="word">吃饭睡觉打豆豆</p>
            </div>
            <p class="pull-left time">时间：<span>2017-08-09</span> • <span class="edit">删除文章</span></p>
            <div class="pull-right bottom">
                <p><a href="./article/index.html"><span><svg viewBox="0 0 12 12" fill="#777" class="Icon ModifyButton-icon Icon--modify" width="12" height="16" aria-hidden="true" style="height: 16px; width: 12px; margin-right:2px;"><title></title><g><path d="M.423 10.32L0 12l1.667-.474 1.55-.44-2.4-2.33-.394 1.564zM10.153.233c-.327-.318-.85-.31-1.17.018l-.793.817 2.49 2.414.792-.814c.318-.328.312-.852-.017-1.17l-1.3-1.263zM3.84 10.536L1.35 8.122l6.265-6.46 2.49 2.414-6.265 6.46z" fill-rule="evenodd"></path></g></svg></span><i>编辑</i></a>
                    <span><svg class="Zi Zi--Share Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M2.931 7.89c-1.067.24-1.275 1.669-.318 2.207l5.277 2.908 8.168-4.776c.25-.127.477.198.273.39L9.05 14.66l.927 5.953c.18 1.084 1.593 1.376 2.182.456l9.644-15.242c.584-.892-.212-2.029-1.234-1.796L2.93 7.89z" fill-rule="evenodd"></path></svg></span><i>分享</i>
                    <a class="collect"><span><svg class="Zi Zi--Star Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M5.515 19.64l.918-5.355-3.89-3.792c-.926-.902-.639-1.784.64-1.97L8.56 7.74l2.404-4.871c.572-1.16 1.5-1.16 2.072 0L15.44 7.74l5.377.782c1.28.186 1.566 1.068.64 1.97l-3.89 3.793.918 5.354c.219 1.274-.532 1.82-1.676 1.218L12 18.33l-4.808 2.528c-1.145.602-1.896.056-1.677-1.218z" fill-rule="evenodd"></path></svg></span><i>收藏</i></a>
                </p>
            </div>
            <div class="comment hidden-xs">
                <p><span>4</span>条评论</p>
                <div class="line"></div>
                <div class="col-md-1 col-sm-1 col-xs-1"><img style="margin-left:-15px;" width="40px" src="images/avatar.jpg"></div>
                <div class="col-md-10 col-sm-10 col-xs-10">
                    <input type="text" class="form-control" name="comment" placeholder="写下你的评论">
                </div>
                <button type="button" class="btn btn-primary col-md-1 col-sm-1">评论</button>
                <div class="comment_box1">
                    <div class="topic">
                        <div class="img"><img width="40px" src="images/avatar.jpg" alt=""><span style="font-size:18px;margin-left: 10px;">王慧</span></div>
                        <p class="word">我不吃饭睡觉打豆豆</p>
                    </div>
                    <p class="time">发布于：<span>2017-08-09</span> • <a href="javascript:void(0);" class="zan"><span><svg viewBox="0 0 20 18" fill="#9fadc7" xmlns="http://www.w3.org/2000/svg" class="Icon Icon--like Icon--left svg_zan" width="13" height="16" aria-hidden="true" style="height: 16px; width: 13px;margin-left:5px;"><title></title><g><path d="M.718 7.024c-.718 0-.718.63-.718.63l.996 9.693c0 .703.718.65.718.65h1.45c.916 0 .847-.65.847-.65V7.793c-.09-.88-.853-.79-.846-.79l-2.446.02zm11.727-.05S13.2 5.396 13.6 2.89C13.765.03 11.55-.6 10.565.53c-1.014 1.232 0 2.056-4.45 5.83C5.336 6.965 5 8.01 5 8.997v6.998c-.016 1.104.49 2 1.99 2h7.586c2.097 0 2.86-1.416 2.86-1.416s2.178-5.402 2.346-5.91c1.047-3.516-1.95-3.704-1.95-3.704l-5.387.007z"></path></g></svg></span><i>1</i></a>
                    </p>
                </div>
                <div class="comment_box">
                    <div class="topic">
                        <div class="img"><img width="40px" src="images/avatar.jpg" alt=""><span style="font-size:18px;margin-left: 10px;">王慧</span></div>
                        <p class="word">我不吃饭睡觉打豆豆</p>
                    </div>
                    <p class="time">发布于：<span>2017-08-09</span> • <a href="javascript:void(0);" class="zan"><span><svg viewBox="0 0 20 18" fill="#9fadc7" xmlns="http://www.w3.org/2000/svg" class="Icon Icon--like Icon--left svg_zan" width="13" height="16" aria-hidden="true" style="height: 16px; width: 13px;margin-left:5px;"><title></title><g><path d="M.718 7.024c-.718 0-.718.63-.718.63l.996 9.693c0 .703.718.65.718.65h1.45c.916 0 .847-.65.847-.65V7.793c-.09-.88-.853-.79-.846-.79l-2.446.02zm11.727-.05S13.2 5.396 13.6 2.89C13.765.03 11.55-.6 10.565.53c-1.014 1.232 0 2.056-4.45 5.83C5.336 6.965 5 8.01 5 8.997v6.998c-.016 1.104.49 2 1.99 2h7.586c2.097 0 2.86-1.416 2.86-1.416s2.178-5.402 2.346-5.91c1.047-3.516-1.95-3.704-1.95-3.704l-5.387.007z"></path></g></svg></span><i>1</i></a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
<script src="${pageContext.request.contextPath}/node_modules/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/base.js"></script>
<script src="${pageContext.request.contextPath}/js/article.js"></script>