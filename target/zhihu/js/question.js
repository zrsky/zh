(function($) {
    $(".care").click(function() {
        var word = $(this).html();
        if (word == "关注问题") {

            $(this).html("取消关注");
            $(this).css({ "background": "#ccc", "border-color": "transparent" });
        } else {
            $(this).html("关注问题");
            $(this).css({ "background": "#337ab7", "border-color": "#337ab7" });
        }

    });
    $("#wAnswer").click(function() {
        $(".middle .content").css({ "display": "block" });
    })
    $("#submit1").click(function() {
        $(".middle .content").css({ "display": "none" });
        $(".middle .content").css({ "display": "none" });
    });
    $(".change").click(function() {
        $(".modal #topic").val($(".media .topic").html());
        $(".modal #content").val($(".media .answer").html());
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
    console.log($("#comment"))
        // 回复
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
    
    var html = "";
    $(".comment1").click(function() {
        html = $(this).html();
        console.log(html)
        if (html != "收起评论") {
            $(this).html("收起评论");
        } else {
           $(this).html("数据库获取得值")
        }
        $(".comment").toggleClass('active');
    })
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
        //关注
        $(".care_sombody").click(function() {
        var word = $(this).html();
        if (word == "关注他") {

            $(this).html("取消关注");
            $(this).css({ "background": "#ccc", "border-color": "transparent" });
        } else {
            $(this).html("关注他");
            $(this).css({ "background": "#337ab7", "border-color": "#337ab7" });
        }

    });
    // 阅读全文收起

    $(function() {
        $(".readBox").moreText({
            maxLength: 20, //默认最大显示字数，超过...
            mainCell: '.word' //文字容器
        });
    })

})($)