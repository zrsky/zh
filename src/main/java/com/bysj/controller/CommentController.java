package com.bysj.controller;

import com.bysj.dto.ArticleUserCommentsDto;
import com.bysj.pojo.Article;
import com.bysj.pojo.ArticleComment;
import com.bysj.pojo.Comment;
import com.bysj.service.ArticleCommentService;
import com.bysj.service.ArticleService;
import com.bysj.service.CommentService;
import com.bysj.service.UserService;
import com.bysj.utils.JsonResult;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * @author super
 * @create 2018-04-20 8:54
 */
@Controller
public class CommentController {
    @Autowired
    CommentService commentService;
    @Autowired
    ArticleCommentService articleCommentService;
    @Autowired
    UserService userService;
    @Autowired
    ArticleService articleService;

    @RequestMapping("/submitQuestionAnswer.action")
    @ResponseBody
    public JsonResult submitQuestionAnswer(@RequestParam("userId")int userId,@RequestParam("questionId")int questionId,@RequestParam("content")String content){
        if (StringUtils.isBlank(content)) {
            return JsonResult.build(300, "回答内容不能为空");
        }
        Comment comment = commentService.addCommentInfo(userId, content);
       return articleCommentService.addArticleComment(comment.getId(),questionId);
    }

    @RequestMapping("/getArticleCommentListByArticleId.action")
    @ResponseBody
    public List<Comment> getArticleCommentListByArticleId(@RequestParam("id")int id){
        List<ArticleComment> articleCommentList = articleCommentService.getArticleCommentListByArticleId(id);
        return  commentService.getCommentListByArticleComment(articleCommentList);
    }

    @RequestMapping("/getCommentListByUserId.action")
    @ResponseBody
    public List<ArticleUserCommentsDto> getCommentListByUserId(@RequestParam("id")int id){
        List<Comment> commentList = commentService.getCommentListByUserId(id);
        List<ArticleComment> articleCommentList = articleCommentService.getArticleCommentListByCommentList(commentList);

        List<Article> articleList = articleService.getQuestionListByArticleId(articleCommentList);
        if(articleList.size()>0){
            ArrayList<ArticleUserCommentsDto> articleCommentDtoList = new ArrayList<>();
            for (Article article : articleList) {
                ArticleUserCommentsDto articleCommentDto = new ArticleUserCommentsDto();
                articleCommentDto.setArticle(article);
                List<ArticleComment> articleCommentsList = articleCommentService.getArticleCommentListByArticleId(article.getId());
                List<Comment> comments = commentService.getCommentListByArticleComment(articleCommentsList);
                articleCommentDto.setComments(comments);
                articleCommentDtoList.add(articleCommentDto);
            }
            return articleCommentDtoList;
        }
        return new ArrayList<>();
    }

    @RequestMapping("/deleteCommentByCommentId.action")
    @ResponseBody
    public JsonResult deleteCommentByCommentId(@RequestParam("id")int id){
        return commentService.deleteCommentByCommentId(id);
    }
}
