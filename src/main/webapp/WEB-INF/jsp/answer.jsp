<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>知乎首页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <%--<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico"/>--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/answer.css">
    <style>
        body {
            background: #fff!important;
        }
    </style>
</head>

<body>
<jsp:include page="top.jsp"/>
<!-- 版心 -->
<section id="answer">
    <div class="container" id="answerContainer">


    </div>
</section>
<!-- /版心 -->
</body>

</html>
<script src="${pageContext.request.contextPath}/node_modules/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script>
    $(function () {
        getQuestionList();
    })

    //动态：问题栏 ||| 提问
    function getQuestionList() {
        $.ajax({
            url: '/getQuestionList.action',
            success: function (data) {
                console.log(data);
                if (data.length > 0) {
                    var str = '';
                    for (var i = 0; i < data.length; i++) {
                        var ua = data[i];
                        str += '<div class="box" style="margin-top:10px;">' +
                            '                <div class="topic"><a href="/question.html?id='+ua.article.id+'&uid='+ua.user.id+'">' + ua.article.title + '</a></div>' +
                            '                <span> 问题发起人：'+ua.user.username+'<br/>提问日期:'+formatDate(ua.article.createTime)+'</span>' +
                            '            </div>';
                    }
                    $("#answerContainer").html(str);
                }

            }
        });
    };
    function formatDate(date) {
        date = new Date(date);
        var year = date.getUTCFullYear();
        var month = date.getUTCMonth() + 1;
        var day = date.getUTCDate();
        var hours = date.getHours();
        var minutes = date.getMinutes();
        var seconds = date.getSeconds();
        if (seconds < 0) {
            seconds = "0" + seconds;
        }
        return year + "-" + month + "-" + day + " " + hours + ":" + minutes + ":" + seconds;
    };
</script>