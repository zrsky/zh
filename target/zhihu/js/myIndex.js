$(function() {


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

    $(".write input").click(function(e) {
        $(this).css({ "display": "inline-block" });

         e.stopPropagation();
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

  function comHideOrShow(){
      $(".comment1").click(function(e) {
          alert(111)
          e.stopPropagation();
          var index = $(".comment1").index(this);
          console.log(index)
          html = $(this).html();
          console.log(html)
          if (html != "收起评论") {
              $(this).html("收起评论");
          } else {
              $(this).html("添加评论")
          }
          $(".comment").eq(index).toggleClass('active');
      })
  }
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
        $(".readBox").moreText({
            maxLength: 50, //默认最大显示字数，超过...
            mainCell: '.word' //文字容器
        });
    })


