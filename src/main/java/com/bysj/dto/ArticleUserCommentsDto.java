package com.bysj.dto;

import com.bysj.pojo.Article;
import com.bysj.pojo.Comment;
import com.bysj.pojo.User;

import java.util.List;

/**
 * @author super
 * @create 2018-04-20 9:30
 */

public class ArticleUserCommentsDto {
    private Article article;
    private User user;
    private List<Comment> comments;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }
}
