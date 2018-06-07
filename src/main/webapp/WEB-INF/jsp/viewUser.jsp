<%--
  User: super
  Date: 2018/5/1
  Time: 17:14
--%>
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

<form class="layui-form">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-inline">
                <span class="layui-input">${u.username}</span>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-inline">
                <span class="layui-input"> ${u.sex}</span>
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">手机</label>
            <div class="layui-input-inline">
                <span class="layui-input">${u.mobile}</span>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">邮箱</label>
            <div class="layui-input-inline">
                <span class="layui-input"> ${u.email}</span>
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">收藏</label>
            <div class="layui-input-inline">
                <span class="layui-input">${u.liked}</span>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">关注</label>
            <div class="layui-input-inline">
                <span class="layui-input"> ${u.followed}</span>
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">职业</label>
            <div class="layui-input-inline">
                <span class="layui-input">${u.career}</span>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">注册</label>
            <div class="layui-input-inline">
                <span class="layui-input"> <fmt:formatDate value="${u.createTime}" pattern="yyyy-MM-dd"></fmt:formatDate> </span>
            </div>
        </div>
    </div>

</form>

</body>
</html>
