<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>发现</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <%--<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico"/>--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/find.css">
    <style>
        body {
            background: #fff!important;
        }
        .navbar {
            background: #648BE5!important;
        }
        .navbar-default .navbar-nav>.active>a {
            color: #fff!important;
            background-color: #648BE5!important;
        }
        .navbar-default .navbar-nav>li>a {
            color: #fff!important;
        }
    </style>
</head>

<body>
<jsp:include page="top.jsp"/>
<!-- 版心 -->
<div class="container">
    <div>
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#today" aria-controls="today" role="tab" data-toggle="tab">本周最热</a></li>
            <li role="presentation"><a href="#month" aria-controls="month" role="tab" data-toggle="tab">本月最热</a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="today">


            </div>
            <div role="tabpanel" class="tab-pane" id="month">

            </div>
        </div>
    </div>
</div>
<!-- /版心 -->
</body>

</html>
<script src="${pageContext.request.contextPath}/node_modules/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/base.js"></script>
<script src="${pageContext.request.contextPath}/js/find.js"></script>
<script>
    $(function () {
        getTheMostCommentListByToday();
        getTheMostCommentListByMonth();
    });

    function getTheMostCommentListByToday() {
        $.ajax({
            url: '/getTheMostCommentListByToday.action',
            success: function (data) {
                console.log(data);
                find(data, 'today');
                limit();
            }
        })

    }

    function getTheMostCommentListByMonth() {
        $.ajax({
            url: '/getTheMostCommentListByMonth.action',
            success: function (data) {
                find(data, 'month');
                limit();
            }
        })
    }


    //渲染数据封装
    var updateTime, timeName = 'createTime', fit;
    //渲染今日最热
    //find(finds,'today');
    //渲染本月最热
    //find(finds1,'month');

    //动态列表渲染
    function find(finds, element) {
       if(finds.length){
           finds.forEach(function (find, index) {
               if (find.article) {
                   updateTime = new Date(parseInt(find.article[timeName])).format("yyyy-MM-dd hh:mm:ss");
                   $('#' + element).append('<div class="content"><div class="topic readBox"><a href="/question.html?id=' + find.article.id + '&uid=' + find.user.id + '">' + find.article.title + '</a><a href="/userInfo.html?id=' + find.user.id + '" style="font-size:16px; font-weight:normal;"><div class="img"><img width="60px" src="images/avatar.jpg" alt=""><span style="font-size:18px;margin-left: 10px;">' + find.user.username + '</span></div></a><a href="/question.html?id=' + find.article.id + '&uid=' + find.user.id + '" style="font-size:16px; font-weight:normal;"><p class="word">' + find.article.content + '</p></a></div><p class="time">时间：<span>' + updateTime + '</span> </p>' +
                       '<div class="bottom">' +
                       '<p>' +

                       '<a class="collect"><span><svg class="Zi Zi--Star Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M5.515 19.64l.918-5.355-3.89-3.792c-.926-.902-.639-1.784.64-1.97L8.56 7.74l2.404-4.871c.572-1.16 1.5-1.16 2.072 0L15.44 7.74l5.377.782c1.28.186 1.566 1.068.64 1.97l-3.89 3.793.918 5.354c.219 1.274-.532 1.82-1.676 1.218L12 18.33l-4.808 2.528c-1.145.602-1.896.056-1.677-1.218z" fill-rule="evenodd"></path></svg></span><i>浏览量：'+find.article.readed+'</i></a></p>' +
                       '<div class="comment"><div class="answer" id="answer"><div class="main"><div class="media" style="margin-bottom:30px;"><div class="countCtm">' + find.comments.length + '条评论</div><div class="media-bottom"><div class="writeCmt"><input type="" class="form-control" name="content" style="display: inline-block; width: 90%;margin-bottom: 10px;" placeholder="写下你的评论"><button class="btn btn-primary addComment">评论</button></div></div></div></div></div></div></div></div></div>');
                   fit = document.querySelectorAll('#' + element + ' .content')[index].childNodes[2].childNodes[1].childNodes[0].childNodes[0].childNodes[0].childNodes[0];
                   for (var i = 0; i < find.comments.length; i++) {
                       updateTime = new Date(parseInt(find.comments[i][timeName])).format("yyyy-MM-dd hh:mm:ss")

                       $(fit).after('<div class="commentWrapper"><div class="media-left media-middle"><a href="./myIndex.html" style="font-size:16px; font-weight:normal;"><img class="media-object" src="images/avatar.jpg" width="25px" alt="..."><span class="username" style="font-size:16px;font-weight:normal;">' + find.comments[i].fromUserName + '</span></a></div><div class="media-body topic readBox"><span class="word">' + find.comments[i].content + '</span><p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span>' + updateTime + '</span></p></div></div>')
                   }

               } else {
                   updateTime = new Date(parseInt(find[timeName])).format("yyyy-MM-dd hh:mm:ss")
                   $('#' + element).append('<div class="content"><div class="topic"><a href="/question.html">' + find.title + '</a>' + '</div><p class="time">时间：<span>' + updateTime + '</span></p>')

               }
           })
       }

    }
</script>