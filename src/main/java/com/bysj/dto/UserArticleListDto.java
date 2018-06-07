package com.bysj.dto;

import com.bysj.pojo.Article;
import com.bysj.pojo.User;

import java.util.List;

/**
 * @author super
 * @create 2018-04-20 22:50
 */

public class UserArticleListDto {
    private User user;
    private List<Article> articleList;
    private List<Article> questionList;
    private int followedCount;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Article> getArticleList() {
        return articleList;
    }

    public void setArticleList(List<Article> articleList) {
        this.articleList = articleList;
    }

    public List<Article> getQuestionList() {
        return questionList;
    }

    public void setQuestionList(List<Article> questionList) {
        this.questionList = questionList;
    }

    public int getFollowedCount() {
        return followedCount;
    }

    public void setFollowedCount(int followedCount) {
        this.followedCount = followedCount;
    }
}
