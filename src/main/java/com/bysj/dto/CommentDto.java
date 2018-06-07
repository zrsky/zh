package com.bysj.dto;

import com.bysj.pojo.Comment;
import com.bysj.pojo.User;

/**
 * @author super
 * @create 2018-04-24 16:48
 */

public class CommentDto {
    private Comment comment;
    private User user;

    public Comment getComment() {
        return comment;
    }

    public void setComment(Comment comment) {
        this.comment = comment;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
