package com.bysj.service.impl;

import com.bysj.mapper.ArticleCommentMapper;
import com.bysj.pojo.ArticleComment;
import com.bysj.pojo.ArticleCommentExample;
import com.bysj.pojo.Comment;
import com.bysj.service.ArticleCommentService;
import com.bysj.utils.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author super
 * @create 2018-04-20 10:30
 */
@Service
public class ArticleCommentServiceImpl implements ArticleCommentService {
    @Autowired
    ArticleCommentMapper articleCommentMapper;

    @Override
    public List<ArticleComment> getArticleCommentListByArticleId(int id) {
        ArticleCommentExample articleCommentExample = new ArticleCommentExample();
        ArticleCommentExample.Criteria criteria = articleCommentExample.createCriteria();
        criteria.andQuestionIdEqualTo(id);
        return articleCommentMapper.selectByExample(articleCommentExample);

    }

    @Override
    public JsonResult addArticleComment(Integer commentId, int questionId) {
        ArticleComment articleComment = new ArticleComment();
        articleComment.setCommentId(commentId);
        articleComment.setQuestionId(questionId);
        int i = articleCommentMapper.insertSelective(articleComment);
        if (i > 0) {
            return JsonResult.build(200, "回答成功");
        }
        return JsonResult.build(300, "系统繁忙,稍后重试");
    }

    @Override
    public List<ArticleComment> getArticleCommentListByCommentList(List<Comment> commentList) {
        if(commentList.size()>0){
            ArticleCommentExample articleCommentExample = new ArticleCommentExample();
            ArticleCommentExample.Criteria criteria = articleCommentExample.createCriteria();
            ArrayList<Integer> commentIdList = new ArrayList<>();
            for (Comment comment : commentList) {
                commentIdList.add(comment.getId());
            }
            criteria.andCommentIdIn(commentIdList);

            return articleCommentMapper.selectByExample(articleCommentExample);
        }
        return new ArrayList<>();
    }

    @Override
    public void  getArticleCommentByCommentId(int id) {
        ArticleCommentExample articleCommentExample = new ArticleCommentExample();
        ArticleCommentExample.Criteria criteria = articleCommentExample.createCriteria();
        criteria.andCommentIdEqualTo(id);
        List<ArticleComment> commentList = articleCommentMapper.selectByExample(articleCommentExample);
        if(commentList.size()>0){


            articleCommentMapper.deleteByPrimaryKey(commentList.get(0).getId());
            }
        }

    @Override
    public void deleteArticleCommentByArticleCommentId(Integer id) {
        articleCommentMapper.deleteByPrimaryKey(id);
    }


}
