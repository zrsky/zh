<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>草稿</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <%--<link rel="shortcut icon" type="image/x-icon" href=".${pageContext.request.contextPath}/images/favicon.ico"/>--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/drafts.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layui/css/layui.css">
</head>

<body>
<div class="visible-md visible-lg nav">
    <div class="col-md-2 pull-left">
        <a href="/index.html">知</a>
    </div>
    <div class="col-md-8 article">
        <p>草稿</p>
    </div>
    <div class="col-md-2 pull-right">
        <a href="/article/writeArticle.html" class="layui-inline layui-btn layui-btn-radius  layui-btn-xs layui-btn-normal">写文章</a>
    </div>
</div>
<div class="content" id="draftsList">
    <div class="container">
    </div>
</div>
</body>

</html>
<script src="${pageContext.request.contextPath}/node_modules/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
<script src="${pageContext.request.contextPath}/js/base.js"></script>
<script src="${pageContext.request.contextPath}/js/json.js"></script>


<script>
    $(function () {
        getDraftsListByUserId();
    });
    var updateTime;
    function getDraftsListByUserId() {
        $.ajax({
            url: '/getDraftsListByUserId.action',
            data: {
                'pageNo': 1,
                'pageSie': 10
            },
            success: function (data) {
                console.log(data);
                if (data.length > 0) {
                    data.forEach(function (draft, index) {
                        updateTime = new Date(parseInt(draft.createTime)).format("yyyy-MM-dd hh:mm:ss");
                        $('#draftsList .container').append('<div class="box"><div class="topic"><a href="/question.html?id=' + draft.id + '&uid=' + '${user.id}' + '">' + draft.title + '</a></div><div class="middle readBox"><p class="word">' + draft.content + '</p></div><div class="bottom"><p style="font-weight: normal;font-size:14px;color:#BAB7B7;"><i>'+ updateTime +'</i> • <span class="edit" onClick="deleteDraft(' + draft.id + ')">删除</span><a href="javascript:;"><button style="margin-left:20px;" class="btn btn-primary" onClick="publishDraft(' + draft.id + ')">发布</button></a></p></div></div>')
                    })
                } else {
                    $(".container").html("暂无草稿信息");
                }
            }
        })

    }

    $(function () {
        $(".readBox").moreText({
            maxLength: 20, //默认最大显示字数，超过...
            mainCell: '.word' //文字容器
        });
    })

    function publishDraft(id) {
        $.ajax({
            url: '/publishDraft.action',
            type: 'post',
            data: {
                'id': id
            },
            success: function (data) {
                layer.msg(data.msg);
                setTimeout(function(){
                    window.location.href = "/index.html";
                },500)
            }
        })
    };

    function deleteDraft(id) {
        layer.confirm("确认删除吗？", function () {
            $.ajax({
                url: '/deleteDraftByArticleId.action',
                type: 'post',
                data: {
                    'id': id
                }, success: function (data) {
                    layer.msg(data.msg);
                    getDraftsListByUserId();
                }
            })
        });

    }
</script>