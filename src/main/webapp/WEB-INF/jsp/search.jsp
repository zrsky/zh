<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>知乎首页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <%--<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}//images/favicon.ico"/>--%>


    <style type="text/css">
        body {
            background:#fff!important;
        }
        .search .searchList {
            padding: 0 200px;
        }

        .search .content {
            padding: 20px 0 10px 0;
            border-bottom: 1px solid #f0f2f7;
        }

        .search .content .topic .title {
            display: inline-block;
            width: 100%;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .search .content .topic a {
            font-size: 18px;
            font-weight: bold;
            color: #000;
        }

        .search .content .topic .word {
            color: #000;
            margin-top: 10px;
        }

        .search .content .topic .more {
            color: #777;
            text-decoration: underline;
            cursor: pointer;
        }

    </style>
</head>

<body>
<jsp:include page="top.jsp"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/find.css">
<!-- 版心 -->
<section class="search" id="searchContent">
    <div class="container searchList">
    </div>
</section>
<!-- /版心 -->
</body>

</html>
<script src="${pageContext.request.contextPath}/node_modules/jquery/dist/jquery.min.js "></script>
<script src="${pageContext.request.contextPath}/node_modules/bootstrap/dist/js/bootstrap.min.js "></script>
<script src="${pageContext.request.contextPath}/js/base.js "></script>
<script src="${pageContext.request.contextPath}/js/json.js"></script>
<script>
    $(function () {

        $('#searchContent .container').html("");
        getSearchArticleByKeyWord(getRequestUri().kw);
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



    //搜索

    function getSearchArticleByKeyWord(kw) {

        if (kw == "") {
            alert("请输入搜索的内容");
            //layer.msg("请输入搜索的内容");
            return;
        }

        $.ajax({
            url: '/getSearchArticleByKeyWord.action',
            type: 'post',
            data: {
                "key": kw
            },
            success: function (searchData) {
                console.log(searchData);
                var interfaces = ['/question.html', '/userIndex.html']
                for (var obj in searchData) {
                    console.log("次数");
                    if (obj == 'articles') {
                        search(searchData,obj, interfaces[0]);
                    } else if (obj == 'users') {
                        search(searchData,obj, interfaces[1]);
                    }
                    limit();
                }


                //问题列表渲染
                var updateTime, timeName = 'createTime', fit;

                //动态列表渲染
                function search(searchData, obj, interface) {
                    console.log(obj,searchData)
                    //渲染用户
                    if (obj == 'users' && searchData[obj] && searchData[obj].length) {
                        console.log(456)
                        searchData[obj].forEach(function (find, index) {

                            updateTime = new Date(parseInt(find[timeName])).format("yyyy-MM-dd HH:mm:ss");
                            $('#searchContent .container').append('<div class="media" style="margin-top:20px;"><div class="media-left media-middle" style="width:8%;display:inline-block;"><a href="/userInfo.html?id='+find.id+'"><img class="media-object" width="100%" src="images/avatar.jpg" alt="..."></a></div><div class="media-body" style="width:60%; padding-top:5px;"><a href="./myIndex.html"><h4 class="media-heading" style="color:#000;font-weight: bold;">' + find.username + '</h4></a><p style="font-weight: normal;font-size:16px;color:#777;"><i>1 </i><i>提问</i> • <i>2 </i><i>文章</i> • <i>2</i><i>关注者</i></p></div></div>');
                        })
                    } else if(obj == 'articles' &&  searchData[obj] && searchData[obj].length) {
                        console.log(789)
                        searchData[obj].forEach(function (find, index) {
                            updateTime = new Date(parseInt(find[timeName])).format("yyyy-MM-dd HH:mm:ss");
                            $('#searchContent .container').append('<div class="content"><div class="topic readBox"><a href="' + interface + '?id='+find.id+'&uid='+find.userId+'" class="title">' + find.title + '</a><a href="/question.html?id='+find.id+'&uid='+find.userId+'" style="font-size:16px; font-weight:normal;width:90%;display:inline-block;"><p class="word">' + find.content + '</p></a></div><p class="time">浏览量:'+find.readed+' ||  创建时间：<span>' + formatDate(find.createTime) + '</span> </p></div></div></div>');
                        })
                    }


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
        if(minutes< 10){
            minutes = "0" + minutes;
        }
        var seconds = date.getSeconds();
        if (seconds < 10) {
            seconds = "0" + seconds;
        }
        return year + "-" + month + "-" + day + " " + hours + ":" + minutes + ":" + seconds;
    };


</script>
<script src="${pageContext.request.contextPath}/js/find.js "></script>