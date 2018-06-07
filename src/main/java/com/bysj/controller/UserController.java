package com.bysj.controller;

import com.bysj.common.LayResult;
import com.bysj.dto.UserArticleListDto;
import com.bysj.pojo.Article;
import com.bysj.pojo.User;
import com.bysj.service.ArticleService;
import com.bysj.service.UserService;
import com.bysj.utils.JsonResult;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * @author super
 * @create 2018-04-20 9:05
 */
@Controller
public class UserController {
    @Autowired
    UserService userService;
    @Autowired
    ArticleService articleService;

    @RequestMapping("/getUserByUserId.action")
    @ResponseBody
    public User getUserByUserId(@RequestParam("id") int id) {
        return userService.getUserByUserId(id);
    }

    @RequestMapping("/user/likeQuestion.action")
    @ResponseBody
    public JsonResult likeQuestion(@RequestParam("questionId") int questionId, @RequestParam("userId") int userId) {
        userService.updateUserLikedArticleStatus(questionId, userId);
        return null;
    }

    @RequestMapping("/user/followUser.action")
    @ResponseBody
    public JsonResult followUser(@RequestParam("id") int id, @RequestParam("userId") int userId) {
        userService.updateUserFollowUserStatus(id, userId);
        return JsonResult.build(200,"成功");
    }


    @RequestMapping("/getFollowedUserListByUserId.action")
    @ResponseBody
    public List<UserArticleListDto> getFollowedUserListByUserId(@RequestParam("id") int id) {
        ArrayList<UserArticleListDto> userArticleListDtoList = new ArrayList<>();
        List<User> userList = userService.getFollowedUserListByUserId(id);
        return getUserArticleListDtos(userArticleListDtoList, userList);
    }

    @RequestMapping("/getFollowedUserByIdUserId.action")
    @ResponseBody
    public List<UserArticleListDto> getFollowedUserByIdUserId(@RequestParam("id") int id) {
        ArrayList<UserArticleListDto> userArticleListDtoList = new ArrayList<>();
        List<User> userList = userService.getFollowedUserByUserId(id);
        return getUserArticleListDtos(userArticleListDtoList, userList);
    }

    private List<UserArticleListDto> getUserArticleListDtos(ArrayList<UserArticleListDto> userArticleListDtoList, List<User> userList) {
        if (userList.size() > 0) {
            for (User user : userList) {
                UserArticleListDto userArticleListDto = new UserArticleListDto();
                List<Article> articleList = articleService.getArticleListByUserId(user.getId());
                if (articleList.size() > 0) {

                    userArticleListDto.setArticleList(articleList);
                }
                List<Article> questionList = articleService.getQuestionListByUserId(user.getId());
                if (questionList.size() > 0) {

                    userArticleListDto.setQuestionList(questionList);
                }
                userArticleListDto.setUser(user);
                userArticleListDto.setFollowedCount(userService.getFollowedCountByUserId(user.getId()));
                userArticleListDtoList.add(userArticleListDto);
            }


        }

        return userArticleListDtoList;
    }

    @RequestMapping("/getFollowedCountByUserId.action")
    @ResponseBody
    public int getFollowedCountByUserId(@RequestParam("id")int id){
        return userService.getFollowedUserByUserId(id).size();
    }

    @RequestMapping("/updateUserInfoByUserId.action")
    @ResponseBody
    public JsonResult updateUserInfoByUserId(User user){

        return userService.updateUserByUserId(user);
    }

    @RequestMapping("/updateUserPwdByUserId.action")
    @ResponseBody
    public JsonResult updateUserPwdByUserId(@RequestParam("id")int id,@RequestParam("oldPwd")String oldPwd,@RequestParam("newPwd") String newPwd){
        if (StringUtils.isBlank(id + "")) {
            return JsonResult.build(300, "系统繁忙");
        }
        if (StringUtils.isBlank(oldPwd)) {
            return JsonResult.build(300, "请输入原密码");
        }
        if (StringUtils.isBlank(newPwd)) {
            return JsonResult.build(300, "请输入新密码");
        }
        return userService.updateUserPwdByUserId(id,oldPwd,newPwd);
    }

    /**
     * 用户管理
     */

    @RequestMapping("/users.html")
    public String showUserListPage(){
        return "/userList";
    }


    @RequestMapping("/getUserList.action")
    @ResponseBody
    public LayResult getUserList(@RequestParam(value = "page", defaultValue = "1") int page, @RequestParam(value = "limit", defaultValue = "10") int limit){
        List<User> userList = userService.getUserList(page,limit);
        return  LayResult.ok(userList.size(), userList);
    }

    @RequestMapping("/user/viewUser.action")
    public String viewUserByUserId(@RequestParam("id")int id, HttpServletRequest request){
        User u = userService.getUserByUserId(id);
        u.setPassword(null);
        request.setAttribute("u",u);
        return "/viewUser";
    }
    @RequestMapping("/user/editUser.action")
    public String editUserByUserId(@RequestParam("id")int id, HttpServletRequest request){
        User u = userService.getUserByUserId(id);
        u.setPassword(null);
        request.setAttribute("u",u);
        return "/editUser";
    }
    @RequestMapping("/user/deleteUser.action")
    @ResponseBody
    public void deleteUserByUserId(@RequestParam("id")int id){
        userService.changeUserStatus(id);
    }



}
