package com.bysj.service.impl;

import com.bysj.mapper.UserArticleMapper;
import com.bysj.pojo.Article;
import com.bysj.pojo.User;
import com.bysj.pojo.UserArticle;
import com.bysj.pojo.UserArticleExample;
import com.bysj.service.UserArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author super
 * @create 2018-04-20 9:53
 */
@Service
public class UserArticleServiceImpl implements UserArticleService {
    @Autowired
    UserArticleMapper userArticleMapper;
    @Override
    public UserArticle getUserArticleByArticleId(Integer id) {
        UserArticleExample userArticleExample = new UserArticleExample();
        UserArticleExample.Criteria criteria = userArticleExample.createCriteria();
        criteria.andArticleIdEqualTo(id);
        List<UserArticle> userArticleList = userArticleMapper.selectByExample(userArticleExample);
        if(userArticleList.size()>0){
            return userArticleList.get(0);
        }
        return null;
    }

    @Override
    public void addUserArticleInfo(User user,Article article) {

        UserArticle userArticle = new UserArticle();
        userArticle.setUserId(user.getId());
        userArticle.setArticleId(article.getId());
        userArticleMapper.insertSelective(userArticle);
    }

    @Override
    public List<Integer> getArticleIdListByUserId(int id) {
        UserArticleExample userArticleExample = new UserArticleExample();
        UserArticleExample.Criteria criteria = userArticleExample.createCriteria();

        criteria.andUserIdEqualTo(id);
        List<UserArticle> userArticleList = userArticleMapper.selectByExample(userArticleExample);
        ArrayList<Integer> list = new ArrayList<>();
        if(userArticleList.size()>0){

            for (UserArticle userArticle : userArticleList) {
                list.add(userArticle.getArticleId());
            }
        }
        return list;

    }

}
