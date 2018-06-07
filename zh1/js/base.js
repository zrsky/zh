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
            console.log(this)
            console.log(TextBox)
            var openBtn = opts.openBtn;
            var closeBtn = opts.closeBtn;

            var countText = TextBox.html();
            console.log(countText)
            var newHtml = '';
            if (countText.length > maxLength) {
                newHtml = countText.substring(0, maxLength) + '...<span class="more">' + openBtn + '</span>';
            } else {
                newHtml = countText;
            }
            TextBox.html(newHtml);
            TextBox.on("click", ".more", function() {
                if ($(this).text() == openBtn) {
                    TextBox.html(countText + ' <span class="more">' + closeBtn + '</span>');
                } else {
                    TextBox.html(newHtml);
                }
            })
        })
    }