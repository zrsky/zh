(function(window, $) {

    $(".navigator .nav li").on("click", function() {
        $(".navigator .nav li").removeClass('active');
        $(this).addClass("active");
    })

// 阅读全文收起

    $(function() {
        $(".media-body").moreText({
            maxLength: 20, //默认最大显示字数，超过...
            mainCell: '.word' //文字容器
        });
    })
  // tooltips
   $('[data-toggle="tooltip"]').tooltip();

   // 首页

   $('.content #submit').on("click",function(e){
   		var topic = $("#topic").val();
   		var content = $("#content").val();
   		if(topic==""){
   			alert("标题不能为空");
   			return false;
   		}else if(content=="") {
   			alert("描述内容不能为空");
   			return false;
   		}
      $("#myModal").hide();
      $(".modal-backdrop").hide();
   			// window.open("./myIndex.html")
   		var dataParam = $("#questionForm").serialize();
   		console.log(typeof dataParam)
   		$.ajax({
	   	url: '../php/index.php',
	   	type: 'post',
	   	dataType: 'json',
	   	data: dataParam,
	   })
	   .done(function(data) {
	   	console.log("data");
	   	window.open("../myIndex.html");
	   })
	   .fail(function(e) {
	   	console.log("error"+e.message);
	   })
	   .always(function() {
	   	console.log("complete");
	   });
   })
    var html = "";
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
        // 点击获取链接
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
})(window, $)