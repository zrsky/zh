package com.bysj.service.impl;

import com.bysj.dto.CommentDto;
import com.bysj.mapper.CommentMapper;
import com.bysj.pojo.ArticleComment;
import com.bysj.pojo.Comment;
import com.bysj.pojo.CommentExample;
import com.bysj.pojo.User;
import com.bysj.service.ArticleCommentService;
import com.bysj.service.CommentService;
import com.bysj.service.UserService;
import com.bysj.utils.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author super
 * @create 2018-04-20 8:55
 */
@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    CommentMapper commentMapper;
    @Autowired
    UserService userService;
    @Autowired
    ArticleCommentService articleCommentService;

    @Override
    public List<Comment> getCommentListByArticleComment(List<ArticleComment> articleCommentList) {

        if(articleCommentList.size()>0){
            ArrayList<Comment> comments = new ArrayList<>();
            for (ArticleComment articleComment : articleCommentList) {
                Comment comment = commentMapper.selectByPrimaryKey(articleComment.getCommentId());
                comments.add(comment);
            }
            return comments;
        }
        return new ArrayList<>();

    }



    @Override
    public Comment addCommentInfo(int userId, String content) {
        User user = userService.getUserByUserId(userId);
        Comment comment = new Comment();
        comment.setFromUserId(user.getId());
        comment.setFromUserName(user.getUsername());
        comment.setCreateTime(new Date());
        comment.setContent(content);
        comment.setStatus(1);
        commentMapper.insertSelective(comment);
        return comment;
    }

    @Override
    public List<Comment> getCommentListByUserId(int id) {
        CommentExample commentExample = new CommentExample();
        CommentExample.Criteria criteria = commentExample.createCriteria();
        criteria.andFromUserIdEqualTo(id);
        criteria.andStatusEqualTo(1);
        return  commentMapper.selectByExample(commentExample);
    }

    @Override
    @Transactional
    public JsonResult deleteCommentByCommentId(int id) {
      articleCommentService.getArticleCommentByCommentId(id);
        commentMapper.deleteByPrimaryKey(id);
        return JsonResult.build(200,"删除评论成功");


    }


}
