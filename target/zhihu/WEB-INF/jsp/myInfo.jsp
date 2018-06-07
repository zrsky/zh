<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8" %>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>个人主页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <%--<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico"/>--%>
    <%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/myIndex.css">--%>
    <style>
        .info {
            display:none;
        }
        i {
            font-style: normal;
        }
        a {
            color: #777;
        }

        a:link {
            text-decoration: none;
        }

        a:hover {
            text-decoration: none;
        }
        a:active {
            text-decoration: none;
        }
        a:visited {
            text-decoration: none;
        }
        i {
            cursor: pointer;
        }

        .container {
            padding-left: 60px;
            padding-right: 60px;
        }

        body {
            background: #F1F1F1;
        }

        /*导航*/

        .navbar {
            background-color: #fff;
            box-shadow: 0px 2px 5px #EAE8E8;
        }

        .navigator .setting {
            margin-top: -5px;
        }

        .Icon {
            fill: #9fadc7;
            vertical-align: text-bottom;
            margin-right: 6px;
        }

        .navbar-right .dropdown-menu {
            right: 0;
            left: 50%;
            margin-left: -74px;
        }

        .navigator .nav li.message {
            position: relative;
        }

        .navigator .nav .message .num {
            font-style: normal;
            color: red;
            position: absolute;
            left: 30px;
            top: 7px;
        }

        .navbar-default .navbar-nav > .active > a,
        .navbar-default .navbar-nav > .active > a:focus,
        .navbar-default .navbar-nav > .active > a:hover {
            color: #000;
            background-color: #fff;
        }

        a.lg {
            position: relative;
        }

        a.lg svg {
            position: absolute;
            top: 4px;
            left: 18px;
        }

        a.lg span.ano {
            position: relative;
            top: 1px;
            left: 21px;
        }

        /*/导航*/
        /*版心*/
        .content .top {
            border: 1px solid #f0f2f7;
            box-shadow: 0px 2px 5px #EAE8E8;
            height: 354px;
            background: #fff;
            position: relative;
        }

        .content .top .image {
            border: 1px solid #f0f2f7;
            box-shadow: 0px 2px 5px #EAE8E8;
            height: 240px;
            background-color: #8EA5CB;
        }

        .content .top .image div {
            display: inline-block;
            border-radius: 2px;
            margin-left: 900px;
            margin-top: 20px;
        }

        .content .top .image .file {
            width: 73px;
            position: absolute;
            top: 32px;
            right: 50px;
        }

        .content .top .media {
            overflow: visible;
            position: relative;
        }

        .content .top .media img {
            position: absolute;
            top: -90px;
            left: 56px;
        }

        .content .top .media .media-body {
            position: absolute;
            top: 5px;
            left: 245px;
        }

        .content .top .media .media-right {
            position: absolute;
            top: 35px;
            right: 90px;
        }

        /*选项卡*/
        .middle {
            margin-top: 10px;
            border: 1px solid #f0f2f7;
            box-shadow: 0px 2px 5px #EAE8E8;
            background: #fff;
        }

        .middle i {
            cursor: pointer;
        }

        .middle_right {
            margin-top: 10px;
            width: 27%;
        }

        .middle_right .middle_right_top {

            border: 1px solid #f0f2f7;
            box-shadow: 0px 2px 5px #EAE8E8;
            background: #fff;
            height: 100px;
            padding: 23px 0;
        }

        .middle_right .left {
            border-right: 1px solid #f0f2f7
        }

        .middle_right {
            text-align: center;
        }

        .middle_right div {
            padding: 0;
        }

        .middle_right div span {
            color: #000;
        }

        .middle_right .middle_right_mid .mid_view {
            margin-top: 8px;
            border-top: 1px solid #e6e6e6;
            border-bottom: 1px solid #e6e6e6;
            padding: 10px;
        }

        .middle_right .middle_right_footer {
            margin-top: 20px;
        }

        .middle_right .middle_right_footer p {
            line-height: 25px;
            text-align: left;
        }

        /*bootstrap*/
        .nav-tabs {
            border-bottom: 1px solid #f0f2f7;
        }

        .nav-tabs > li {
            float: left;
            margin-bottom: -1px;
            margin-right: 10px;
        }

        .nav-tabs > li > a {
            margin-right: 2px;
            line-height: 1.42857143;
            border: 1px solid transparent;
            border-radius: 4px 4px 0 0;
            color: #555;
            font-size: 18px;
        }

        .nav-tabs > li > a span {
            margin-left: 6px;
        }

        .nav-tabs > li > a:hover {
            background-color: #fff;
            border-color: transparent;
        }

        .nav-tabs > li.active > a,
        .nav-tabs > li.active > a:hover,
        .nav-tabs > li.active > a:focus {
            color: #000;
            cursor: default;
            background-color: #fff;
            border: none;
            border-bottom: 3px solid blue;
            box-sizing: border-box;
        }

        .tab-content {
            padding: 0 20px;
        }

        .tab-content .state {
            border-bottom: 1px solid #f0f2f7;
            padding: 15px 0;
            font-size: 16px;
            font-weight: bold;
        }

        .tab-content .content {
            padding: 20px 0 10px 0;
            border-bottom: 1px solid #f0f2f7;
        }

        .tab-content .content p {
            font-size: 16px;
            color: #A3A0A0;
        }

        .tab-content .content .topic .img {
            margin: 15px 0;
        }

        .tab-content .content .topic a {
            font-size: 18px;
            font-weight: bold;
            color: #000;
        }

        .tab-content .content .topic .word {
            color: #000;
            margin-top: 10px;
        }

        .tab-content .content .topic .more {
            color: #777;
            text-decoration: underline;
            cursor: pointer;
        }

        .tab-content .content .time {
            margin-top: 20px;
            margin-bottom: 0;
        }

        .middle.pull-left {
            width: 72%;
        }

        .middle .content .bottom {
            margin-top: 10px;
            margin-bottom: -10px;
        }

        .middle .content .bottom p {
            vertical-align: middle;
            color: #777;
        }

        .middle .content .bottom span {
            display: inline-block;
            vertical-align: middle;
            padding-top: 2px;
        }

        .middle .content .bottom i {
            margin-right: 15px;
        }

        .middle .content .bottom b {
            font-weight: normal;
        }

        .info .top {
            border: 1px solid #f0f2f7;
            box-shadow: 0px 2px 5px #EAE8E8;
            height: 354px;
            background: #fff;
            border-bottom: 0;
        }

        .info .top .image {
            border: 1px solid #f0f2f7;
            box-shadow: 0px 2px 5px #EAE8E8;
            height: 240px;
            background-color: #8EA5CB;
        }

        .info .top .image div {
            display: inline-block;
            border-radius: 2px;
            margin-left: 900px;
            margin-top: 20px;
        }

        .info .top .image .file {
            width: 73px;
        }

        .info .top .media {
            overflow: visible;
            position: relative;
        }

        .info .top .media img {
            position: absolute;
            top: -90px;
            left: 56px;
        }

        .info .top .media .media-body {
            position: absolute;
            top: 5px;
            left: 245px;
        }

        .info .top .media .media-right {
            position: absolute;
            top: 35px;
            right: 90px;
        }

        .info .top .media .mask {
            background: #000;
            opacity: .4;
            position: absolute;
            top: -90px;
            left: 56px;
            width: 168px;
            height: 168px;
        }

        .info .top .media .upload {
            position: absolute;
            top: -90px;
            left: 56px;
            overflow: hidden;
            width: 168px;
            height: 168px;
            text-align: center;
            line-height: 168px;
        }

        .info .top .media .upload input {
            opacity: 0;
            width: 100%;
            height: 100%;
            position: absolute;
            z-index: 10;
        }

        .UserAvatarEditor-cameraIcon {
            margin-bottom: 14px;
            fill: #fff;
        }

        .info .top .media .upload p {
            position: absolute;
            top: 13%;
            left: 26%;
            color: #fff;
            font-size: 16px;
        }

        .info .middle {
            background: #fff;
            border: 1px solid #f0f2f7;
            box-shadow: 0px 2px 5px #EAE8E8;
            height: 1000px;
            margin-top: 0;
            border-top: none;
        }

        .info .middle .box {
            margin-left: 200px;
        }

        .info .middle .box > div {
            border-bottom: 1px solid #f0f2f7;
            height: 100px;
            line-height: 91px;
        }

        .info .middle .box > div > p:nth-of-type(2) input {
            display: none;
        }

        .info .middle .box > div > p:nth-of-type(2) span:nth-child(3) {
            color: #91CEF3;
            cursor: pointer;
        }

        .info .middle .form-control {
            display: inline-block;
            width: 56%;
            margin-right: 13px;
            height: 34px;
        }

        /*#content,.info {*/
        /*display: none;*/
        /*}*/

        .comment .content {
            margin-top: 10px;
            background-color: #fff;
            box-shadow: 0px 1px 1px #EAE8E8;
            border: 1px solid #EAE8E8;
            padding: 15px;
        }

        .comment .content .media .form-control {
            resize: none;
            margin-left: -45px;
            display: block;
            width: 60%;
            height: auto;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }

        .media-body {
            position: relative;
            display: inline-block;
        }

        .comment .content {
            display: none;
        }

        .comment .content .media #submit1 {
            left: 60%;
            margin-left: -157px;
            top: 110px;
            position: absolute;
        }

        .comment .answer .main .media {
            margin-top: 10px;
            background: #fff;
            border: 1px solid #F1EFEF;
            border-radius: 3px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, .1);
            font-size: 16px;
            padding: 20px 20px 0px 20px;
            display: block;
        }

        .comment .answer .main .media .media-middle {
            vertical-align: inherit;
        }

        .comment .answer .main .media .from {
            color: #777;
            margin-bottom: 9px;
            display: inline-block;
        }

        .comment .answer .main .media .media-object {
            display: inline-block;
        }

        .comment .answer .main .media .username {
            color: #000;
            font-size: 20px;
            margin-left: 5px;
            font-weight: bold;
        }

        .comment .answer .main .media .media-body {
            margin: 15px 0;
        }

        .comment .answer .main .media .media-body h4 {
            margin-bottom: 10px;
        }

        .comment .answer .main .media .media-body .more {
            color: #777;
            text-decoration: underline;
        }

        .comment .answer .main .media .media-heading {
            font-weight: bold;
        }

        .comment .answer .main .media .media-body, .media-left, .media-right {
            display: block;
        }

        .media-body, .media {
            width: 100%;
        }

        .comment .answer .main .media .media-bottom p {
            vertical-align: middle;
            color: #777;
        }

        .comment .answer .main .media .media-bottom span {
            display: inline-block;
            vertical-align: middle;
            padding-top: 2px;
        }

        .comment .answer .main .media .media-bottom i {
            margin-right: 15px;
        }

        .comment .answer .main .media .media-bottom b {
            font-weight: normal;
        }

        .comment {
            display: none;
        }

        .comment .countCtm {
            border-bottom: 1px solid #f0f2f7;
            height: 30px;
            font-size: 18px;
        }

        .comment .media-left {
            margin-top: 10px;
        }

        .comment .writeCmt {
            display: inline-block;
            border-top: 1px solid #f0f2f7;
            padding: 10px 0;
            width: 100%;
        }

        .comment .writeCmt input, .comment .huifuInput input {
            width: 80%;
            display: inline-block;
        }

        .comment .delete {
            display: inline;
        }

        .comment .delete:hover .Icon, .comment .delete:hover i {
            fill: blue;
            color: blue;
            cursor: pointer;
        }

        .comment .huifuInput {
            display: none;
            width: 100%;
        }

        .active {
            display: block;
        }

        .comment .answer .active {
            display: inline-block;
        }

        .form-horizontal .form-group {
            margin-right: -15px;
            margin-left: -15px;
            width: 80%;
            margin: auto;
        }

        .top .media .modal-title {
            text-align: center;
            color: #000;
        }

        .care ul li a {
            font-weight: normal;
            font-size: 16px;
        }

        .care_he {
            background: #ccc;
            border-color: transparent;
        }

        .btn:focus {
            outline: none;
            outline-offset: 0px;
        }

        .edit {
            cursor: pointer;
        }

        .edit:hover {
            color: #8BA7F5;
        }

    </style>
</head>
<body>
<!-- 导航 -->
<div class="navigator">
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="./index.html"><img src="images/logo.png" width="60px" style="margin-top:-3px;"></a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/index.html">首页<span class="sr-only">(current)</span></a></li>
                        <li class="active"><a href="/find.html">发现<span class="sr-only">(current)</span></a></li>
                    </ul>
                    <form class="navbar-form navbar-left">
                        <div class="form-group">
                            <input type="text" id="searchKeyWord" class="form-control" placeholder="搜索你感兴趣的内容">
                            <a href="jsvascript:;" onclick="getSearchArticleByKeyWord()" class="btn btn-primary">搜一搜</a>
                        </div>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="message">
                            <a href="#">
                                <svg viewBox="0 0 20 22" class="Icon Icon--news" width="20" height="20" aria-hidden="true" style="height: 20px; width: 20px;">
                                    <title></title>
                                    <g>
                                        <path d="M2.502 14.08C3.1 10.64 2 3 8.202 1.62 8.307.697 9.08 0 10 0s1.694.697 1.797 1.62C18 3 16.903 10.64 17.497 14.076c.106 1.102.736 1.855 1.7 2.108.527.142.868.66.793 1.206-.075.546-.542.95-1.09.943H1.1C.55 18.34.084 17.936.01 17.39c-.075-.547.266-1.064.794-1.206.963-.253 1.698-1.137 1.698-2.104zM10 22c-1.417.003-2.602-1.086-2.73-2.51-.004-.062.02-.124.063-.17.043-.045.104-.07.166-.07h5c.063 0 .124.025.167.07.044.046.067.108.063.17-.128 1.424-1.313 2.513-2.73 2.51z"></path>
                                    </g>
                                </svg>
                                <i class="num">1</i>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img class="setting" width="30px" height="30px" src="images/avatar.jpg">${user.username}</a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="/userInfo.html?id=${user.id}" target="_blank">
                                        <svg viewBox="0 0 20 20" class="Icon Button-icon Icon--profile" width="14" height="16" aria-hidden="true" style="height: 16px; width: 14px;">
                                            <title></title>
                                            <g>
                                                <path d="M13.4170937,10.9231839 C13.0412306,11.5757324 12.5795351,12.204074 12.6542924,12.7864225 C12.9457074,15.059449 18.2164534,14.5560766 19.4340179,15.8344151 C20,16.4286478 20,16.4978969 20,19.9978966 C13.3887136,19.9271077 6.63736785,19.9978966 0,19.9978966 C0.0272309069,16.4978969 0,16.5202878 0.620443914,15.8344151 C1.92305664,14.3944356 7.20116276,15.1185829 7.40016946,12.7013525 C7.44516228,12.1563518 7.02015319,11.5871442 6.63736814,10.9228381 C4.51128441,7.2323256 3.69679769,4.67956187e-11 10,9.32587341e-14 C16.3032023,-4.66091013e-11 15.4216968,7.4429255 13.4170937,10.9231839 Z"></path>
                                            </g>
                                        </svg>
                                        我的主页</a>
                                </li>
                                <li>
                                    <a href="/setting.html">
                                        <svg viewBox="0 0 20 20" class="Icon Button-icon Icon--setting" width="14" height="16" aria-hidden="true" style="height: 16px; width: 14px;">
                                            <title></title>
                                            <g>
                                                <path d="M18.868 15.185c-.164.096-.315.137-.452.137-.123 0-1.397-.26-1.617-.233-1.355.013-1.782 1.275-1.836 1.74-.055.454 0 .893.19 1.304.138.29.125.577-.067.85-.863.893-2.165 1.016-2.357 1.016-.123 0-.247-.055-.356-.15-.11-.097-.685-1.14-1.07-1.47-1.303-.954-2.246-.328-2.63 0-.397.33-.67.7-.835 1.126-.07.18-.18.302-.33.37-1.354.426-2.918-.92-3.014-1.056-.082-.11-.123-.22-.123-.356-.014-.138.383-1.276.342-1.688-.342-1.9-1.836-1.687-2.096-1.673-.303.014-.604.068-.92.178-.205.056-.396.03-.588-.054-.888-.462-1.137-2.332-1.11-2.51.055-.315.192-.52.438-.604.425-.164.81-.452 1.15-.85.932-1.262.344-2.25 0-2.634-.34-.356-.725-.645-1.15-.81-.137-.04-.233-.15-.328-.315C-.27 6.07.724 4.95.978 4.733c.255-.22.6-.055.723 0 .426.164.878.22 1.344.15C4.7 4.636 4.784 3.14 4.81 2.908c.015-.247-.11-1.29-.136-1.4-.027-.123-.014-.22.027-.315C5.318.178 7.073 0 7.223 0c.178 0 .33.055.44.178.108.124.63 1.11 1 1.4.398.338 1.582.83 2.588.013.398-.273.96-1.288 1.083-1.412.123-.123.26-.178.384-.178 1.56 0 2.33 1.03 2.438 1.22.083.124.096.248.07.37-.03.152-.33 1.153-.262 1.606.366 1.537 1.384 1.742 1.89 1.783.494.027 1.645-.357 1.81-.344.164.014.315.083.424.206.535.31.85 1.715.905 2.14.027.233-.014.44-.11.562-.11.138-1.165.714-1.48 1.112-.855.982-.342 2.25-.068 2.606.26.37 1.22.905 1.288.96.15.137.26.302.315.494.146 1.413-.89 2.387-1.07 2.47zm-8.905-.535c.644 0 1.246-.123 1.822-.356.575-.248 1.082-.59 1.493-1.016.425-.425.754-.92 1-1.495.247-.562.357-1.18.357-1.81 0-.66-.11-1.262-.356-1.825-.248-.562-.577-1.056-1.002-1.48-.41-.427-.918-.756-1.493-1.003-.576-.233-1.178-.357-1.822-.357-.644 0-1.247.124-1.81.357-.56.247-1.067.576-1.478 1.002-.425.425-.768.92-1 1.48-.247.564-.37 1.167-.37 1.826 0 .644.123 1.248.37 1.81.232.563.575 1.07 1 1.495.424.426.917.768 1.48 1.016.56.233 1.164.356 1.808.356z"></path>
                                            </g>
                                        </svg>
                                        设置</a>
                                </li>
                                <li>
                                    <a href="javascript:;" id="logoutBtn">
                                        <svg viewBox="0 0 20 20" class="Icon Button-icon Icon--logout" width="14" height="16" aria-hidden="true" style="height: 16px; width: 14px;">
                                            <title></title>
                                            <g>
                                                <path d="M0 10C0 7.242 1.154 4.58 3.167 2.697c.51-.477 1.31-.45 1.79.06.475.51.45 1.31-.06 1.787C3.37 5.975 2.53 7.91 2.53 10c0 4.118 3.35 7.468 7.47 7.468 4.12 0 7.47-3.35 7.47-7.47 0-2.04-.81-3.948-2.28-5.37-.5-.485-.514-1.286-.028-1.788.485-.5 1.286-.517 1.79-.03C18.915 4.712 20 7.265 20 10c0 5.512-4.486 9.998-10 9.998s-10-4.486-10-10zm8.7-.483V1.26C8.7.564 9.26 0 9.96 0c.695 0 1.26.564 1.26 1.26v8.257c0 .696-.565 1.26-1.26 1.26-.698 0-1.26-.564-1.26-1.26z"></path>
                                            </g>
                                        </svg>
                                        退出</a>
                                </li>
                                <!--  <li><a class="lg" href="#"><span><svg class="Zi Zi--Star TopstorySideBar-navIcon" fill="currentColor" viewBox="0 0 24 24" width="18" height="18" data-reactid="1254"><path d="M5.515 19.64l.918-5.355-3.89-3.792c-.926-.902-.639-1.784.64-1.97L8.56 7.74l2.404-4.871c.572-1.16 1.5-1.16 2.072 0L15.44 7.74l5.377.782c1.28.186 1.566 1.068.64 1.97l-3.89 3.793.918 5.354c.219 1.274-.532 1.82-1.676 1.218L12 18.33l-4.808 2.528c-1.145.602-1.896.056-1.677-1.218z" fill-rule="evenodd" data-reactid="1255"></path></svg></span><span class="ano">我的收藏</span></a></li>
                                 <li><a class="lg" href="#"><span><svg class="Zi Zi--HelpBubble TopstorySideBar-navIcon" fill="currentColor" viewBox="0 0 24 24" width="18" height="18" data-reactid="1259"><path d="M5.74 4h12.52c.961 0 1.74.775 1.74 1.73V16.27c0 .955-.779 1.73-1.74 1.73h-3.825l-1.658 2.044a1 1 0 0 1-1.554 0l-1.658-2.044H5.74C4.78 18 4 17.224 4 16.27V5.73C4 4.775 4.778 4 5.74 4zM12 16a.976.976 0 0 0 .705-.287.951.951 0 0 0 .295-.712.954.954 0 0 0-.295-.714A.976.976 0 0 0 12 14a.962.962 0 0 0-.705.295A.961.961 0 0 0 11 15c0 .284.098.522.295.713A.975.975 0 0 0 12 16zm1.278-4.924a36.81 36.81 0 0 0 1.023-.975c.19-.193.354-.422.492-.688.138-.266.207-.575.207-.928 0-.448-.12-.864-.363-1.246a2.517 2.517 0 0 0-1.029-.906C13.164 6.111 12.652 6 12.072 6c-.624 0-1.17.133-1.638.399-.468.265-.824.6-1.068 1.005-.244.405-.366.804-.366 1.2 0 .19.077.368.231.531a.747.747 0 0 0 .567.246c.38 0 .638-.234.774-.703.144-.449.32-.788.528-1.019.208-.23.532-.345.972-.345.376 0 .683.114.921.342.238.229.357.51.357.841 0 .17-.039.328-.117.473a1.782 1.782 0 0 1-.288.396c-.114.118-.3.294-.555.526a9.71 9.71 0 0 0-.696.688c-.172.194-.31.418-.414.673a2.391 2.391 0 0 0-.156.906c0 .278.071.488.213.63a.716.716 0 0 0 .525.211c.4 0 .638-.216.714-.648.044-.203.077-.345.099-.426.022-.081.053-.162.093-.243.04-.081.101-.17.183-.268.082-.098.191-.21.327-.34z" fill-rule="evenodd" data-reactid="1260"></path></svg></span><span class="ano">我的关注</span></a></li> -->
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </div>
    </nav>
</div>
<!-- /导航 -->

<!-- 版心 -->
<!-- 版心 -->
<div class="content" id="content">
    <div class="container">
        <div class="top">
            <div class="image">
                <div>
                    <%--<input type="file" name="file" accept="image/*" class="file" title="编辑封面图片" id="file">--%>
                </div>
            </div>
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img class="media-object" width="168px" height="168px" src="images/avatar.jpg" alt="...">
                    </a>
                </div>
                <div class="media-right" >
                    <a  id="toFollowHer"  class="btn btn-primary" style="margin-right: 20px;display: none" onclick=" updateFollowedStatus(this);" >
                       关注TA
                    </a>
                    <button type="button" style="display: none" id="edit" class="btn btn-default">编辑个人资料</button>
                </div>
                <div class="media-body">
                    <h2 class="media-heading" id="userInfoName"></h2>
                </div>
            </div>
        </div>
        <div class="middle pull-left">
            <ul class="nav nav-tabs" id="nav" role="tablist">
                <li role="presentation" class="active"><a href="#state" aria-controls="state" role="tab" data-toggle="tab" onclick="getQuestionArticleList()">动态</a></li>
                <li role="presentation"><a href="#answer1" aria-controls="answer1" role="tab" data-toggle="tab" onclick="getCommentListByUserId(uri)">回答<span class="num" id="answerNum">0</span></a></li>
                <li role="presentation"><a href="#question" aria-controls="question" role="tab" data-toggle="tab" onclick="getQuestionList(uri)">提问<span class="num" id="questionNum">0</span></a></li>
                <li role="presentation"><a href="#article" aria-controls="article" role="tab" data-toggle="tab" onclick="getArticleList(uri)">文章<span class="num" id="articleNum">0</span></a></li>
                <li role="presentation" class="pull-right dropdown"><a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents" aria-expanded="false">更多<span class="caret"></span></a>
                    <ul class="dropdown-menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
                        <li><a href="#dropdown1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1" aria-expanded="false" onclick="getLikedArticleListByUserId()">收藏<%--<i class="num" id="collectNum"> 1</i>--%></a></li>
                        <li class="dropdown-menu-care"><a href="#dropdown2" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2" aria-expanded="true" onclick="getMyFollowedUser()">关注<%--<i class="num" id="careNum"> 1</i>--%></a></li>
                    </ul>
                </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="state">
                    <div class="state">
                        我的动态
                    </div>

                </div>
                <div role="tabpanel" class="tab-pane fade" id="answer1">
                    <div class="state">我的回答</div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="question">
                    <div class="state">我的提问</div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="article">
                    <div class="state">我的文章</div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="more">更多</div>
                <div role="tabpanel" class="tab-pane fade" id="dropdown1" aria-labelledby="dropdown1-tab">
                    <div class="state">我的收藏</div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="dropdown2" aria-labelledby="dropdown2-tab">
                    <div class="state care">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active my"><a href="#my" aria-controls="my" role="tab" data-toggle="tab">我关注的人</a></li>
                            <li role="presentation" class="their" onclick="getFollowedUser()"><a href="#their" aria-controls="their" role="tab" data-toggle="tab">关注我的人</a></li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="my" target="my">

                            </div>
                            <div role="tabpanel" class="tab-pane" id="their">

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pull-right middle_right">
            <div class="middle_right_top">
                <div class="col-md-6 col-sm-6 left">
                    <a href="javascript:void(0);">
                        <p>关注了</p><span>2</span></a>
                </div>
                <div class="col-md-6 col-sm-6 right">
                    <a href="javascript:void(0);">
                        <p>关注者</p><span>1</span></a>
                </div>
            </div>
            <div class="middle_right_mid">
                <div class="mid_view"><a href="javascript:void(0);">个人主页被浏览<span>254</span>次</a></div>
            </div>
            <div class="middle_right_footer">
                <p><a href="https://liukanshan.zhihu.com/">刘看山</a> • <a href="#">知乎指南</a> • <a href="#">建议反馈</a> • <a href="#">移动应用</a> • <a href="#">加入知乎</a> • <a href="#">知乎协议</a> • <a href="#">举报投诉</a> • <a href="#">联系我们</a></p>
            </div>
        </div>
    </div>
</div>
<div class="info">
    <div class="container">
        <div class="top">
            <div class="image">
                <!--  <div>
                    <input type="file" name="file1" accept="image/*" title="编辑封面图片" class="file" id="file1">
                </div> -->
            </div>
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img class="media-object" width="168px" height="168px" src="images/avatar.jpg" alt="...">
                        <%--<div class="mask">--%>
                </div>
                <%--<div class="upload">--%>
                <%--<input type="file" id="avatar" value="" name="">--%>
                <%--<svg class="Zi Zi--Camera UserAvatarEditor-cameraIcon" fill="currentColor" viewBox="0 0 24 24" width="36" height="36" data-reactid="70"><path d="M20.094 6S22 6 22 8v10.017S22 20 19 20H4.036S2 20 2 18V7.967S2 6 4 6h3s1-2 2-2h6c1 0 2 2 2 2h3.094zM12 16a3.5 3.5 0 1 1 0-7 3.5 3.5 0 0 1 0 7zm0 1.5a5 5 0 1 0-.001-10.001A5 5 0 0 0 12 17.5zm7.5-8a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" fill-rule="evenodd" data-reactid="71"></path></svg>--%>
                <%--<p>修改我的头像</p>--%>
                <%--</div>--%>
                </a>
            </div>
            <div class="media-right">
                <a href="javascript:void(0);">
                    <button type="button" id="back" class="btn btn-default" style="float: right;margin-right: 100px;">返回个人主页</button>
                </a>
            </div>
            <div class="media-body" style="margin-left:249px;margin-top: -20px;">
                <h2 class="media-heading"></h2>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="middle">
            <form action="#" id="infoForm">
                <div class="box col-md-10">

                    <div class="user">
                        <p class="col-md-3">用户名</p>
                        <p class="col-md-9 write">
                            <input class="form-control" type="text" value="${user.username}" name="username" id="username" placeholder=""><span class="val">${user.username}</span><span class="change" title="1" style="margin-left:10px;"><svg viewBox="0 0 12 12" class="Icon ModifyButton-icon Icon--modify" width="12" height="16" aria-hidden="true" style="height: 16px; width: 12px;"><title></title><g><path
                                d="M.423 10.32L0 12l1.667-.474 1.55-.44-2.4-2.33-.394 1.564zM10.153.233c-.327-.318-.85-.31-1.17.018l-.793.817 2.49 2.414.792-.814c.318-.328.312-.852-.017-1.17l-1.3-1.263zM3.84 10.536L1.35 8.122l6.265-6.46 2.49 2.414-6.265 6.46z" fill-rule="evenodd"></path></g></svg>修改</span></p>
                    </div>
                    <div class="gender">
                        <p class="col-md-3">性别</p>
                        <p class="col-md-9 write">
                            <input class="form-control" type="text" name="sex" placeholder="" id="sex"><span class="val">${user.sex}</span><span class="change" title="1" style="margin-left:10px;"><svg viewBox="0 0 12 12" class="Icon ModifyButton-icon Icon--modify" width="12" height="16" aria-hidden="true" style="height: 16px; width: 12px;"><title></title><g><path
                                d="M.423 10.32L0 12l1.667-.474 1.55-.44-2.4-2.33-.394 1.564zM10.153.233c-.327-.318-.85-.31-1.17.018l-.793.817 2.49 2.414.792-.814c.318-.328.312-.852-.017-1.17l-1.3-1.263zM3.84 10.536L1.35 8.122l6.265-6.46 2.49 2.414-6.265 6.46z" fill-rule="evenodd"></path></g></svg>修改</span></p>
                    </div>
                    <div class="introduce">
                        <p class="col-md-3">一句话介绍</p>
                        <p class="col-md-9 write">
                            <input class="form-control" type="text" name="remark" placeholder="" id="remark"><span class="val">${user.remark}</span><span class="change" title="2" style="margin-left:10px;"><svg viewBox="0 0 12 12" class="Icon ModifyButton-icon Icon--modify" width="12" height="16" aria-hidden="true" style="height: 16px; width: 12px;"><title></title><g><path
                                d="M.423 10.32L0 12l1.667-.474 1.55-.44-2.4-2.33-.394 1.564zM10.153.233c-.327-.318-.85-.31-1.17.018l-.793.817 2.49 2.414.792-.814c.318-.328.312-.852-.017-1.17l-1.3-1.263zM3.84 10.536L1.35 8.122l6.265-6.46 2.49 2.414-6.265 6.46z" fill-rule="evenodd"></path></g></svg>修改</span></p>
                    </div>
                    <div class="job">
                        <p class="col-md-3">所在行业</p>
                        <p class="col-md-9 write">
                            <input class="form-control" type="text" name="career" placeholder="" id="career"><span class="val">${user.career}</span><span class="change" title="4" style="margin-left:10px;"><svg viewBox="0 0 12 12" class="Icon ModifyButton-icon Icon--modify" width="12" height="16" aria-hidden="true" style="height: 16px; width: 12px;"><title></title><g><path
                                d="M.423 10.32L0 12l1.667-.474 1.55-.44-2.4-2.33-.394 1.564zM10.153.233c-.327-.318-.85-.31-1.17.018l-.793.817 2.49 2.414.792-.814c.318-.328.312-.852-.017-1.17l-1.3-1.263zM3.84 10.536L1.35 8.122l6.265-6.46 2.49 2.414-6.265 6.46z" fill-rule="evenodd"></path></g></svg>修改</span></p>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>

</div>
<!-- /版心 -->
</body>
</body>

</html>

<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
<link href="${pageContext.request.contextPath}/layui/css/layui.css">
<script src="${pageContext.request.contextPath}/node_modules/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/js/base.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
<link href="${pageContext.request.contextPath}/layui/css/layui.css">
<script src="${pageContext.request.contextPath}/js/myIndex.js"></script>
<script>
    var uri;
    var id,liked;
    //定义时间变量名
    var updateTime, timeName = 'createTime', fit;
    // $(function () {
    uri = getRequestUri().id;

    if (uri.id != null) {
        id = uri.id;
    } else {
        id = '${user.id}';
    }
    // getArticleList(id);
    // getQuestionList(id);
    //getCommentListByUserId(id);
    // });
    $(function () {
        // getUserByUserId();
    });

    function getUserByUserId() {

        $.ajax({
            url: '/getUserByUserId.action',
            type: 'post',
            async:false,
            data: {
                "id": uri
            },
            success: function (user) {
                liked = user.liked;
                console.log("user:"+ liked)
                $("#userInfoName").html(user.username);

                var res = checkExistOrNot(user.followed, ${user.id}, true);//关注
                if (res) {
                    $("#toFollowHer").removeClass().addClass("btn btn-default").html("取消关注");
                } else {
                    $("#toFollowHer").removeClass().addClass("btn btn-primary").html("关注TA");
                }
                $("#toFollowHer").show();
                if(user.id== ${user.id}){
                    $("#edit").show();

                }else{

                    $("#edit").hide();

                }
            }
        });

    };
    function checkExistOrNot(liked, id, followedFlag) {
        var likeFlag = false;
        //var liked = user.liked;
        console.log("liked: "+liked);
        if(liked) {
            if (liked.indexOf("[") >= 0) {
                liked = liked.substring(1, liked.length);
            }
            if (liked.indexOf("]") >= 0) {
                liked = liked.substring(0, liked.length - 1);
            }
        }
        if (liked == null) {
            return false;
        }

        if (liked.length > 0) {

            var str = liked.split(",");
            if (followedFlag) {
                //$(".followedSize").html(str.length);
            }
            for (var i = 0; i < str.length; i++) {
                if (str[i].trim() == id) {
                    return true;
                }
            }
            return likeFlag;

        } else {

            return liked == id ? true : false;
        }
    };
    function calcLength(data) {
        if (data == null)
            return 0;
        else
            return data.length;

    }
    //关注我的人
    function getFollowedUser() {
        $.ajax({
            url: '/getFollowedUserByIdUserId.action',
            type: 'post',
            data: {
                "id": "${user.id}"
            },
            success: function (data) {
                $("#their").empty();
                if (data.length > 0) {
                    var str = "";
                    for (var j = 0; j < data.length; j++) {
                        str += '<div class="media" style="margin-top:20px;">\n' +
                            '                            <div class="media-left media-middle" style="width:8%;display:inline-block;">\n' +
                            '                                <a href="javascript:void(0);">\n' +
                            '                                        <img class="media-object" width="100%" src="images/avatar.jpg" alt="...">\n' +
                            '                                    </a>\n' +
                            '                                </div>\n'
                        ;
                        if (!checkExistOrNot('${user.followed}', data[j].user.id, false))
                            str += '<button class="btn btn-default pull-right" id="followIndex' + j + '" onclick="updateFollowedStatus(this);">取消关注</button>';
                        else
                            str += '<button class="btn btn-primary pull-right"  id="followIndex' + j + '" onclick="updateFollowedStatus(this);">关注TA</button>';

                        str += '                                <div class="media-body" style="width:60%; padding-top:5px;">\n' +
                            '                                    <a href="/userInfo.html?id='+data[j].user.id+'"><h4 class="media-heading" style="color:#353535;font-weight: bold;">' + data[j].user.username + '</h4></a>\n' +
                            '                                    <p style="font-weight: normal;font-size:14px;color:#777;"><i>' + calcLength(data[j].questionList) + '</i><i>提问</i> • <i>' + calcLength(data[j].articleList) + ' </i><i>文章</i> • <i>' + data[j].followedCount + '</i><i> 已关注</i></p>\n' +
                            '                                </div>\n' +
                            '                        </div>';


                    }

                    $("#their").html(str);

                }

            }
        });
    };
    //我关注的人
    function getMyFollowedUser() {
        $.ajax({
            url: '/getFollowedUserListByUserId.action',
            type: 'post',
            data: {
                "id": "${user.id}"
            },
            success: function (data) {
                $("#my").empty();
                if (data.length > 0) {
                    console.log(data);
                    var str = "";
                    for (var j = 0; j < data.length; j++) {
                        str += '<div class="media" style="margin-top:20px;">\n' +
                            '                            <div class="media-left media-middle" style="width:8%;display:inline-block;">\n' +
                            '                                <a href="javascript:void(0);">\n' +
                            '                                        <img class="media-object" width="100%" src="images/avatar.jpg" alt="...">\n' +
                            '                                    </a>\n' +
                            '                                </div>\n'
                        ;
                        if (!checkExistOrNot('${user.followed}', data[j].id, false))
                            str += '<button class="btn btn-default pull-right" id="followIndex' + j + '" onclick="updateFollowedStatus(this);">取消关注</button>';
                        else
                            str += '<button class="btn btn-primary pull-right"  id="followIndex' + j + '" onclick="updateFollowedStatus(this);">关注TA</button>';

                        str += '                                <div class="media-body" style="width:60%; padding-top:5px;">\n' +
                            '                                    <a href="/userInfo.html?id='+data[j].user.id+'"><h4 class="media-heading" style="color:#353535;font-weight: bold;">' + data[j].user.username + '</h4></a>\n' +
                            '                                    <p style="font-weight: normal;font-size:14px;color:#777;"><i>' + calcLength(data[j].questionList) + '</i><i>提问</i> • <i>' + calcLength(data[j].articleList) + ' </i><i>文章</i> • <i>' + data[j].followedCount + '</i><i> 已关注</i></p>\n' +
                            '                                </div>\n' +
                            '                        </div>';


                    }

                    $("#my").html(str);

                }

            }
        });
    };
    //关注
    function updateFollowedStatus(obj) {
        //e.preventDefault();
        $.ajax({
            url: '/user/followUser.action',
            type: 'post',
            data: {
                'id': uri,
                'userId': '${user.id}'
            }, success: function (data) {
                var html = $(obj).html();
                // console.log('className'+$(obj).prop("className").split(" ")[0]+" "+$(obj).prop("className").split(" ")[1]);
                var className2 = $(obj).prop("className").split(" ")[2];
                console.log("className2" + className2)
                if (html == "关注TA") {
                    // $(obj).removeClass(className2).addClass("btn-default").html("取消关注");
                    if(className2) {
                        $(obj).removeClass().addClass("btn btn-default pull-right").html("取消关注");
                    }else{
                        $(obj).removeClass().addClass("btn btn-default").html("取消关注");
                    }
                    return;
                }
                if (html == "取消关注") {
                    if(className2) {
                        $(obj).removeClass().addClass("btn btn-primary pull-right").html("关注TA");
                    }else{
                        $(obj).removeClass().addClass("btn btn-primary").html("关注TA");
                    }
                    return;
                }
              // getFollowedCountByUserId();
            }
        });
    }
    //收藏
    function likeQuestion(obj,id,index) {
        $.ajax({
            url: '/user/likeQuestion.action',
            type: 'post',
            data: {
                'questionId': id,
                'userId': '${user.id}'
            }, success: function (data) {
                var html = $(obj).html();
                console.log('html:'+html);
                if (html == "收藏") {
                    $(obj).html("取消收藏");
                    return;
                }
                if (html == "取消收藏") {
                    $(obj).html("收藏");
                    return;
                }
            }
        });
    }
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
    ;
    //动态：问题栏 ||| 提问
    function getQuestionList(id) {
        $.ajax({
            url: '/getQuestionListByUserId.action',
            data: {
                "id": id
            }, success: function (data) {
                $('#question').empty();
                if (data.length) {
                    data.forEach(function (question, index) {
                        updateTime = new Date(parseInt(question[timeName])).format("yyyy-MM-dd hh:mm:ss")
                        $('#question').append('<div class="content"><div class="topic"><a href="./question.html?id=' + question.id + "&uid=" + question.userId + '">' + question.title + '</a>' + '</div><p class="time">时间：<span>' + updateTime + '</span> </p>')
                    })
                }
                //提问条数
                $('#questionNum').html(data.length);
            }
        });
    };
    //动态:文章
    function getArticleList(id) {
        $.ajax({
            url: '/getArticleListByUserId.action',
            data: {
                "id": id
            }, success: function (data) {
                //文章栏
                //文章列表渲染
                $('#article').empty();
                if (data) {
                    data.forEach(function (question, index) {
                        updateTime = new Date(parseInt(question[timeName])).format("yyyy-MM-dd hh:mm:ss")
                        $('#article').append('<div class="content"><div class="topic"><a href="./question.html?id='+ question.id + "&uid=" +  question.userId + '">' + question.title + '</a>' + '</div><p class="time">时间：<span>' + updateTime + '</span></p>')
                    })
                }
                //文章条数
                $('#articleNum').html(data.length);
            }
        });
    };
    //回答
    function getCommentListByUserId(id) {
        $.ajax({
            url: '/getCommentListByUserId.action',
            // async:false,
            data: {
                "id": id
            }, success: function (data) {
                getUserByUserId();
                //文章列表渲染
                $('#answer1').empty();
                console.log("回答");
                if (data.length) {
                    data.forEach(function (article, index) {
                        updateTime = new Date(parseInt(article.article[timeName])).format("yyyy-MM-dd hh:mm:ss");
                        if (checkExistOrNot(liked, article.article.id))
                            $('#answer1').append('<div class="content"><div class="topic readBox"><a href="./question.html?id='+ article.article.id + "&uid=" +  article.article.userId + '">' + article.article.title + '</a><a href="./userInfo.html?id=' + article.article.userId + '" style="font-size:16px; font-weight:normal;"><div class="img"><img width="60px" src="images/avatar.jpg" alt=""><span style="font-size:18px;margin-left: 10px;" ></span></div></a><a href="./question.html?id=' +  article.article.id + "&uid=" + article.article.userId + '" style="font-size:16px; font-weight:normal;"><p class="word">' + article.article.content + '</p></a></div><p class="time">时间：<span class="createTime">' + updateTime + '</span></p><div class="bottom"><p><span><svg class="Zi Zi--Comment Button-zi" fill="#777" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M10.241 19.313a.97.97 0 0 0-.77.2 7.908 7.908 0 0 1-3.772 1.482.409.409 0 0 1-.38-.637 5.825 5.825 0 0 0 1.11-2.237.605.605 0 0 0-.227-.59A7.935 7.935 0 0 1 3 11.25C3 6.7 7.03 3 12 3s9 3.7 9 8.25-4.373 9.108-10.759 8.063z" fill-rule="evenodd"></path></svg></span><i class="comment1" style="">添加回答</i><!--<span><svg class="Zi Zi&#45;&#45;Share Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M2.931 7.89c-1.067.24-1.275 1.669-.318 2.207l5.277 2.908 8.168-4.776c.25-.127.477.198.273.39L9.05 14.66l.927 5.953c.18 1.084 1.593 1.376 2.182.456l9.644-15.242c.584-.892-.212-2.029-1.234-1.796L2.93 7.89z" fill-rule="evenodd"></path></svg></span><i>分享</i>--><a class="collect"><span><svg class="Zi Zi--Star Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M5.515 19.64l.918-5.355-3.89-3.792c-.926-.902-.639-1.784.64-1.97L8.56 7.74l2.404-4.871c.572-1.16 1.5-1.16 2.072 0L15.44 7.74l5.377.782c1.28.186 1.566 1.068.64 1.97l-3.89 3.793.918 5.354c.219 1.274-.532 1.82-1.676 1.218L12 18.33l-4.808 2.528c-1.145.602-1.896.056-1.677-1.218z" fill-rule="evenodd"></path></svg></span><i onclick="likeQuestion(this,'+ article.article.id + "," + index + ')">取消收藏</i></a></p><div class="comment" id="comment'+ index +'"><div class="answer" id="answer"><div class="main"><div class="media" style="margin-bottom:30px;"><div class="countCtm">' + article.comments.length + '个回答</div><div class="media-bottom commentText"><div class="writeCmt"><input type="hidden" value="'+ article.article.id +'" ><input type="text" class="form-control" name="content"  style="display: inline-block; width: 90%;margin-bottom: 10px;" placeholder="写下你的回答"><button class="btn btn-primary addComment" onclick="sentComment(this,'+ index +')">提交</button></div></div></div></div></div></div></div></div></div>');
                        else
                            $('#answer1').append('<div class="content"><div class="topic readBox"><a href="./question.html?id='+ article.article.id + "&uid=" +  article.article.userId + '">' + article.article.title + '</a><a href="./userInfo.html?id=' + article.article.userId + '" style="font-size:16px; font-weight:normal;"><div class="img"><img width="60px" src="images/avatar.jpg" alt=""><span style="font-size:18px;margin-left: 10px;" ></span></div></a><a href="./question.html?id=' +  article.article.id + "&uid=" + article.article.userId + '" style="font-size:16px; font-weight:normal;"><p class="word">' + article.article.content + '</p></a></div><p class="time">时间：<span class="createTime">' + updateTime + '</span></p><div class="bottom"><p><span><svg class="Zi Zi--Comment Button-zi" fill="#777" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M10.241 19.313a.97.97 0 0 0-.77.2 7.908 7.908 0 0 1-3.772 1.482.409.409 0 0 1-.38-.637 5.825 5.825 0 0 0 1.11-2.237.605.605 0 0 0-.227-.59A7.935 7.935 0 0 1 3 11.25C3 6.7 7.03 3 12 3s9 3.7 9 8.25-4.373 9.108-10.759 8.063z" fill-rule="evenodd"></path></svg></span><i class="comment1" style="">添加回答</i><!--<span><svg class="Zi Zi&#45;&#45;Share Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M2.931 7.89c-1.067.24-1.275 1.669-.318 2.207l5.277 2.908 8.168-4.776c.25-.127.477.198.273.39L9.05 14.66l.927 5.953c.18 1.084 1.593 1.376 2.182.456l9.644-15.242c.584-.892-.212-2.029-1.234-1.796L2.93 7.89z" fill-rule="evenodd"></path></svg></span><i>分享</i>--><a class="collect"><span><svg class="Zi Zi--Star Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M5.515 19.64l.918-5.355-3.89-3.792c-.926-.902-.639-1.784.64-1.97L8.56 7.74l2.404-4.871c.572-1.16 1.5-1.16 2.072 0L15.44 7.74l5.377.782c1.28.186 1.566 1.068.64 1.97l-3.89 3.793.918 5.354c.219 1.274-.532 1.82-1.676 1.218L12 18.33l-4.808 2.528c-1.145.602-1.896.056-1.677-1.218z" fill-rule="evenodd"></path></svg></span><i onclick="likeQuestion(this,'+ article.article.id +","+ index +')">收藏</i></a></p><div class="comment" id="comment'+ index +'"><div class="answer" id="answer"><div class="main"><div class="media" style="margin-bottom:30px;"><div class="countCtm">' + article.comments.length + '个回答</div><div class="media-bottom commentText"><div class="writeCmt"><input type="hidden" value="'+ article.article.id +'" ><input type="text" class="form-control" name="content"  style="display: inline-block; width: 90%;margin-bottom: 10px;" placeholder="写下你的回答"><button class="btn btn-primary addComment" onclick="sentComment(this,'+ index +')">提交</button></div></div></div></div></div></div></div></div></div>');
                        <%--if( article.article.userId == ${user.id} || ${user.role==1}){--%>
                        // }

                        fit = document.querySelectorAll('#answer1 .content')[index].childNodes[2].childNodes[1].childNodes[0].childNodes[0].childNodes[0].lastChild;

                        for (var i = 0; i < article.comments.length; i++) {
                            updateTime = new Date(parseInt(article.comments[i][timeName])).format("yyyy-MM-dd hh:mm:ss")
                            if(article.comments[i].fromUserId == ${user.id} || ${user.role==1}){
                                $(fit).before('<div class="commentWrapper"><div class="media-left media-middle"><a href="userInfo.html?id=' + article.comments[i].fromUserId + '" style="font-size:16px; font-weight:normal;"><img class="media-object" src="images/avatar.jpg" width="25px" alt="..."><span class="username" style="font-size:16px;font-weight:normal;">' + article.comments[i].fromUserName + '</span></a></div><div class="media-body topic readBox"><span class="word">' + article.comments[i].content + '</span><p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span>' + updateTime + '</span> <a class="btn btn-xs btn-danger" class="deleteComment" style="color:#fff;font-size:12px;" onclick="deleteCommentByCommentId(this,' + article.comments[i].id + ')">删除</a></p></div></div>')
                            }else {
                                $(fit).before('<div class="commentWrapper"><div class="media-left media-middle"><a href="userInfo.html?id=' + article.comments[i].fromUserId + '" style="font-size:16px; font-weight:normal;"><img class="media-object" src="images/avatar.jpg" width="25px" alt="..."><span class="username" style="font-size:16px;font-weight:normal;">' + article.comments[i].fromUserName + '</span></a></div><div class="media-body topic readBox"><span class="word">' + article.comments[i].content + '</span><p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span>' + updateTime + '</span></p></div></div>')

                            }
                        }
                        //增加删除按钮
                        // $("#answer1 .content  .createTime").eq(index).after('<a class="btn btn-xs btn-danger" onclick="deleteCommentByCommentId(this,' + article.article.id + ')">删除</a>');


                    })
                }
//文章条数
                $('#answerNum').html(data.length);
                $(".comment1").click(function(e) {
                    e.stopPropagation();
                    var index = $(".comment1").index(this);
                    html = $(this).html();
                    if (html != "收起回答") {
                        $(this).html("收起回答");
                    } else {
                        $(this).html("添加回答")
                    }
                    $(".comment").eq(index).toggleClass('active');
                })
                limit();
            }
        })
    };
    //文章 问题混合，时间排序
    function getQuestionArticleList() {
        $.ajax({
            url: '/getQuestionArticleList.action',
            data: {
                "id": uri
            }, success: function (data) {
                //动态列表渲染
                console.log("动态："+JSON.stringify(data));
                mixin(data, 'state');
                // //设置收藏条数
                // $('#collectNum').html(' ' + data.length);
            }
        })
    };
    //获取收藏数据
    function getLikedArticleListByUserId() {
        $.ajax({
            url: '/getLikedArticleListByUserId.action',
            data: {
                "id": id
            }, success: function (data) {
                //我的收藏列表渲染
                //设置收藏条数
                // $('#collectNum').html(' ' + data.length);
                // mixin(data, 'dropdown1');
                $('#dropdown1').empty();
                if(data.length) {
                    data.forEach(function(state,index) {
                        updateTime = new Date(parseInt(state[timeName])).format("yyyy-MM-dd hh:mm:ss")

                            $('#dropdown1').append('<div class="content"><div class="topic"><a href="./question.html?id=' + state.id + "&uid=" + state.userId + '">' + state.title + '</a>' + '</div><p class="time">时间：<span>' + updateTime + '</span>&nbsp;&nbsp;&nbsp;<span onclick="cancleLikeQuestion(' + state.id + ')" style="cursor:pointer;">取消收藏</span></p>')

                    })
                }
            }
        })
    };
    //取消收藏
    function cancleLikeQuestion(id) {
        $.ajax({
            url: '/user/likeQuestion.action',
            type: 'post',
            data: {
                'questionId': id,
                'userId': '${user.id}'
            }, success: function (data) {
                console.log(JSON.stringify(data))
                getLikedArticleListByUserId()

            }
        });
    }
    //修改个人信息
    function updateUserInfoByUserId(param) {
        $.ajax({
            url: '/updateUserInfoByUserId.action',
            data: param,
            success: function (data) {
            }
        })
    };
    //动态和收藏封装
    function mixin(arr, ele) {

        $('#' + ele).empty();
        if (arr.length) {
            arr.forEach(function (state, index) {
                if (state.article) {
                    updateTime = new Date(parseInt(state.article[timeName])).format("yyyy-MM-dd hh:mm:ss");
                    $('#' + ele).append('<div class="content"><div class="topic readBox"><a href="./question.html?id=" '+ state.article.id + "&uid=" +  state.article.userId + '>' + state.article.title + '</a><a href="./myIndex.html" style="font-size:16px; font-weight:normal;"><div class="img"><img width="60px" src="images/avatar.jpg" alt=""><span style="font-size:18px;margin-left: 10px;">张瑞</span></div></a><a href="./article.html" style="font-size:16px; font-weight:normal;"><p class="word">' + state.article.content + '</p></a></div><p class="time">时间：<span>' + updateTime + '</span> </p><div class="bottom"><p><span><svg class="Zi Zi--Comment Button-zi" fill="#777" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M10.241 19.313a.97.97 0 0 0-.77.2 7.908 7.908 0 0 1-3.772 1.482.409.409 0 0 1-.38-.637 5.825 5.825 0 0 0 1.11-2.237.605.605 0 0 0-.227-.59A7.935 7.935 0 0 1 3 11.25C3 6.7 7.03 3 12 3s9 3.7 9 8.25-4.373 9.108-10.759 8.063z" fill-rule="evenodd"></path></svg></span><i class="comment1" style="">添加回答</i><!--<span><svg class="Zi Zi&#45;&#45;Share Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M2.931 7.89c-1.067.24-1.275 1.669-.318 2.207l5.277 2.908 8.168-4.776c.25-.127.477.198.273.39L9.05 14.66l.927 5.953c.18 1.084 1.593 1.376 2.182.456l9.644-15.242c.584-.892-.212-2.029-1.234-1.796L2.93 7.89z" fill-rule="evenodd"></path></svg></span><i>分享</i>--><a class="collect"><span><svg class="Zi Zi--Star Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M5.515 19.64l.918-5.355-3.89-3.792c-.926-.902-.639-1.784.64-1.97L8.56 7.74l2.404-4.871c.572-1.16 1.5-1.16 2.072 0L15.44 7.74l5.377.782c1.28.186 1.566 1.068.64 1.97l-3.89 3.793.918 5.354c.219 1.274-.532 1.82-1.676 1.218L12 18.33l-4.808 2.528c-1.145.602-1.896.056-1.677-1.218z" fill-rule="evenodd"></path></svg></span><i>收藏</i></a></p><div class="comment"><div class="answer" id="answer"><div class="main"><div class="media" style="margin-bottom:30px;"><div class="countCtm">' + state.comments.length + '个回答</div><div class="media-bottom"><div class="writeCmt"><input type="" class="form-control" name="content" placeholder="写下你的回答"><button class="btn btn-primary addComment">评论</button></div></div></div></div></div></div></div></div></div>');
                    fit = document.querySelectorAll('#' + ele + ' .content')[index].childNodes[2].childNodes[1].childNodes[0].childNodes[0].childNodes[0].childNodes[0];
                    for (var i = 0; i < state.comments.length; i++) {
                        updateTime = new Date(parseInt(state.comments[i][timeName])).format("yyyy-MM-dd hh:mm:ss")

                        $(fit).after('<div class="commentWrapper"><div class="media-left media-middle"><a href="./userInfo.html?id=" ' + article.comments[i].fromUserId + ' style="font-size:16px; font-weight:normal;"><img class="media-object" src="images/avatar.jpg" width="25px" alt="..."><span class="username" style="font-size:16px;font-weight:normal;">' + state.comments[i].fromUserName + '</span></a></div><div class="media-body topic readBox"><span class="word">' + state.comments[i].content + '</span><p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span>' + updateTime + '</span></p></div></div>')
                    }

                } else {
                    updateTime = new Date(parseInt(state[timeName])).format("yyyy-MM-dd hh:mm:ss")
                    if(state.userId == ${user.id} || ${user.role==1})
                        $('#' + ele).append('<div class="content"><div class="topic"><a href="./question.html?id=' + state.id + "&uid=" + state.userId + '">' + state.title + '</a>' + '</div><p class="time">时间：<span>' + updateTime + '</span><a class="btn btn-xs btn-danger" onclick="deleteArticleByArticleId(' + state.id + ')"><i>删除</i></a></p>')
                    else
                        $('#' + ele).append('<div class="content"><div class="topic"><a href="./question.html?id=' + state.id + "&uid=" + state.userId + '">' + state.title + '</a>' + '</div><p class="time">时间：<span>' + updateTime + '</span></p>')

                }
            })
        }
    }
    //评论
    function sentComment(obj,id) {
        var id = $(obj).siblings("input[type='hidden']").val();
        var text = $(obj).siblings("input[type='text']").val();
        var self = obj;
        $.ajax({
            url: '/submitQuestionAnswer.action',
            type: 'post',
            data: {
                'userId': '${user.id}',
                'questionId': id,
                'content': text
            },
            success: function (data) {
                layer.msg(data.msg);
                // getArticleList();
                updateTime = new Date().format("yyyy-MM-dd hh:mm:ss");
                var count = parseInt($(self).parents(".commentText").siblings('.countCtm').html().substring(0,1))+1;
                var text1 = $(self).parents(".commentText").siblings('.countCtm').html().substring(1);
                $(self).parents(".commentText").siblings('.countCtm').html(count+text1);
                $(self).parents(".commentText").before('<div class="commentWrapper"><div class="media-left media-middle"><a href="./myIndex.html" style="font-size:16px; font-weight:normal;"><img class="media-object" src="images/avatar.jpg" width="25px" alt="..."><span class="username" style="font-size:16px;font-weight:normal;">' + '${user.username}'+ '</span></a></div><div class="media-body topic readBox"><span class="word">' + text + '</span><p style="color:#9D9B9B;margin-top:20px;margin-bottom: 0px;">发布于 <span class="createTime">' + updateTime + '</span><a class="btn btn-xs btn-danger" class="deleteComment" style="color:#fff;font-size:12px;" onclick="deleteCommentByCommentId(this,' + id + ')">删除</a></p></div></div>')
                limit();

                // $(obj).siblings("input[type='text']").val();
                // var commentId = "comment" + $(obj).siblings("input[type='hidden']").val();
                // $("#" + commentId).show();
            }
        });

    }
    //删除评论
    function deleteCommentByCommentId(obj,id) {
        var self = obj;
        layer.confirm("确定删除吗？",function () {
            $.ajax({
                url:'/deleteCommentByCommentId.action',
                type:'post',
                data:{
                    "id":id
                },
                success:function (data) {
                    layer.msg(data.msg);
                    var count = $(self).parents(".commentWrapper").siblings('.countCtm').html().replace(/[^\d]+/g, "")-1;
                    var text = $(self).parents(".commentWrapper").siblings('.countCtm').html().replace(/[\d]+/g, "");
                    $(self).parents(".commentWrapper").siblings('.countCtm').html(count+text);
                    $(self).parents(".commentWrapper").eq(0).empty();
                }
            });
        });
    };
    //删除文章
    function deleteArticleByArticleId(id) {
        layer.confirm("确定删除该条记录吗？",function () {
            $.ajax({
                url: '/deleteArticleByArticleId.action',
                type: 'post',
                data:{
                    "id":id
                },
                success:function (data) {
                    layer.msg(data.msg);
                    getQuestionArticleList();

                }
            });

        });



    }
    //动态ajax数据请求
    getQuestionArticleList();
    //回答ajax请求数据
    getCommentListByUserId(uri);
    // 文章ajax数据请求
    getArticleList(uri);
    //提问ajax数据请求
    getQuestionList(uri);
    //收藏ajax请求数据
    getLikedArticleListByUserId();
    // 修改个人资料
    var param, index;
    $(".change").click(function (e) {
        $(".write input").css({"display": "none"});
        $(this).siblings('input').css({"display": "inline-block"});
        index = $(".change").index(this);
        e.stopPropagation();
    });

    $(document).click(function (e) {
        $(".write input").css({"display": "none"});
        // e.stopPropagation();
        var content = $(".write input").eq(index).val();

        // if($(".write .val").eq(index).html() != "未填写"){

        // }
        // else if(content==""&&typeof index!='undefined'&&$(".write .val").eq(index).html() = "未填写"){
        //     $(".write .val").eq(index).html("未填写");
        // }else
        if (content) {
            param = {
                "id":${user.id},
                "username": $("#username").val(),
                "sex": $("#sex").val(),
                "career": $("#career").val(),
                "remark": $("#remark").val()
            };
            $(".write .val").eq(index).html(content);
            updateUserInfoByUserId(param)
        }
    })
    //搜索
    function getSearchArticleByKeyWord() {
        var searchKeyWord = $("#searchKeyWord").val();
        if(searchKeyWord == "") {
            alert("请输入搜索的内容");
            //layer.msg("请输入搜索的内容");
            return;
        }else{

            window.open("/search.html?kw="+searchKeyWord);


        }


    };

    $("#logoutBtn").on("click",function () {
        layer.confirm("确定退出登录吗？",function () {
            $.ajax({
                url:'/logout.action',
                success:function () {
                    window.location.replace("/index.html");
                }
            });
        });
    });

    limit();
</script>
<%--

<script>
    var uid ;
    $(function () {
        uid = getRequestUri().id;



        var id;
        if(uid != null){
            id = uid;
        }else{
            id = '${user.id}';
        }
        // getArticleList(id);
        // getQuestionList(id);
        //getCommentListByUserId(id);
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
    };
    //动态：问题栏 ||| 提问
    function getQuestionList(id) {
        $.ajax({
            url:'/getQuestionListByUserId.action',
            data:{
                "id":id
            },success:function (data) {

                console.log("question"+data);
            }
        });
    };
    //动态:文章
    function getArticleList(id) {
        $.ajax({
            url:'/getArticleListByUserId.action',
            data:{
                "id":id
            },success:function (data) {
                //文章栏
                console.log("arti"+data);
            }
        });
    };
    //回答
    function getCommentListByUserId(id){
        $.ajax({
            url:'/getCommentListByUserId.action',
            data:{
                "id":id
            },success:function (data) {
                console.log( data);
            }
        })
    };
    //文章 问题混合，时间排序
    function getQuestionArticleList() {
        $.ajax({
            url:'/getQuestionArticleList.action',
            data:{
                "id":id
            },success:function (data) {

            }
        })
    };
    //收藏
    function getLikedArticleListByUserId() {
        $.ajax({
            url:'/getLikedArticleListByUserId.action',
            data:{
                "id":id
            },success:function (data) {

            }
        })
    };

    //修改个人信息
    function updateUserInfoByUserId() {
        $.ajax({
            url:'/updateUserInfoByUserId.action',
            data:{
                "id":${user.id}
            },success:function (data) {

            }
        })
    };




</script>--%>
