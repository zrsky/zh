package com.bysj.service;

import com.bysj.pojo.ArticleComment;
import com.bysj.pojo.Comment;
import com.bysj.utils.JsonResult;

import java.util.List;

/**
 * Created by super on 2018/4/20 10:30.
 */
public interface ArticleCommentService {
    List<ArticleComment> getArticleCommentListByArticleId(int id);

    JsonResult addArticleComment(Integer commentId, int questionId);

    List<ArticleComment> getArticleCommentListByCommentList(List<Comment> commentList);

    void getArticleCommentByCommentId(int id);

    void deleteArticleCommentByArticleCommentId(Integer id);
}
