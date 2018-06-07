<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8"%>
<jsp:include page="top.jsp"/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>设置</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <%--<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico"/>--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/setting.css">
</head>

<body>

    <!-- 版心 -->
    <section class="content" id="info">
        <div class="container">
            <div class="account">
                <span>用户名:</span>
                <span>${user.username}</span>
            </div>
            <div class="password ">
                <span>手机号</span>
                <span>${user.mobile}</span>
            </div>
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary edit" data-toggle="modal" data-target="#myModal" id="modal">
                修改密码
            </button>

            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                                <button type="button" class="close" id="closeBtn" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h2 class="modal-title text-center" id="myModalLabel">修改</h2>
                            </div>
                        <div class="modal-body">
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label for="oldPwd" class="col-sm-2 control-label">旧密码</label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" id="oldPwd" placeholder="请输入原密码">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="newPwd" class="col-sm-2 control-label">新密码</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="newPwd" placeholder="请输入新密码">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="reNewPwd" class="col-sm-2 control-label">密码确认</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="reNewPwd" placeholder="请再次输入新密码">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <button type="button" class="btn btn-primary" onclick="updateUserPwdByUserId()">提交</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="bottom">
        <div class="container">
            <div class="footer">
                <p class="pull-left">© 2018 晓乎</p>
            </div>
        </div>
    </section>
    <!-- /版心 -->
</body>

</html>
<script src="${pageContext.request.contextPath}/node_modules/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/setting.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script>
    //修改密码
    function updateUserPwdByUserId(e){

        //判断是否为空
        var oldPwd = $("#oldPwd").val();
        var newPwd = $("#newPwd").val();
        var reNewPwd = $("#reNewPwd").val();
        if(oldPwd==""){
            layer.msg("原密码不能为空");
            return;
        }
        if(newPwd==""){
            layer.msg("新密码不能为空");
            return;
        }
        if(newPwd!=reNewPwd){
            layer.msg("新密码与确认密码不一致");
            return;
        }
        //不为空执行
        $.ajax({
            url:'/updateUserPwdByUserId.action',
            type:'post',
            data:{
                'id':${user.id},
                'oldPwd':oldPwd,
                'newPwd':newPwd

            },
            success:function (data) {
                $("#oldPwd").val();
                $("#newPwd").val();
                $("#reNewPwd").val();
                layer.msg(data.msg);
                $("#closeBtn").click();
            }
        })
    }

</script>