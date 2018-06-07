package com.bysj.service;

import com.bysj.pojo.ArticleComment;
import com.bysj.pojo.Comment;
import com.bysj.utils.JsonResult;

import java.util.List; /**
 * Created by super on 2018/4/20 8:55.
 */
public interface CommentService {
    List<Comment> getCommentListByArticleComment(List<ArticleComment> articleCommentList);

    Comment addCommentInfo(int userId, String content);

    List<Comment> getCommentListByUserId(int id);

    JsonResult deleteCommentByCommentId(int id);

}
