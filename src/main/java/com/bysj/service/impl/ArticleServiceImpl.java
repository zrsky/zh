package com.bysj.service.impl;

import com.bysj.common.RequestHolder;
import com.bysj.dto.UserArticleDto;
import com.bysj.mapper.ArticleMapper;
import com.bysj.pojo.*;
import com.bysj.service.*;
import com.bysj.utils.JsonResult;
import com.github.pagehelper.PageHelper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.UnsupportedEncodingException;
import java.util.*;

/**
 * @author super
 * @create 2018-04-19 23:21
 */
@Service
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    ArticleMapper articleMapper;
    @Autowired
    UserArticleService userArticleService;
    @Autowired
    UserService userService;
    @Autowired
    ArticleCommentService articleCommentService;
    @Autowired
    CommentService commentService;


    @Transactional
    @Override
    public JsonResult publishQuestion(Article article) {
        User user = (User) RequestHolder.getCurrentRequest().getSession().getAttribute("user");
        article.setCreateTime(new Date());
        article.setUserId(user.getId());
        articleMapper.insertSelective(article);
        userArticleService.addUserArticleInfo(user,article);
        return JsonResult.build(200, "提问成功");
    }

    @Override
    public List<UserArticleDto> getArticleList(int pageNo,int pageSize) {
        ArticleExample articleExample = new ArticleExample();
        ArticleExample.Criteria criteria = articleExample.createCriteria();
        criteria.andStatusEqualTo(1);
        //0问题，1文章
        //criteria.andTypeEqualTo(0);
        articleExample.setOrderByClause(" create_time desc");
        PageHelper.startPage(pageNo, pageSize);
        List<Article> articleList = articleMapper.selectByExample(articleExample);
        ArrayList<UserArticleDto> userArticleDtoList = new ArrayList<>();
        for (Article article : articleList) {
            UserArticle userArticle = userArticleService.getUserArticleByArticleId(article.getId());
            User user = userService.getUserByUserId(userArticle.getUserId());
            UserArticleDto userArticleDto = new UserArticleDto();
            userArticleDto.setArticle(article);
            userArticleDto.setUser(user);
            List<ArticleComment> articleCommentList = articleCommentService.getArticleCommentListByArticleId(article.getId());

            userArticleDto.setCommentCount(articleCommentList.size());
            userArticleDtoList.add(userArticleDto);
        }
        return userArticleDtoList;
    }

    @Override
    public Article getArticleById(int id) {
        Article article = articleMapper.selectByPrimaryKey(id);
        article.setReaded(article.getReaded()+1);
        articleMapper.updateByPrimaryKey(article);
        return article;
    }

    @Override
    public JsonResult updateQuestionByQuestionId(int id, String title, String content) {
        Article article = articleMapper.selectByPrimaryKey(id);
        article.setTitle(title);
        article.setContent(content);
        article.setUpdateTime(new Date());
        int i = articleMapper.updateByPrimaryKey(article);
        if (i > 0) {
            return JsonResult.build(200, "修改成功");
        }
        return JsonResult.build(300, "系统繁忙，请稍后重试");
    }

    @Override
    public List<Article> getArticleListByUserId(int id) {

        return getArticlesOrQuestions(id, true);
    }

    @Override
    public List<Article> getQuestionListByUserId(int id) {
        return getArticlesOrQuestions(id, false);
    }

    @Override
    public List<Article> getArticleListByArticleId(List<ArticleComment> articleCommentList) {
        if (articleCommentList.size() > 0) {
            ArrayList<Integer> articleIdList = new ArrayList<>();
            for (ArticleComment articleComment : articleCommentList) {
                articleIdList.add(articleComment.getQuestionId());
            }
            ArticleExample articleExample = new ArticleExample();
            ArticleExample.Criteria criteria = articleExample.createCriteria();
            criteria.andIdIn(articleIdList);
            return articleMapper.selectByExample(articleExample);
        }
        return new ArrayList<>();
    }

    @Override
    public List<Article> getQuestionList(int pageNo,int pageSize) {
        ArticleExample articleExample = new ArticleExample();
        ArticleExample.Criteria criteria = articleExample.createCriteria();
        criteria.andTypeEqualTo(0);
        PageHelper.startPage(pageNo, pageSize);
        return articleMapper.selectByExample(articleExample);
    }

    @Override
    public List<Article> getTheMostCommentOfArticleList(boolean b, int pageNo, int pageSize) {

        if (b){
            ArticleExample articleExample = new ArticleExample();
            ArticleExample.Criteria criteria = articleExample.createCriteria();

           Calendar calendar = new GregorianCalendar();
            int day = calendar.get(Calendar.DAY_OF_YEAR);
            calendar.set(Calendar.DAY_OF_YEAR, day-1);
            criteria.andCreateTimeGreaterThanOrEqualTo(calendar.getTime());
            criteria.andCreateTimeLessThanOrEqualTo(new Date());
            articleExample.setOrderByClause(" readed desc ");
            PageHelper.startPage(pageNo, 5);
            List<Article> articleList = articleMapper.selectByExample(articleExample);
            return articleList;

        }else{
            ArticleExample articleExample = new ArticleExample();
            ArticleExample.Criteria criteria = articleExample.createCriteria();
            articleExample.setOrderByClause(" readed desc ");
            Calendar calendar = new GregorianCalendar();
            int month = calendar.get(Calendar.MONTH);
            calendar.set(Calendar.MONTH, month - 1);
            criteria.andCreateTimeGreaterThanOrEqualTo(calendar.getTime());
            criteria.andCreateTimeLessThanOrEqualTo(new Date());
            PageHelper.startPage(pageNo, 5);
            List<Article> articleList = articleMapper.selectByExample(articleExample);
            return articleList;

       }



    }

    @Override
    public List<Article> getQuestionArticleListByUserId(int id) {

        List<Integer> articleIdList = userArticleService.getArticleIdListByUserId(id);
        if (articleIdList.size() > 0) {
            ArticleExample example = new ArticleExample();
            ArticleExample.Criteria criteria = example.createCriteria();
           example.setOrderByClause(" create_time desc");
            criteria.andIdIn(articleIdList);
            return articleMapper.selectByExample(example);
        } else {
            return new ArrayList<>();
        }
    }

    @Override
    public List<Article> getHadLikedArticleByLikedStr(String str,int pageNo,int pageSize) {
        ArrayList<Integer> result = new ArrayList<>();
        if (StringUtils.isNotBlank(str) && !str.startsWith("[]")) {
            if (str.startsWith("[")) {
                str = str.substring(1, str.length());
            }
            if (str.endsWith("]")) {
                str = str.substring(0, str.length() - 1);
            }
            String[] s = str.split(",");
            for (int i = 0; i < s.length; i++) {
                result.add(Integer.parseInt(s[i].trim()));
            }
        }
        if(result.size()>0){
            ArticleExample articleExample = new ArticleExample();
            ArticleExample.Criteria criteria = articleExample.createCriteria();
            criteria.andIdIn(result);
            articleExample.setOrderByClause(" create_time desc");
            return  articleMapper.selectByExample(articleExample);
        }
        return null;
    }

    @Override
    public List<Article> getQuestionListByArticleId(List<ArticleComment> articleCommentList) {
        if (articleCommentList.size() > 0) {
            ArrayList<Integer> articleIdList = new ArrayList<>();
            for (ArticleComment articleComment : articleCommentList) {
                articleIdList.add(articleComment.getQuestionId());
            }
            ArticleExample articleExample = new ArticleExample();
            ArticleExample.Criteria criteria = articleExample.createCriteria();
            criteria.andIdIn(articleIdList);
            criteria.andTypeEqualTo(0);
            return articleMapper.selectByExample(articleExample);
        }
        return new ArrayList<>();
    }

    @Override
    public JsonResult addArticle(boolean flag, String title, String content) {
        User user = (User) RequestHolder.getCurrentRequest().getSession().getAttribute("user");
        Article article = new Article();
        article.setTitle(title);
        article.setContent(content);
        article.setCreateTime(new Date());
        article.setType(1);
        article.setUserId(user.getId());
        if(flag)
            article.setStatus(1);
        else
            article.setStatus(0);
        int i = articleMapper.insertSelective(article);
        userArticleService.addUserArticleInfo(user,article);
        if(i>0){
            return JsonResult.build(200, "发布成功");
        }
        return JsonResult.build(300, "系统繁忙，请稍后重试");
    }

    @Override
    public List<Article> getDraftsListByUserId(int pageNo, int pageSize) {
        ArticleExample example = new ArticleExample();
        example.setOrderByClause(" create_time desc");
        ArticleExample.Criteria criteria = example.createCriteria();
        User user = (User) RequestHolder.getCurrentRequest().getSession().getAttribute("user");
        List<Integer> articleIdList = userArticleService.getArticleIdListByUserId(user.getId());
        criteria.andIdIn(articleIdList);
        criteria.andStatusEqualTo(0);
        return  articleMapper.selectByExample(example);
    }

    @Override
    public List<Article> getSearchArticleByKeyWord(String key, int pageNo, int pageSize) {
        try {
             key=new String(key.getBytes("ISO-8859-1"),"utf-8");
            System.out.println(key);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        ArrayList<Integer> idList = new ArrayList<>();
        ArticleExample articleExample1 = new ArticleExample();
        ArticleExample.Criteria criteria1 = articleExample1.createCriteria();
        criteria1.andTitleLike("% " + key + "%");
        criteria1.andStatusEqualTo(1);
        List<Article> articleList1 = articleMapper.selectByExample(articleExample1);
        if(articleList1.size()>0){

            for (Article article : articleList1) {
                idList.add(article.getId());
            }
        }
        ArticleExample articleExample2 = new ArticleExample();
        ArticleExample.Criteria criteria2 = articleExample2.createCriteria();
        criteria2.andContentLike("%" + key + "%");
        criteria2.andStatusEqualTo(1);
        List<Article> articleList2 = articleMapper.selectByExample(articleExample2);
        if(articleList2.size()>0){

            for (Article article : articleList2) {
                if (!idList.contains(article.getId())) {
                    idList.add(article.getId());
                }
            }
        }
        ArticleExample articleExample = new ArticleExample();
        ArticleExample.Criteria criteria = articleExample.createCriteria();
        if(idList.size()>0){

            criteria.andIdIn(idList);
            PageHelper.startPage(pageNo, pageSize);
            return articleMapper.selectByExample(articleExample);
        }

        return null;
    }

    @Override
    public JsonResult changeArticleStatusToDisableByArticleId(int id) {
        Article article = articleMapper.selectByPrimaryKey(id);
        article.setStatus(0);
        int i = articleMapper.updateByPrimaryKeySelective(article);
        if(i>0){
            return JsonResult.build(200, "删除成功");
        }
        return JsonResult.build(300, "删除失败");
    }

    @Override
    public JsonResult publishDraft(int id) {
        Article article = articleMapper.selectByPrimaryKey(id);
        article.setStatus(1);
        articleMapper.updateByPrimaryKeySelective(article);
        return JsonResult.build(200,"发布成功");
    }

    @Override
    public JsonResult deleteDraftByArticleId(int id) {
        int i = articleMapper.deleteByPrimaryKey(id);
        if(i>0){

            return JsonResult.build(200,"删除成功");
        }
        return JsonResult.build(300,"删除失败");
    }

    @Override
    public JsonResult deleteArticleByArticleId(int id) {
        List<ArticleComment> commentListByArticleList = articleCommentService.getArticleCommentListByArticleId(id);
        if(commentListByArticleList.size()>0){
            for (ArticleComment articleComment : commentListByArticleList) {
                commentService.deleteCommentByCommentId(articleComment.getCommentId());
                articleCommentService.deleteArticleCommentByArticleCommentId(articleComment.getId());
            }

        }
        int i = articleMapper.deleteByPrimaryKey(id);
        if(i>0){
            return JsonResult.build(200, "删除成功");
        }
        return JsonResult.build(300, "删除失败");
    }

    private List<Article> getArticlesOrQuestions(int id, boolean flag) {
        List<Integer> articleIdList = userArticleService.getArticleIdListByUserId(id);
        if (articleIdList.size() > 0) {


            ArticleExample example = new ArticleExample();
            ArticleExample.Criteria criteria = example.createCriteria();
            if (flag) {
                criteria.andTypeEqualTo(1);
            } else {
                criteria.andTypeEqualTo(0);
            }
            criteria.andIdIn(articleIdList);
            return articleMapper.selectByExample(example);
        } else {
            return new ArrayList<>();
        }
    }
}
