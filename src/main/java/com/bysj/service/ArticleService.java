package com.bysj.service;

import com.bysj.dto.UserArticleDto;
import com.bysj.pojo.Article;
import com.bysj.pojo.ArticleComment;
import com.bysj.utils.JsonResult;

import java.util.List;

/**
 * Created by super on 2018/4/19 23:21.
 */
public interface ArticleService {
    JsonResult publishQuestion(Article article);

    List<UserArticleDto> getArticleList(int pageNo,int pageSize);

    Article getArticleById(int id);

    JsonResult updateQuestionByQuestionId(int id, String title, String content);

    List<Article> getArticleListByUserId(int id);

    List<Article> getQuestionListByUserId(int id);

    List<Article> getArticleListByArticleId(List<ArticleComment> articleCommentList);

    List<Article> getQuestionList(int pageNo,int pageSize);

    List<Article> getTheMostCommentOfArticleList(boolean b, int pageNo, int pageSize);

    List<Article> getQuestionArticleListByUserId(int id);

    List<Article> getHadLikedArticleByLikedStr(String liked,int pageNo,int pageSize);

    List<Article> getQuestionListByArticleId(List<ArticleComment> articleCommentList);

    JsonResult addArticle( boolean flag,String title, String content);

    List<Article> getDraftsListByUserId(int pageNo, int pageSize);

    List<Article> getSearchArticleByKeyWord(String key, int pageNo, int pageSize);

    JsonResult changeArticleStatusToDisableByArticleId(int id);

    JsonResult publishDraft(int id);

    JsonResult deleteDraftByArticleId(int id);

    JsonResult deleteArticleByArticleId(int id);
}
