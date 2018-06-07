package com.bysj.service;

import com.bysj.pojo.Article;
import com.bysj.pojo.User;
import com.bysj.pojo.UserArticle;

import java.util.List;

/**
 * Created by super on 2018/4/20 9:52.
 */
public interface UserArticleService {
    UserArticle getUserArticleByArticleId(Integer id);

    void addUserArticleInfo(User user , Article article);

    List<Integer> getArticleIdListByUserId(int id);

}
