//问题json
var questions = [{
	"id": 6,
	"categoryId": null,
	"title": "垃圾thgdyhrgkjhj",
	"categoryName": "故事",
	"content": "卡死",
	"createTime": 1524190294000,
	"updateTime": 1524221223000,
	"status": 1,
	"type": 0
}, {
	"id": 7,
	"categoryId": null,
	"title": "黄飞鸿",
	"categoryName": "故事",
	"content": "大佬好",
	"createTime": 1524190403000,
	"updateTime": 1524201372000,
	"status": 1,
	"type": 0
}, {
	"id": 8,
	"categoryId": null,
	"title": "狗带",
	"categoryName": "健康",
	"content": "狗带是什么鬼？？",
	"createTime": 1524233730000,
	"updateTime": null,
	"status": 1,
	"type": 0
}];
//文章列表
var articles = [{
	"article": {
		"id": 6,
		"categoryId": null,
		"title": "垃圾thgdyhrgkjhj",
		"categoryName": "故事",
		"content": "卡死",
		"createTime": 1524190294000,
		"updateTime": 1524221223000,
		"status": 1,
		"type": 0
	},
	"user": null,
	"comments": [{
		"id": 1,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活",
		"createTime": 1524197490000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 2,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "好几款时代峰峻看看",
		"createTime": 1524197624000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 3,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "而特殊的",
		"createTime": 1524197681000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 4,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "就开始对话框",
		"createTime": 1524198866000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 5,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "大范甘迪联发科",
		"createTime": 1524199087000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 11,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "狗带",
		"createTime": 1524207374000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 12,
		"fromUserId": 5,
		"fromUserName": "zs",
		"content": "张瑞构思",
		"createTime": 1524218287000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 14,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "tyyryrtu yt",
		"createTime": 1524221214000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 15,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "讽德诵功和",
		"createTime": 1524233368000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 16,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "地方过分",
		"createTime": 1524233464000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 17,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "发过火",
		"createTime": 1524233475000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 20,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "发过火讲话稿快乐就好",
		"createTime": 1524233596000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}]
}, {
	"article": {
		"id": 7,
		"categoryId": null,
		"title": "黄飞鸿",
		"categoryName": "故事",
		"content": "大佬好",
		"createTime": 1524190403000,
		"updateTime": 1524201372000,
		"status": 1,
		"type": 0
	},
	"user": null,
	"comments": [{
		"id": 6,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "滚",
		"createTime": 1524199620000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 7,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "垃圾",
		"createTime": 1524199682000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 8,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "收党费开机后空间",
		"createTime": 1524199711000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 9,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "收党费看了的身份个",
		"createTime": 1524201390000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 10,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "嘻嘻嘻",
		"createTime": 1524201462000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 13,
		"fromUserId": 5,
		"fromUserName": "zs",
		"content": "地方过分",
		"createTime": 1524218372000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 18,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "贩毒更好",
		"createTime": 1524233494000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 19,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "法国红酒",
		"createTime": 1524233505000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}]
}, {
	"article": {
		"id": 8,
		"categoryId": null,
		"title": "狗带",
		"categoryName": "健康",
		"content": "狗带是什么鬼？？",
		"createTime": 1524233730000,
		"updateTime": null,
		"status": 1,
		"type": 0
	},
	"user": null,
	"comments": [{
		"id": 21,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "狗知道",
		"createTime": 1524233774000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}]
}]



//文章列表渲染
// var aUpdateTime;
// articles.forEach(function(article, index) {
//     aUpdateTime = new Date(parseInt(article.aUpdateTime)).format("yyyy-MM-dd hh:mm:ss")
//     $('#article').append('<div class="content"><div class="topic"><a href="./article.html">'+article.title +'</a><div class="img"><img width="60px" src="images/avatar.jpg" alt=""><span style="font-size:18px;margin-left: 10px;">张瑞</span></div><p class="word">'+ article.content +'</p></div><p class="time">时间：<span>' + aUpdateTime + '</span> • <span class="edit">删除</span></p><div class="bottom"><p><span><svg class="Zi Zi--Comment Button-zi" fill" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M10.241 19.313a.97.97 0 0 0-.77.2 7.908 7.908 0 0 1-3.772 1.482.409.409 0 0 1-.38-.637 5.825 5.825 0 0 0 1.11-2.237.605.605 0 0 0-.227-.59A7.935 7.935 0 0 1 3 11.25C3 6.7 7.03 3 12 3s9 3.7 9 8.25-4.373 9.108-10.759 8.063z" fill-rule="evenodd"></path></svg></span><i class="comment1" style="">'+ article.comments.length +'条评论</i><span><svg class="Zi Zi--Share Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M2.931 7.89c-1.067.24-1.275 1.669-.318 2.207l5.277 2.908 8.168-4.776c.25-.127.477.198.273.39L9.05 14.66l.927 5.953c.18 1.084 1.593 1.376 2.182.456l9.644-15.242c.584-.892-.212-2.029-1.234-1.796L2.93 7.89z" fill-rule="evenodd"></path></svg></span><i>分享</i><a class="collect"><span><svg class="Zi Zi--Star Button-zi" fill="currentColor" viewBox="0 0 24 24" width="1.2em" height="1.2em"><path d="M5.515 19.64l.918-5.355-3.89-3.792c-.926-.902-.639-1.784.64-1.97L8.56 7.74l2.404-4.871c.572-1.16 1.5-1.16 2.072 0L15.44 7.74l5.377.782c1.28.186 1.566 1.068.64 1.97l-3.89 3.793.918 5.354c.219 1.274-.532 1.82-1.676 1.218L12 18.33l-4.808 2.528c-1.145.602-1.896.056-1.677-1.218z" fill-rule="evenodd"></path></svg></span><i>收藏</i></a></p><div class="comment"><div class="answer" id="answer"><div class="main"><div class="media" style="margin-bottom:30px;"><div class="countCtm">'+ article.comments.length +'</div></div></div></div></div></div></div></div>')
// })
var states = [{
	"article": {
		"id": 7,
		"categoryId": null,
		"title": "黄飞鸿",
		"categoryName": "故事",
		"content": "大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好大佬好",
		"createTime": 1524190403000,
		"updateTime": 1524201372000,
		"status": 1,
		"type": 0
	},
	"user": null,
	"comments": [{
		"id": 6,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "滚",
		"createTime": 1524199620000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 7,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "垃圾",
		"createTime": 1524199682000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 8,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "收党费开机后空间",
		"createTime": 1524199711000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 9,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "收党费看了的身份个",
		"createTime": 1524201390000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 10,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "嘻嘻嘻",
		"createTime": 1524201462000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 13,
		"fromUserId": 5,
		"fromUserName": "zs",
		"content": "地方过分",
		"createTime": 1524218372000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 18,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "贩毒更好",
		"createTime": 1524233494000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 19,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "法国红酒",
		"createTime": 1524233505000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}]
}, {
	"id": 6,
	"categoryId": null,
	"title": "垃圾thgdyhrgkjhj",
	"categoryName": "故事",
	"content": "卡死",
	"createTime": 1524190294000,
	"updateTime": 1524221223000,
	"status": 1,
	"type": 0
}, {
	"id": 7,
	"categoryId": null,
	"title": "黄飞鸿",
	"categoryName": "故事",
	"content": "大佬好",
	"createTime": 1524190403000,
	"updateTime": 1524201372000,
	"status": 1,
	"type": 0
}, {
	"id": 8,
	"categoryId": null,
	"title": "狗带",
	"categoryName": "健康",
	"content": "狗带是什么鬼？？",
	"createTime": 1524233730000,
	"updateTime": null,
	"status": 1,
	"type": 0
}, {
	"article": {
		"id": 6,
		"categoryId": null,
		"title": "垃圾thgdyhrgkjhj",
		"categoryName": "故事",
		"content": "卡死",
		"createTime": 1524190294000,
		"updateTime": 1524221223000,
		"status": 1,
		"type": 0
	},
	"user": null,
	"comments": [{
		"id": 1,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活",
		"createTime": 1524197490000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 2,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "好几款时代峰峻看看",
		"createTime": 1524197624000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 3,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "而特殊的",
		"createTime": 1524197681000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 4,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "就开始对话框",
		"createTime": 1524198866000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 5,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "大范甘迪联发科",
		"createTime": 1524199087000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 11,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "狗带",
		"createTime": 1524207374000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 12,
		"fromUserId": 5,
		"fromUserName": "zs",
		"content": "张瑞构思",
		"createTime": 1524218287000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 14,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "tyyryrtu yt",
		"createTime": 1524221214000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 15,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "讽德诵功和",
		"createTime": 1524233368000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 16,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "地方过分",
		"createTime": 1524233464000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 17,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "发过火",
		"createTime": 1524233475000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 20,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "发过火讲话稿快乐就好",
		"createTime": 1524233596000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}]
}];

var finds = [{
	"article": {
		"id": 7,
		"categoryId": null,
		"title": "黄飞鸿",
		"categoryName": "故事",
		"content": "大佬好",
		"createTime": 1524190403000,
		"updateTime": 1524201372000,
		"status": 1,
		"type": 0,
		"readed": 2
	},
	"user": {
		"id": 4,
		"username": "admin",
		"password": "21232f297a57a5a743894a0e4a801fc3",
		"mobile": "13512344321",
		"email": null,
		"sex": null,
		"career": null,
		"role": null,
		"status": 1,
		"remark": null,
		"createTime": 1524149260000,
		"updateTime": null,
		"liked": "[7, 6]",
		"shared": null,
		"thanked": null,
		"url": null,
		"followed": "[5, 4]"
	},
	"comments": [{
		"id": 6,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "滚",
		"createTime": 1524199620000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 7,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "垃圾",
		"createTime": 1524199682000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 8,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "收党费开机后空间",
		"createTime": 1524199711000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 9,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "收党费看了的身份个",
		"createTime": 1524201390000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 10,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "嘻嘻嘻",
		"createTime": 1524201462000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 13,
		"fromUserId": 5,
		"fromUserName": "zs",
		"content": "地方过分",
		"createTime": 1524218372000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 18,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "贩毒更好",
		"createTime": 1524233494000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 19,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "法国红酒",
		"createTime": 1524233505000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}]
}, {
	"article": {
		"id": 6,
		"categoryId": null,
		"title": "垃圾thgdyhrgkjhj",
		"categoryName": "故事",
		"content": "卡死",
		"createTime": 1524190294000,
		"updateTime": 1524221223000,
		"status": 1,
		"type": 0,
		"readed": 1
	},
	"user": {
		"id": 4,
		"username": "admin",
		"password": "21232f297a57a5a743894a0e4a801fc3",
		"mobile": "13512344321",
		"email": null,
		"sex": null,
		"career": null,
		"role": null,
		"status": 1,
		"remark": null,
		"createTime": 1524149260000,
		"updateTime": null,
		"liked": "[7, 6]",
		"shared": null,
		"thanked": null,
		"url": null,
		"followed": "[5, 4]"
	},
	"comments": [{
		"id": 1,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活",
		"createTime": 1524197490000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 2,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "好几款时代峰峻看看",
		"createTime": 1524197624000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 3,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "而特殊的",
		"createTime": 1524197681000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 4,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "就开始对话框",
		"createTime": 1524198866000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 5,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "大范甘迪联发科",
		"createTime": 1524199087000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 11,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "狗带",
		"createTime": 1524207374000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 12,
		"fromUserId": 5,
		"fromUserName": "zs",
		"content": "张瑞构思",
		"createTime": 1524218287000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 14,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "tyyryrtu yt",
		"createTime": 1524221214000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 15,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "讽德诵功和",
		"createTime": 1524233368000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 16,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "地方过分",
		"createTime": 1524233464000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 17,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "发过火",
		"createTime": 1524233475000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 20,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "发过火讲话稿快乐就好",
		"createTime": 1524233596000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}]
},{
	"id": 6,
	"categoryId": null,
	"title": "垃圾thgdyhrgkjhj",
	"categoryName": "故事",
	"content": "卡死",
	"createTime": 1524190294000,
	"updateTime": 1524221223000,
	"status": 1,
	"type": 0
}];
var finds1 = [{
	"article": {
		"id": 7,
		"categoryId": null,
		"title": "黄飞鸿吃粑粑",
		"categoryName": "故事",
		"content": "大佬好",
		"createTime": 1524190403000,
		"updateTime": 1524201372000,
		"status": 1,
		"type": 0,
		"readed": 2
	},
	"user": {
		"id": 4,
		"username": "admin",
		"password": "21232f297a57a5a743894a0e4a801fc3",
		"mobile": "13512344321",
		"email": null,
		"sex": null,
		"career": null,
		"role": null,
		"status": 1,
		"remark": null,
		"createTime": 1524149260000,
		"updateTime": null,
		"liked": "[7, 6]",
		"shared": null,
		"thanked": null,
		"url": null,
		"followed": "[5, 4]"
	},
	"comments": [{
		"id": 6,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "滚",
		"createTime": 1524199620000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 7,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "垃圾",
		"createTime": 1524199682000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 8,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "收党费开机后空间",
		"createTime": 1524199711000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 9,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "收党费看了的身份个",
		"createTime": 1524201390000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 10,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "嘻嘻嘻",
		"createTime": 1524201462000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 13,
		"fromUserId": 5,
		"fromUserName": "zs",
		"content": "地方过分",
		"createTime": 1524218372000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 18,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "贩毒更好",
		"createTime": 1524233494000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 19,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "法国红酒",
		"createTime": 1524233505000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}]
}, {
	"article": {
		"id": 6,
		"categoryId": null,
		"title": "垃圾thgdyhrgkjhj",
		"categoryName": "故事",
		"content": "卡死",
		"createTime": 1524190294000,
		"updateTime": 1524221223000,
		"status": 1,
		"type": 0,
		"readed": 1
	},
	"user": {
		"id": 4,
		"username": "admin",
		"password": "21232f297a57a5a743894a0e4a801fc3",
		"mobile": "13512344321",
		"email": null,
		"sex": null,
		"career": null,
		"role": null,
		"status": 1,
		"remark": null,
		"createTime": 1524149260000,
		"updateTime": null,
		"liked": "[7, 6]",
		"shared": null,
		"thanked": null,
		"url": null,
		"followed": "[5, 4]"
	},
	"comments": [{
		"id": 1,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活的的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活的方法都干活方法都干活",
		"createTime": 1524197490000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 2,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "好几款时代峰峻看看",
		"createTime": 1524197624000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 3,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "而特殊的",
		"createTime": 1524197681000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 4,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "就开始对话框",
		"createTime": 1524198866000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 5,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "大范甘迪联发科",
		"createTime": 1524199087000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 11,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "狗带",
		"createTime": 1524207374000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 12,
		"fromUserId": 5,
		"fromUserName": "zs",
		"content": "张瑞构思",
		"createTime": 1524218287000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 14,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "tyyryrtu yt",
		"createTime": 1524221214000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 15,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "讽德诵功和",
		"createTime": 1524233368000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 16,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "地方过分",
		"createTime": 1524233464000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 17,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "发过火",
		"createTime": 1524233475000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}, {
		"id": 20,
		"fromUserId": 4,
		"fromUserName": "admin",
		"content": "发过火讲话稿快乐就好",
		"createTime": 1524233596000,
		"status": 1,
		"toUserId": null,
		"toUserName": null,
		"commentId": 0
	}]
},{
	"id": 6,
	"categoryId": null,
	"title": "垃圾thgdyhrgkjhj",
	"categoryName": "故事",
	"content": "卡死",
	"createTime": 1524190294000,
	"updateTime": 1524221223000,
	"status": 1,
	"type": 0
}];