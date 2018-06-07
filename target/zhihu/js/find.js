 // 阅读全文收起
 $(function() {
        $(".readBox").moreText({
            maxLength: 20, //默认最大显示字数，超过...
            mainCell: '.word' //文字容器
        });
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
           $(this).html("添加评论")
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
    $(".care").click(function() {
        var index = $(".care").index(this);
        console.log(index)
        html = $(this).html();
        console.log(html)
        if (html != "取消关注") {
            $(this).html("取消关注");
        } else {
           $(this).html("关注问题")
        }
    })
