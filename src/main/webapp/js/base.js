    $.fn.moreText = function(options) {
        var defaults = {
            // maxLength: 50,
            // mainCell: ".word",
            openBtn: '阅读全文',
            closeBtn: '收起'
        }
        return this.each(function() {
            var _this = $(this);

            var opts = $.extend({}, defaults, options);
            var maxLength = opts.maxLength;
            var TextBox = $(opts.mainCell, _this);
            var openBtn = opts.openBtn;
            var closeBtn = opts.closeBtn;

            var countText = TextBox.html();
            var newHtml = '';
            if (countText.length > maxLength) {
                newHtml = countText.substring(0, maxLength) + '...<span class="more">' + openBtn + '</span>';
            } else {
                newHtml = countText;
            }
            TextBox.html(newHtml);
            TextBox.on("click", ".more", function(e) {
                stopDefault(e);
                console.log(countText)
                if ($(this).text() == openBtn) {
                    console.log(countText)
                    TextBox.html(countText + ' <span class="more">' + closeBtn + '</span>');
                } else {
                    TextBox.html(newHtml);
                }

            })
        })
    }
    //阻止冒泡
    //阻止浏览器的默认行为
    function stopDefault(e) {
        //阻止默认浏览器动作(W3C)
        if (e && e.preventDefault)
            e.preventDefault();
        //IE中阻止函数器默认动作的方式
        else
            window.event.returnValue = false;
        return false;
    }
    //js日期格式化
    Date.prototype.format = function(fmt) {
        var o = {
            "M+": this.getMonth() + 1, //月份
            "d+": this.getDate(), //日
            "h+": this.getHours(), //小时
            "m+": this.getMinutes(), //分
            "s+": this.getSeconds(), //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S": this.getMilliseconds() //毫秒
        };
        if (/(y+)/.test(fmt)) {
            fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        }
        for (var k in o) {
            if (new RegExp("(" + k + ")").test(fmt)) {
                fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
            }
        }
        return fmt;
    };

    function limit() {
        $(".readBox").moreText({
            maxLength: 49, //默认最大显示字数，超过...
            mainCell: '.word' //文字容器
        });
        console.log("limit")
    }
    limit();

