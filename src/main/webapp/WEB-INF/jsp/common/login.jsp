<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN" style="height: 100%; display: block">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>知乎 - 与世界分享你的知识，见解</title>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/registerLogin.css">
    <style>
        .logo1 {
            color: #3399ff!important;
            font-size: 80px;
            font-family: "宋体";
        }
    </style>
</head>
<body>
<div class="index-main">
    <div class="index-main-body">
        <div class="index-header">
            <h1 class="logo1">小乎</h1>
            <h2 class="subtitle">与世界分享你的知识，经验和见解</h2>
        </div>
        <div class="sign-flow">
            <div class="sign-nav" data-index="0">
                <div class="nav-slider" style="display: inline-block; position: relative">
                    <%--<a href="#signup" id="reg" class="active">注册</a>
                    <a href="#signin" id="log" >登录</a>--%>
                    <a href="javascript:;" id="reg" class="active">注册</a>
                    <a href="javascript:;" id="log">登录</a>
                    <span class="nav-slider-bar"></span>
                </div>
            </div>
            <div class="sign-login" id="logDiv" style="display: none">
                <form novalidate="novalidate">
                    <div class="group-input">
                        <div class="email input-wrapper">
                            <input type="text" id="logAccount" name="account" placeholder="手机号" required>
                        </div>
                        <div class="pwd input-wrapper">
                            <input type="password" id="logPwd" name="password" placeholder="密码" required>
                        </div>
                        <%--<div class="captcha-module input-wrapper">--%>
                            <%--<input class="captcha" name="captcha" placeholder="验证码" required>--%>
                            <%--<canvas id="captchaLogin" width="120px" height="30px"></canvas>--%>
                        <%--</div>--%>
                    </div>
                    <div class="button-wrapper">
                        <button class="sign-btn" id="logSubmitBtn" type="button">登录</button>
                    </div>
                    <div class="signin-misc-wrapper clearFix">
                        <%--<label class="remember-me">--%>
                            <%--<input type="checkbox" name="remember-me" checked>--%>
                            <%--记住我--%>
                        <%--</label>--%>
                        <%--<a href="#" class="unable-login">无法登录？</a>--%>
                    </div>
                    <%--<div class="weibo-signup-wrapper">--%>
                        <%--<span class="js-toggle-sns-btn">社交账号登录</span>--%>
                        <%--<div class="sns-btn">--%>
                            <%--<a href="#" title="微信登录"><i class="sprite-sns-wechat"></i></a>--%>
                            <%--<a href="#" title="微博登录"><i class="sprite-sns-weibo"></i></a>--%>
                            <%--<a href="#" title="QQ登录"><i class="sprite-sns-qq"></i></a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                </form>
                <div class="QRCode">
                    <button class="QRCode-toggle">下载知乎APP</button>
                    <div class="QRCode-card">
                        <div class="QRCode-image"></div>
                    </div>
                </div>
            </div>
            <div class="sign-lognup" id="regDiv" style="display: block">
                <form novalidate="novalidate">
                    <div class="group-input">
                        <div class="name input-wrapper">
                            <input type="text" id="regUsername" name="username" placeholder="姓名" required>
                        </div>
                        <div class="email input-wrapper">
                            <input type="text" id="regAccount" name="account" placeholder="手机号（仅支持中国大陆）" required>
                        </div>
                        <div class="pwd input-wrapper">
                            <input type="password" id="regPwd" name="password" placeholder="密码" required>
                        </div>
                        <%--<div class="captcha-module input-wrapper">--%>
                            <%--<input class="captcha" name="captcha" placeholder="验证码" required>--%>
                            <%--<canvas id="captchaSignup" width="120px" height="30px"></canvas>--%>
                            <%--<!--<div class="captcha-container">-->--%>
                            <%--<!--<img src="img/captcha.gif" width="120px" height="30px">-->--%>
                            <%--<!--</div>-->--%>
                        <%--</div>--%>
                    </div>
                    <div class="button-wrapper">
                        <button class="sign-btn" id="regSubmitBtn" type="button">注册知乎</button>
                    </div>
                </form>
                <div class="QRCode">
                    <button class="QRCode-toggle">下载知乎APP</button>
                    <div class="QRCode-card">
                        <div class="QRCode-image"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--<div class="footer">
    <div>
        <a target="_blank" href="https://zhuanlan.zhihu.com/">知乎专栏</a>
        <span class="dot">·</span>
        <a target="_blank" href="https://www.zhihu.com/roundtable">知乎圆桌</a>
        <span class="dot">·</span>
        <a target="_blank" href="https://www.zhihu.com/explore">发现</a>
        <span class="dot">·</span>
        <a target="_blank" href="https://www.zhihu.com/app/">移动应用</a>
        <span class="dot">·</span>
        <a target="_blank" href="https://www.zhihu.com/contact">联系我们</a>
        <span class="dot">·</span>
        <a target="_blank" href="http://zhihu.zhiye.com/home">来知乎工作</a>
    </div>
    <div>
        <span>@2017知乎</span>
        <span class="dot">.</span>
        <a target="_blank" href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action;jsessionid=BbTSsbXt6VMCQrKuQxYhzoGczTYLaBCkKn9hgE81rF0yBCNHsz8K!-45393565">京ICP证110745号</a>
        <span class="dot">.</span>
        <span>京公网安备11010802010035号</span>
        <span class="dot">.</span>
        <a target="_blank" href="http://zhstatic.zhihu.com/assets/zhihu/publish-license.jpg">出版物经营许可证</a>
    </div>
    <div>
         <a target="_blank" href="https://zhuanlan.zhihu.com/p/28852607">侵权举报</a>
        <span class="dot">·</span>
        <a target="_blank" href="http://www.12377.cn/">网上有害信息举报专区</a>
        <span class="dot">·</span>
        <a target="_blank" href="https://www.zhihu.com/jubao">儿童色情信息举报专区</a>
        <span class="dot">·</span>
        <span>违法和不良信息举报:010-82716601</span>
    </div>
</div>--%>
<canvas id="canvas" style="position: absolute; top: 0; left: 0; z-index: -99"></canvas>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/node_modules/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
<link href="${pageContext.request.contextPath}/layui/css/layui.css">
<%--<script type="text/javascript">
    function stopBubble(e) {
        if(e && e.stopPropagation()){
            e.stopPropagation();
        }
        else{
            window.event.cancelBubble = true;
        }
    }
    var canvas = document.getElementById("canvas");
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
    var ctx = canvas.getContext('2d');
    function rand(min, max) {
        return parseInt(Math.random()*(max - min) + min);
    }
    function Round() {
        /*半径*/
        this.r = rand(5, 15);
        var speed = rand(1, 3);
        this.speedX = rand(0, 4) > 2 ? speed: -speed;
        this.speedY = rand(0, 4) > 2 ? speed: -speed;
        var x = rand(this.r, canvas.width - this.r);
        this.x = x < this.r ? this.r : x;
        var y = rand(this.r, canvas.height - this.r);
        this.y = y < this.y ? this.r : y;
    }
    Round.prototype.draw = function () {
        ctx.fillStyle = 'rgba(200, 200, 200, 0.2)';
        ctx.beginPath();
        ctx.arc(this.x, this.y, this.r, 0, 2* Math.PI, true);
        ctx.closePath();
        ctx.fill();
    }
    Round.prototype.move = function () {
        this.x += this.speedX/10;
        if(this.x > canvas.width || this.x < 0){
            this.speedX *= -1;
        }
        this.y += this.speedY/10;
        if(this.y > canvas.height || this.y < 0){
            this.speedY *= -1;
        }
    }
    Round.prototype.links = function () {
        for(var loop = 0; loop < setBall.length; loop++){
            var len = Math.sqrt(((this.x - setBall[loop].x)*(this.x - setBall[loop].x)) + ((this.y-setBall[loop].y)*(this.y-setBall[loop].y)));
            var line = 1/len * 2;
            if(len < 250){
                ctx.beginPath();
                ctx.strokeStyle = 'rgba(0, 0, 0, '+ line + ')';
                ctx.moveTo(this.x, this.y);
                ctx.lineTo(setBall[loop].x, setBall[loop].y);
                ctx.stroke();
                ctx.closePath();
            }
        }
    }
    var setBall = [];
    function init() {
        for(var num = 0; num < 50; num++){
            var obj = new Round();
            obj.draw();
            obj.move();
            setBall.push(obj);
        }
    }
    function ballMove() {
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        for(var i = 0; i < setBall.length; i++){
            var ball = setBall[i];
            ball.draw();
            ball.move();
            ball.links();
        }
        requestAnimationFrame(ballMove);
    }
    window.onload = function () {
        init();
        requestAnimationFrame(ballMove);
        window.captchaLogin = drawPic('captchaLogin');
        window.captchaSignup = drawPic('captchaSignup');
    }

    var animationEnd = (function () {
        var explorer = navigator.userAgent.toLowerCase();
        if(explorer.indexOf('chrome') != -1){
            return 'webkitTransitionEnd';
        }
        else if(explorer.indexOf("firefox") != -1){
            return 'transitionend';
        }
    })();
    var snsVisible = false;
    $(".js-toggle-sns-btn").click(function () {
        if(!snsVisible){
            $('.sns-btn').addClass('sns-visible');
            $('.sns-btn').css("visibility", "visible");
            snsVisible = true;
        }
        else{
            $('.sns-btn').removeClass('sns-visible').on(animationEnd, function () {
                $('.sns-btn').css("visibility", "hidden");
                snsVisible = false;
                $(this).off();
            })
        }
    })
    var navSlideIndex = 0;
    $('.nav-slider a:first').click(function () {
        if(navSlideIndex == 1){
            $(this).addClass('active');
            $('.sign-nav').attr("data-index", "0");
            $('.nav-slider a:last').removeClass('active');
            $('.sign-login').css('display', 'none');
            $('.sign-lognup').css('display', 'block');
            navSlideIndex = 0;
        }
    })
    $('.nav-slider a:last').click(function () {
        if(navSlideIndex == 0){
            $(this).addClass('active');
            $('.sign-nav').attr("data-index", "1");
            $('.nav-slider a:first').removeClass('active');
            $('.sign-login').css('display', 'block');
            $('.sign-lognup').css('display', 'none');
            navSlideIndex = 1;
        }
    })


    // 注册
    $('.sign-lognup .email input').focus(function(){
        $(this).next().remove();
    })
    $('.sign-lognup .pwd input').focus(function(){
        $(this).next().remove();
    })
    $('.sign-lognup .captcha-module input').focus(function(){
        $(this).parent().find('label').remove();
    })
    $('.sign-lognup button.sign-btn').click(function(){
        var name = $('.sign-lognup').find("input[name='name']").val();
        var account = $('.sign-lognup').find("input[name='account']").val();
        var password = $('.sign-lognup').find("input[name='password']").val();
        var captcha = $('.sign-lognup').find("input[name='captcha']").val();

        // 显示手机号已注册
        function accountExistWarnShow(){
            $('.sign-lognup .email').append("<label class='error'>该手机号已注册</label>");
        };
        // 手机格式不对
        function phoneErrorShow(){
            $('.sign-lognup .email').append("<label class='error'>请输入一个手机号码</label>");
        };
        // 显示手机号已注册
        function pwdLenErrorShow(){
            $('.sign-lognup .pwd').append('<label class="error">请输入6-22位的密码</label>');
        };
        function captchaErrorShow(){
            $('.sign-lognup .captcha-module').append('<label class="error">请提交正确的验证码:(</label>');
        };

//        if(captcha != window.captchaSignup){
//            captchaErrorShow();
//            return;
//        }
        $.ajax({
            type: 'POST',
            url: '/register.action',
            data: {
                username: name,
                mobile: account,
                password: password
            },
            dataType: 'JSON',
            success: function(data){
                alert(data.msg);

            }

        })
    })

    // 登录
    $('.sign-login .email input').focus(function(){
        $(this).next().remove();
    })
    $('.sign-login .pwd input').focus(function(){
        $(this).next().remove();
    })
    $('.sign-login .captcha-module input').focus(function(){
        $(this).parent().find('label').remove();
    })
    $('.sign-login button.sign-btn').click(function(){
        var account = $('.sign-login').find("input[name='account']").val();
        var password = $('.sign-login').find("input[name='password']").val();
        var captcha = $('.sign-login').find("input[name='captcha']").val();
        function accountNotExistShow(){
            $('.sign-login .email').append("<label class='error'>该账户不存在</label>");
        };
        function accountPwdErrorShow(){
            $('.sign-login .pwd').append("<label class='error'>账号或密码错误</label>");
        };
        function captchaErrorShow(){
            $('.sign-login .captcha-module').append('<label class="error">请提交正确的验证码 :(</label>');
        };
        function captchaErrorShow(){
            $('.sign-login .captcha-module').append('<label class="error">请提交正确的验证码:(</label>');
        };

//调试时注释
//        if(captcha != window.captchaLogin){
//            captchaErrorShow();
//            return;
//        }
        $.ajax({
            type: 'POST',
            url: '/to_login.action',
            data: {
                mobile: account,
                password: password
            },
            dataType: 'JSON',
            success: function(data){
                if(data){
                    accountNotExistShow();
                }
                else if(data){
                    accountPwdErrorShow();
                }
                else{
                    console.log('success');
                    window.location.href = "./index.html";
                }
            },
            error: function(data){
                console.log('error');
            }
        })
    })

    // update when click
    $('#captchaSignup').click(function(){
        window.captchaSignup = drawPic('captchaSignup');
    })
    $('#captchaLogin').click(function(){
        window.captchaLogin = drawPic('captchaLogin');
    })

    // 图片验证码开始 前端
    function randomNum(min, max){
        return Math.floor(Math.random() * (max - min) + min);
    }
    function randomColor(min, max){
        var r = randomNum(min, max);
        var g = randomNum(min, max);
        var b = randomNum(min, max);
        return "rgb(" + r + "," + g + "," + b + ")";
    }

    // 注册，登录Form编写验证码
    function drawPic(canvasId){
        var canvas = document.getElementById(canvasId);
        var width = canvas.width;
        var height = canvas.height;
        var ctx = canvas.getContext('2d');
        var result = "";

        ctx.fillStyle = randomColor(180, 240);
        ctx.fillRect(0, 0, width, height);

        var str = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        for(var i = 0; i < 4; i++){
            var txt = str[randomNum(0, str.length)];
            result = result.concat(txt);
            ctx.fillStyle = randomColor(50, 160);
            ctx.font = randomNum(15, 30) + 'px SimHei';
            var x = 10 + i * 25;
            var y = randomNum(15, 25);
            var deg = randomNum(-45, 45);

            ctx.translate(x, y);   // 设置原点位置
            ctx.rotate(deg * Math.PI/180);
            ctx.fillText(txt, 0, 0);
            ctx.rotate(-deg * Math.PI/180);
            ctx.translate(-x, -y);
        }

        for(var i = 0; i < 4; i++){
            ctx.strokeStyle = randomColor(40, 180);
            ctx.beginPath();
            ctx.moveTo(randomNum(0, width), randomNum(0, height));
            ctx.lineTo(randomNum(0, width), randomNum(0, height));
            ctx.stroke();
        }

        for(var i = 0; i < 16; i++){
            ctx.fillStyle = randomColor(0, 255);
            ctx.beginPath();
            ctx.arc(randomNum(0, width), randomNum(0, height), 1, 0, 2 * Math.PI);
            ctx.fill();
        }

        return result;
    }

</script>--%>
<script>
    var QRCodeVisible = false;
    $('.QRCode-toggle').click(function (event) {
        if(!QRCodeVisible){
            console.log("show")
            $(this).html("关闭二维码");
            $('.QRCode-card').addClass('QRCode-visible').css("visibility", "visible");
            QRCodeVisible = true;
        }
        else{
            console.log("hidden")
            $(this).html("下载知乎APP");
            $('.QRCode-card').removeClass('QRCode-visible').on(animationEnd, function () {
                $('.QRCode-card').css('visibility', 'hidden');
                QRCodeVisible = false;
                $('.QRCode-card').off();
            })
        }
        stopBubble(event);
    })

    $('body').click(function () {
        if(QRCodeVisible){
            $('.QRCode-toggle').html("下载知乎APP");
            $('.QRCode-card').removeClass('QRCode-visible').on(animationEnd, function () {
                $('.QRCode-card').css('visibility', 'hidden');
                QRCodeVisible = false;
                $('.QRCode-card').off();
            })
        }
    })
    function stopBubble(e) {
        if(e && e.stopPropagation()){
            e.stopPropagation();
        }
        else{
            window.event.cancelBubble = true;
        }
    }
    var animationEnd = (function () {
        var explorer = navigator.userAgent.toLowerCase();
        if(explorer.indexOf('chrome') != -1){
            return 'webkitTransitionEnd';
        }
        else if(explorer.indexOf("firefox") != -1){
            return 'transitionend';
        }
    })();

    $("#reg").on("click", function () {
        $("#regDiv").show();
        $("#reg").removeClass().addClass("active");
        $("#log").removeClass();
        $("#logDiv").hide();
        $(".nav-slider-bar").css({"left":"0px"})
    });
    $("#log").on("click", function () {
        $("#reg").removeClass();
        $("#log").removeClass().addClass("active");
        $("#regDiv").hide();
        $("#logDiv").show();
        $(".nav-slider-bar").css({"left":"72px"})
    });
    $("#regSubmitBtn").on("click", function (e) {
        e.preventDefault();
        var username = $("#regUsername").val();
        var account = $("#regAccount").val();
        var password = $("#regPwd").val();
        if (username == "") {
            layer.msg("姓名不能为空");
            return;
        }
        if (account == "") {
            layer.msg("手机号不能为空");
            return;
        } else if(!/^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$/.test(account)){
            layer.msg("手机号格式不正确");
            return;
        }
        if (password == "") {
            layer.msg("密码不能为空");
            return;
        }
        $.ajax({
            url: '/register.action',
            type: 'post',
            dataType: 'json',
            data: {
                "username": username,
                "account": account,
                "password": password
            },
            success: function (data) {
                layer.msg(data.msg);
                if (data.status == 200) {
                    $("#regDiv").hide();
                    $("#logDiv").show();
                    $(".nav-slider-bar").css({"left":"72px"})
                }
                $("#reg").removeClass();
                $("#log").removeClass().addClass("active");
                $("#regUsername").val("");
                $("#regAccount").val("");
                $("#regPwd").val("");

            }
        })
    });
    $("#logSubmitBtn").on("click", function (e) {
        e.preventDefault();
        var account = $("#logAccount").val();
        var password = $("#logPwd").val();
        if (account == "") {
            layer.msg("手机号不能为空");
            return;
        } else if(!/^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$/.test(account)){
            layer.msg("手机号格式不正确");
            return;
        }
        if (password == "") {
            layer.msg("密码不能为空");
            return;
        }
        $.ajax({
            url: '/to_login.action',
            type: 'post',
            data: {
                "account": account,
                "password": password
            },
            success: function (data) {
                layer.msg(data.msg);
                if (data.status == 200) {
                   setTimeout(function(){
                       window.location.replace("/index.html");
                   },1000);
                }

            }
        });
    })
</script>

</html>