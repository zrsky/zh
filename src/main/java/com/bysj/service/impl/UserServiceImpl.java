package com.bysj.service.impl;


import com.bysj.common.RequestHolder;
import com.bysj.mapper.UserMapper;
import com.bysj.pojo.User;
import com.bysj.pojo.UserExample;
import com.bysj.service.UserService;
import com.bysj.utils.JsonResult;
import com.github.pagehelper.PageHelper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author super
 * @create 2018-04-19 20:52
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public JsonResult register(User user) {
        String password = user.getPassword();
        if (StringUtils.isNotBlank(password)) {
            String md5Pwd = DigestUtils.md5DigestAsHex(password.getBytes());
            user.setPassword(md5Pwd);

        }
        user.setStatus(1);
        user.setCreateTime(new Date());
        userMapper.insertSelective(user);
        return JsonResult.build(200, "注册成功");
    }

    @Override
    public JsonResult login(String account, String password, HttpServletRequest request) {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        if (account.contains("@")) {
            criteria.andEmailEqualTo(account);
        } else {

            criteria.andMobileEqualTo(account);
        }
        criteria.andPasswordEqualTo(DigestUtils.md5DigestAsHex(password.getBytes()));
        criteria.andStatusEqualTo(1);
        List<User> userList = userMapper.selectByExample(userExample);
        if (userList.size() > 0) {

            request.getSession().setAttribute("user", userList.get(0));
            return JsonResult.build(200, "登录成功");
        }
        return JsonResult.build(300, "查无此用户");
    }

    @Override
    public User getUserByUserId(Integer userId) {
        User user = userMapper.selectByPrimaryKey(userId);
        return user;
    }

    @Override
    public void updateUserLikedArticleStatus(int questionId, int userId) {

        User user = userMapper.selectByPrimaryKey(userId);
        String liked = user.getLiked();
        List<Integer> result = updateFollowedOrLiked(questionId, liked);

        user.setLiked(result.toString());
        userMapper.updateByPrimaryKeySelective(user);

    }

    @Override
    public void updateUserFollowUserStatus(int id, int userId) {
        User user = userMapper.selectByPrimaryKey(userId);
        String followed = user.getFollowed();
        List<Integer> result = updateFollowedOrLiked(id, followed);
        user.setFollowed(result.toString());
        userMapper.updateByPrimaryKeySelective(user);

    }

    @Override
    public List<User> getFollowedUserByUserId(int id) {
        UserExample userExample = new UserExample();
        List<User> userList = userMapper.selectByExample(userExample);
        ArrayList<Integer> list = new ArrayList<>();
        for (User u : userList) {
            if (checkExistOrNot(id, u.getFollowed())) {
                list.add(u.getId());
            }
        }
        if(list.size()>0){

            UserExample example = new UserExample();
            UserExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(list);
            List<User> users = userMapper.selectByExample(example);
            return users;
        }
        return new ArrayList<>();
    }

    @Override
    public int getFollowedCountByUserId(int id) {
        User user = userMapper.selectByPrimaryKey(id);
        String str = user.getFollowed();
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
        return result.size();
    }

    @Override
    public List<User> getSearchUserByKeyWord(String key, int pageNo, int pageSize) {
        UserExample userExample1 = new UserExample();
        UserExample.Criteria criteria = userExample1.createCriteria();
        criteria.andUsernameLike("%" + key + "%");
        criteria.andStatusEqualTo(1);
        return userMapper.selectByExample(userExample1);
    }

    @Override
    public JsonResult updateUserByUserId(User user) {
        User u = userMapper.selectByPrimaryKey(user.getId());
        boolean flag = false;
        if (StringUtils.isNotBlank(user.getUsername())) {
            u.setUsername(user.getUsername());
            flag = true;
        }
        if (StringUtils.isNotBlank(user.getPassword())) {
            u.setPassword(user.getPassword());
            flag = true;
        }
        if (StringUtils.isNotBlank(user.getCareer())) {
            u.setCareer(user.getCareer());
            flag = true;
        }
        if (StringUtils.isNotBlank(user.getMobile())) {
            u.setMobile(user.getMobile());
            flag = true;
        }
        if (StringUtils.isNotBlank(user.getEmail())) {
            u.setEmail(user.getEmail());
            flag = true;
        }
        if (StringUtils.isNotBlank(user.getSex())) {
            u.setSex(user.getSex());
            flag = true;
        }
        if (StringUtils.isNotBlank(user.getUrl())) {
            u.setUrl(user.getUrl());
            flag = true;
        }
        if (StringUtils.isNotBlank(user.getStatus() + "")) {
            u.setStatus(user.getStatus());
            flag = true;
        }
        if (StringUtils.isNotBlank(user.getRemark())) {
            u.setRemark(user.getRemark());
            flag = true;
        }
        if (StringUtils.isNotBlank(user.getRole() + "")) {
            u.setRole(user.getRole());
            flag = true;
        }

        if (flag == true) {
            u.setUpdateTime(new Date());

            userMapper.updateByPrimaryKeySelective(u);
            User user2 = (User) RequestHolder.getCurrentRequest().getSession().getAttribute("user");
            if(u.getId().equals(user2.getId())){

                User user1 = userMapper.selectByPrimaryKey(u.getId());
                RequestHolder.getCurrentRequest().getSession().setAttribute("user", user1);
            }
        }
        return JsonResult.build(200, "更新成功");
    }

    @Override
    public JsonResult updateUserPwdByUserId(int id, String oldPwd, String newPwd) {
        User user = userMapper.selectByPrimaryKey(id);
        if (user.getPassword().equals(DigestUtils.md5DigestAsHex(oldPwd.getBytes()))){
            user.setPassword(DigestUtils.md5DigestAsHex(newPwd.getBytes()));
            userMapper.updateByPrimaryKeySelective(user);
            return JsonResult.build(200, "修改成功");
        }
        return JsonResult.build(300, "原密码错误");
    }

    @Override
    public List<User> getFollowedUserListByUserId(int id) {
        User user = userMapper.selectByPrimaryKey(id);
        String str = user.getFollowed();
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
            if (result.size() > 0) {
                UserExample userExample = new UserExample();
                UserExample.Criteria criteria = userExample.createCriteria();
                criteria.andIdIn(result);
                return userMapper.selectByExample(userExample);
            }


        }
        return new ArrayList<>();
    }

    @Override
    public List<User> getUserList(int page,int limit) {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andStatusEqualTo(1);
        criteria.andRoleEqualTo(0);
        PageHelper.startPage(page, limit);
        return userMapper.selectByExample(userExample);
    }

    @Override
    public void changeUserStatus(int id) {
        User user = userMapper.selectByPrimaryKey(id);
        user.setStatus(0);
        userMapper.updateByPrimaryKeySelective(user);
    }


    private boolean checkExistOrNot(int id, String str) {
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
            boolean flag = false;
            for (int i = 0; i < result.size(); i++) {
                if (result.get(i) == id) {
                    return true;
                }
            }
            return flag;
        }
        return false;
    }

    private List<Integer> updateFollowedOrLiked(int id, String liked) {

        ArrayList<Integer> result = new ArrayList<>();
        if (StringUtils.isNotBlank(liked) && !liked.startsWith("[]")) {
            if (liked.startsWith("[")) {
                liked = liked.substring(1, liked.length());
            }
            if (liked.endsWith("]")) {
                liked = liked.substring(0, liked.length() - 1);
            }
            String[] s = liked.split(",");
            for (int i = 0; i < s.length; i++) {
                result.add(Integer.parseInt(s[i].trim()));
            }
            boolean flag = false;
            for (int i = 0; i < result.size(); i++) {
                if (result.get(i) == id) {
                    flag = true;
                    result.remove(i);
                }
            }
            if (!flag) {
                result.add(id);
            }

        } else {
            result.add(id);
        }
        return result;
    }
}
