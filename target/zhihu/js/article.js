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

     $(".huifuBox").eq(index).toggleClass('active');
 })
 $(function() {
     $(".topic").moreText({
         maxLength: 5, //默认最大显示字数，超过...
         mainCell: '.word' //文字容器
     });
 })

 // 赞
 $(".zan").click(function(e) {
     var num = parseInt($(this).children('i').html());
     var index = $(".zan").index($(this));
     var iconEle = $(this).children('span');
     console.log(iconEle)
     var color = $(this).children("i").css("color");
     if (color == "rgb(0, 0, 255)") {
         num--;
         console.log($(".svg_zan").eq(index))
         $(".svg_zan").eq(index).css({ "fill": "#9fadc7" });
         $(this).children("i").css({ "color": "#9fadc7" });
     } else {
         num++;
         $(".svg_zan").eq(index).css({ "fill": "blue" });
         $(this).children("i").css({ "color": "blue" });
     }

     $(this).children('i').html(num);
     console.log(e)
     e.stopPropagation();
 })