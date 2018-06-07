package com.bysj.controller;

import com.bysj.pojo.User;
import com.bysj.service.UserService;
import com.bysj.utils.JsonResult;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * @author super
 * @create 2018-04-19 19:12
 */
@Controller
public class IndexController {
    @Autowired
    UserService userService;

    @RequestMapping("/index.html")
    public String index() {
        return "index";
    }


    @RequestMapping("/login.action")
    public String showLoginPage() {
        return "/common/login";
    }

    @RequestMapping("/find.html")
    public String showFindPage() {
        return "/find";
    }

    @RequestMapping("/article/writeArticle.html")
    public String showWriteArticlePage() {
        return "/writeArticle";
    }

    @RequestMapping("/answer.html")
    public String showAnswerPage() {
        return "/answer";
    }

    @RequestMapping("/userInfo.html")
    public String showUserInfoPage(@RequestParam("id")int id) {
        return "/myInfo";
    }
    @RequestMapping("/search.html")
    public String showSearchPage(@RequestParam("kw")String kw) {
        return "/search";
    }


    @RequestMapping("/setting.html")
    public String showSettingPage(){
        return "/changePwd";
    }
    @RequestMapping("/drafts.html")
    public String showDraftsPage(){
        return "/drafts";
    }

    @RequestMapping("/register.action")
    @ResponseBody
    public JsonResult register(@RequestParam("account") String account, User user) {
        if (account.contains("@")) {
            user.setEmail(account);
        } else {
            user.setMobile(account);
        }

        JsonResult result = userService.register(user);
        return result;
    }

    @RequestMapping("/to_login.action")
    @ResponseBody
    public JsonResult login(@RequestParam("account") String account, @RequestParam("password") String password,HttpServletRequest request) {

        if (StringUtils.isBlank(account)) {
            return JsonResult.build(300, "手机号或者邮箱不能为空");
        }
        if (StringUtils.isBlank(password)) {
            return JsonResult.build(300, "密码不能为空");
        }
        return userService.login(account, password,request);
    }

    @RequestMapping("/logout.action")
    @ResponseBody
    public boolean logout(HttpServletRequest request){
        request.getSession().invalidate();
        return true;
    }
}