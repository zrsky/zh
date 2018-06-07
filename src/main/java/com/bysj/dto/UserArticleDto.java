package com.bysj.dto;

import com.bysj.pojo.Article;
import com.bysj.pojo.User;

/**
 * @author super
 * @create 2018-04-20 9:49
 */

public class UserArticleDto {
    private Article article;
    private User user;
    private int commentCount;

    public int getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(int commentCount) {
        this.commentCount = commentCount;
    }

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
