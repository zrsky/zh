(function() {
    function upload(ele, url) {
        ele.on("change", function(e) {
            console.log(ele.attr("name"))
            if (!(window.File || window.FileReader || window.FileList || window.Blob)) {
                alert('你妈喊你换Chrome浏览器啦');
                return;
            }
            var files = $(this).prop('files')[0];
            if (!/image\/\w+/.test(files.type)) {
                alert("看清楚，这个需要图片！");
                return false;
            }
            var reader = new FileReader(); //新建一个FileReader
            reader.readAsDataURL(files)
            ele.val("")
            reader.onload = function(e) { //读取完文件之后会回来这里
                var fileString = e.target.result;
                console.log(e)
                var img = new Image();
                img.src = fileString;
                // if(img.width < 1200 && img.width <240) {
                //  alert("图片大小必须大于等于1200×240")
                //  return;
                // }
                window.location = url + "?name=" + img.src;
            }
        })
    }
    upload($("#file"), "jcrop/jcrop.html");
    upload($("#file1"), "jcrop/jcrop.html");
    upload($("#avatar"), "jcrop/jcropAvatar.html");
    $(".info").css({ "display": "none" });
    $("#edit").click(function() {
        $(".content").css({
            "display": "none"
        });
        $(".info").css({
            "display": "block"
        });
    })
    $("#back").click(function() {
        $(".info").css({
            "display": "none"
        });
        $(".content").css({
            "display": "block"
        });
    })
    var id = window.location.search.split("=")[1];
    if(typeof id == "undefined"){
    	$(".content").css({
            "display": "block"
        });
    } else if (id == 2) {
        console.log($(".content"))
        $(".content").css({
            "display": "none"
        });
        $(".info").css({
            "display": "block"
        });
    } else if (id == 1) {
        $(".content").css({
            "display": "block"
        });
        $(".info").css({
            "display": "none"
        });
    }
    var index;
    $(".change").click(function(e) {
        $(".write input").css({ "display": "none" });
        $(this).siblings('input').css({ "display": "inline-block" });
        index = $(".change").index(this);
        e.stopPropagation();
    });

    $(".write input").click(function(e) {
        $(this).css({ "display": "inline-block" });

        e.stopPropagation();
    })
    $(document).click(function(e) {
        $(".write input").css({ "display": "none" });
        // e.stopPropagation();
        var content = $(".write input").eq(index).val();
        // if($(".write .val").eq(index).html() != "未填写"){

        // }
        // else if(content==""&&typeof index!='undefined'&&$(".write .val").eq(index).html() = "未填写"){
        //     $(".write .val").eq(index).html("未填写");
        // }else 
        if (typeof index != 'undefined') {
            $(".write .val").eq(index).html(content);
        }
    })

    var html = "";

    // $("#nav").on("click","li",function(){
    //    $(".comment").css({"display":"none"});
    // })
    //     // 回复
    $(".huifu_in").click(function() {
        var index = $(".huifu_in").index(this);
        console.log(index)
        html = $(this).html();
        console.log(html)
        if (html != "收起回复") {
            $(this).html("收起回复");
        } else {
            $(this).html("回复")
        }

        $(".huifuInput").eq(index).toggleClass('active');
    })
    $(".comment1").click(function() {
        var index = $(".comment1").index(this);
        console.log(index)
        html = $(this).html();
        console.log(html)
        if (html != "收起评论") {
            $(this).html("收起评论");
        } else {
            $(this).html("数据库获取得值")
        }
        $(".comment").eq(index).toggleClass('active');
    })
    $(".zan").click(function(e) {
        var num = parseInt($(this).children('span i').html());
        var iconEle = $(this).children('.Icon');
        var color = iconEle.css("fill");
        if (color == "rgb(0, 0, 255)") {
            num--;
            iconEle.css({ "fill": "#9fadc7" });
        } else {
            num++;
            iconEle.css({ "fill": "blue" });
        }

        $(this).children('span i').html(num);
        console.log(e)
        e.stopPropagation();
    })
    console.log($(".care_he"))
    $(".care_btn").click(function() {
        var word = $(this).html();
        console.log(word)
        if (word == "关注她") {

            $(this).html("取消关注");
            $(this).css({ "background": "#ccc", "border-color": "transparent" });
        } else {
            $(this).html("关注她");
            $(this).css({ "background": "#337ab7", "border-color": "#337ab7" });
        }

    });
    $(".care_he").click(function() {
        var word = $(this).html();
        if (word == "已关注") {

            $(this).html("关注");
            $(this).css({ "background": "#337ab7", "border-color": "#337ab7" });

        } else {
            $(this).html("已关注");
            $(this).css({ "background": "#ccc", "border-color": "transparent" });

        }

    });
    // 收藏
    $(".collect").click(function() {
        var index = $(".collect").index(this);
        console.log(index)
        html = $(this).children('i').html();
        console.log(html)
        if (html != "取消收藏") {
            $(this).children('i').html("取消收藏");
        } else {
            $(this).children('i').html("收藏")
        }
    })
    // 感谢
    $(".thanks").click(function() {
        var index = $(".thanks").index(this);
        console.log(index)
        html = $(this).children('i').html();
        console.log(html)
        if (html != "取消感谢") {
            $(this).children('i').html("取消感谢");
        } else {
            $(this).children('i').html("感谢")
        }
    })

    // 阅读全文收起

    $(function() {
        $(".readBox").moreText({
            maxLength: 50, //默认最大显示字数，超过...
            mainCell: '.word' //文字容器
        });
    })


})()