<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.mobile.css" media="all">
<script src="${pageContext.request.contextPath }/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">


<html>
<head>
    <title>Title</title>
</head>
<body>

<form class="layui-form" id="editUserForm">
    <input type="hidden" name="id" value="${u.id}">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" value="${u.username}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-inline">
                <input  type="text" name="sex" class="layui-input" value="${u.sex}">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">手机</label>
            <div class="layui-input-inline">
                <input type="text" id="mobile" name="mobile" class="layui-input" value="${u.mobile}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">邮箱</label>
            <div class="layui-input-inline">
                <input type="email" name="email" class="layui-input" value="${u.email}">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">职业</label>
            <div class="layui-input-inline">
                <input type="text" name="career" class="layui-input" value="${u.career}">
            </div>
        </div>

    </div>
    <span class="button layui-btn layui-btn-primary pull-right" id="editBtn" >提交</span>

</form>

</body>
</html>
<script src="${pageContext.request.contextPath}/node_modules/jquery/dist/jquery.min.js "></script>
<script>
    $("#editBtn").on("click",function () {
        var mobile = $("#mobile").val();
        if(mobile==""){
            layer.msg("手机号不能为空");
            return;
        }
        $.ajax({
            url:'/updateUserInfoByUserId.action',
            type:'post',
            data:$("#editUserForm").serialize(),
            success:function (data) {
                layer.msg(data.msg);
            }
        });
    })

</script>
