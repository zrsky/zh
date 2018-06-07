<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <link href="${pageContext.request.contextPath}/css/froala_editor.min.css" rel="stylesheet" type="text/css">
    <%--<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico" />--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/article.css">
    <link  rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <style>
    body {
        text-align: center;
    }

    section {
        width: 80%;
        margin: auto;
        text-align: left;
    }

    .froala-element {
        height: 300px;
    }

    #editor {
        margin-top: 100px;
        width: 60%;
    }

    .wordBox {
        margin-top: 10px;
        font-size: 20px;
    }

    .topic {
        border: 0;
        font-size: 32px;
        outline: 0;
        min-height: 44px;
        font-weight: bold;
        width: 100%;
        line-height: 44px;
        resize: none;
    }
    </style>
</head>

<body>
    <div class="visible-md visible-lg nav">
        <div class="col-md-2" style="text-align: left;">
            <a href="/index.html" style="">知</a>
        </div>
        <div class="col-md-8 article ">
            <p>写文章</p>
        </div>
        <div class="col-md-2 pull-right ">
            <a href="javascript:;" id="publish" class="layui-inline layui-btn layui-btn-radius layui-btn-xs layui-btn-normal" >
                立即发布
            </a>
            <a href="javascript:;" id="drafts" class="layui-inline layui-btn layui-btn-radius layui-btn-xs layui-btn-primary">存为草稿</a>
        </div>
    </div>
    <section id="editor">
        <textarea class="form-control" rows="1" id="title" placeholder="请输入标题"></textarea>
        <br>
        <textarea class="form-control" rows="15" id="content" placeholder="请输入内容"></textarea>
        <%--<div id='edit' style="margin-top: 30px;">
        </div>--%>
        <%--<div class="pull-right wordBox">
            <span class=" wordLength">0</span> / 字
        </div>--%>
    </section>
    <script src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/froala_editor.min.js"></script>
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}//js/froala_editor_ie8.min.js"></script>
  <![endif]-->
    <script src="${pageContext.request.contextPath}/js/plugins/tables.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/lists.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/colors.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/media_manager.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/font_family.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/font_size.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/block_styles.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/video.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>

    <script>
    $(function() {
        $('#edit').editable({ inlineMode: false, alwaysBlank: true })
        var elements;
        $(window).on("keyup", function(e) {
            elements = $(".froala-element p");
            // if (e.keyCode == 32 || e.keyCode == 13) {
            var wordLength = 0;
            for (var i = 0; i < elements.length; i++) {
                console.log(elements.length)
                wordLength += $(elements[i]).html().length;
                console.log(wordLength)
                $(".wordLength").html(wordLength);

            }
            // }
            e.cancelBubble = true;
            e.stopPropagation();
        })

    });
    </script>
</body>

</html>
<script>
    $("#publish").on("click",function () {
        var title =$("#title").val();
        var content = $("#content").val();
        if(title == ""){
            layer.msg("标题不可以为空");
            return;
        }
        if(content == ""){
            layer.msg("正文内容不可以为空");
            return;
        }
        $.ajax({
            url:'/publishArticle.action',
            type:'post',
            data:{
                'title':title,
                'content':content
            },success:function (data) {
                layer.msg(data.msg);
                if(data.status == 200){
                    window.location.replace("/index.html");
                }
            }
        });
    });
    $("#drafts").on("click",function () {
        var title =$("#title").val();
        var content = $("#content").val();
        if(title == ""){
            layer.msg("标题不可以为空");
            return;
        }
        if(content == ""){
            layer.msg("正文内容不可以为空");
            return;
        }
        $.ajax({
            url:'/publishDraftsArticle.action',
            type:'post',
            data:{
                'title':title,
                'content':content
            },success:function (data) {
                layer.msg(data.msg);
                if(data.status == 200){
                    window.location.replace("/drafts.html");
                }
            }
        });
    })



</script>