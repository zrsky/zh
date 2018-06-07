package com.bysj.service;

import com.bysj.pojo.User;
import com.bysj.utils.JsonResult;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by super on 2018/4/19 20:52.
 */
public interface UserService {
    JsonResult register(User user);

    JsonResult login(String account, String password, HttpServletRequest request);

    User getUserByUserId(Integer userId);

    void updateUserLikedArticleStatus(int questionId, int userId);

    void updateUserFollowUserStatus(int id, int userId);

    List<User> getFollowedUserByUserId(int id);

    int getFollowedCountByUserId(int id);

    List<User> getSearchUserByKeyWord(String key, int pageNo, int pageSize);

    JsonResult updateUserByUserId(User user);

    JsonResult updateUserPwdByUserId(int id, String oldPwd, String newPwd);

    List<User> getFollowedUserListByUserId(int id);

    List<User> getUserList(int page,int limit);

    void changeUserStatus(int id);
}
