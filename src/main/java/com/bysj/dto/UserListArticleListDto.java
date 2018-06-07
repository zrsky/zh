package com.bysj.dto;

import com.bysj.pojo.Article;
import com.bysj.pojo.User;

import java.util.List;

/**
 * @author super
 * @create 2018-04-21 17:41
 */

public class UserListArticleListDto {
   private  List<User> users;
    private List<Article> articles;

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public List<Article> getArticles() {
        return articles;
    }

    public void setArticles(List<Article> articles) {
        this.articles = articles;
    }
}
