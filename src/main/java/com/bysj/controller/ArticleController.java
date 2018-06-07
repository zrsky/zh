package com.bysj.controller;

import com.bysj.dto.ArticleUserCommentsDto;
import com.bysj.dto.UserArticleDto;
import com.bysj.dto.UserListArticleListDto;
import com.bysj.pojo.*;
import com.bysj.service.*;
import com.bysj.utils.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * @author super
 * @create 2018-04-19 23:19
 */
@Controller
public class ArticleController {
    @Autowired
    ArticleService articleService;
    @Autowired
    CommentService commentService;
    @Autowired
    ArticleCommentService articleCommentService;
    @Autowired
    UserArticleService userArticleService;
    @Autowired
    UserService userService;

    @RequestMapping("/article/publishQuestion.action")
    @ResponseBody
    public JsonResult publishQuestion(Article article) {

        return articleService.publishQuestion(article);
    }

    @RequestMapping("/article/getArticleList.action")
    @ResponseBody
    public List<UserArticleDto> getArticleList(@RequestParam( value = "page", defaultValue = "1") int page, @RequestParam(value = "limit", defaultValue = "10") int limit) {
        return articleService.getArticleList(page,limit);

    }

    @RequestMapping("/question.html")
    public String showQuestionPage() {

        return "/question";
    }

    @RequestMapping("/getQuestionDetail.action")
    @ResponseBody
    public ArticleUserCommentsDto getQuestionDetail(@RequestParam("id") int id) {
        ArticleUserCommentsDto articleCommentDto = new ArticleUserCommentsDto();
        Article article = articleService.getArticleById(id);
        UserArticle userArticle = userArticleService.getUserArticleByArticleId(id);
        User user = userService.getUserByUserId(userArticle.getUserId());
        articleCommentDto.setArticle(article);
        List<ArticleComment> articleCommentList = articleCommentService.getArticleCommentListByArticleId(id);
        List<Comment> comments = commentService.getCommentListByArticleComment(articleCommentList);
        articleCommentDto.setComments(comments);
        articleCommentDto.setUser(user);
        return articleCommentDto;
    }

    @RequestMapping("/editQuestionByQuestionId.action")
    @ResponseBody
    public JsonResult editQuestionByQuestionId(@RequestParam("id") int id, @RequestParam("title") String title, @RequestParam("content") String content) {
        return articleService.updateQuestionByQuestionId(id, title, content);
    }

    @RequestMapping("/getArticleListByUserId.action")
    @ResponseBody
    public List<Article> getArticleListByUserId(@RequestParam("id") int id) {
        return articleService.getArticleListByUserId(id);
    }

    @RequestMapping("/getQuestionListByUserId.action")
    @ResponseBody
    public List<Article> getQuestionListByUserId(@RequestParam("id") int id) {
        return articleService.getQuestionListByUserId(id);
    }

    @RequestMapping("/getQuestionList.action")
    @ResponseBody
    public List<UserArticleDto> getQuestionList(@RequestParam(value = "page", defaultValue = "1") int page, @RequestParam(value = "limit", defaultValue = "10") int limit) {
        ArrayList<UserArticleDto> result = new ArrayList<>();
        List<Article> questionList = articleService.getQuestionList(page,limit);
        if (questionList.size() > 0) {
            for (Article article : questionList) {
                UserArticleDto userArticleDto = new UserArticleDto();
                UserArticle userArticle = userArticleService.getUserArticleByArticleId(article.getId());
                User user = userService.getUserByUserId(userArticle.getUserId());
                userArticleDto.setUser(user);
                userArticleDto.setArticle(article);
                result.add(userArticleDto);
            }
        }
        return result;

    }


    @RequestMapping("/getTheMostCommentListByToday.action")
    @ResponseBody
    public List<ArticleUserCommentsDto> getTheMostCommentOfArticleListByToday(@RequestParam(value = "page", defaultValue = "1") int page, @RequestParam(value = "limit", defaultValue = "10") int limit) {
        return getArticleUserCommentsDtoList(true, page, limit);
    }

    @RequestMapping("/getTheMostCommentListByMonth.action")
    @ResponseBody
    public List<ArticleUserCommentsDto> getTheMostCommentOfArticleListByMonth(@RequestParam(value = "page", defaultValue = "1") int page, @RequestParam(value = "limit", defaultValue = "10") int limit) {
        return getArticleUserCommentsDtoList(false, page, limit);
    }

    private List<ArticleUserCommentsDto> getArticleUserCommentsDtoList(boolean b, int page, int limit) {
        ArrayList<ArticleUserCommentsDto> articleUserCommentsDtoList = new ArrayList<>();
        List<Article> articleList = articleService.getTheMostCommentOfArticleList(b, page, limit);
        if (articleList.size() > 0) {
            for (Article article : articleList) {
                ArticleUserCommentsDto articleUserCommentsDto = new ArticleUserCommentsDto();
                List<ArticleComment> articleCommentList = articleCommentService.getArticleCommentListByArticleId(article.getId());
                List<Comment> commentList = commentService.getCommentListByArticleComment(articleCommentList);
                UserArticle userArticle = userArticleService.getUserArticleByArticleId(article.getId());
                User user = userService.getUserByUserId(userArticle.getUserId());
                articleUserCommentsDto.setArticle(article);
                articleUserCommentsDto.setComments(commentList);
                articleUserCommentsDto.setUser(user);
                articleUserCommentsDtoList.add(articleUserCommentsDto);
            }
        }
        return articleUserCommentsDtoList;
    }

    @RequestMapping("/getQuestionArticleList.action")
    @ResponseBody
    public List<Article> getQuestionArticleListByUserId(@RequestParam(value = "page", defaultValue = "1") int page, @RequestParam(value = "limit", defaultValue = "10") int limit,@RequestParam("id") int id) {
        return articleService.getQuestionArticleListByUserId(id);
    }

    @RequestMapping("/getLikedArticleListByUserId.action")
    @ResponseBody
    public List<Article> getLikedArticleListByUserId(@RequestParam(value = "page", defaultValue = "1") int page, @RequestParam(value = "limit", defaultValue = "10") int limit, int id) {
        User user = userService.getUserByUserId(id);
        return  articleService.getHadLikedArticleByLikedStr(user.getLiked(),page,limit);

    }

    @RequestMapping("/publishArticle.action")
    @ResponseBody
    public JsonResult publishArticle(@RequestParam("title")String title,@RequestParam("content")String content){
        return articleService.addArticle(true,title, content);
    }
    @RequestMapping("/publishDraftsArticle.action")
    @ResponseBody
    public JsonResult publishDraftsArticle(@RequestParam("title")String title,@RequestParam("content")String content){
        return articleService.addArticle(false,title, content);
    }

    @RequestMapping("/getDraftsListByUserId.action")
    @ResponseBody
    public List<Article> getDraftsListByUserId(@RequestParam(value = "page", defaultValue = "1") int page, @RequestParam(value = "limit", defaultValue = "10") int limit){
        return articleService.getDraftsListByUserId(page, limit);
    }

    @RequestMapping("/getSearchArticleByKeyWord.action")
    @ResponseBody
    public UserListArticleListDto getSearchArticleByKeyWord(@RequestParam(value = "key",defaultValue = "")String key, @RequestParam(value = "page", defaultValue = "1") int page, @RequestParam(value = "limit", defaultValue = "10") int limit){
        List<Article> articleList = articleService.getSearchArticleByKeyWord(key, page, limit);
        List<User> userList = userService.getSearchUserByKeyWord(key, page, limit);
        UserListArticleListDto userListArticleListDto = new UserListArticleListDto();
        userListArticleListDto.setArticles(articleList);
        userListArticleListDto.setUsers(userList);
        return userListArticleListDto;
    }

    @RequestMapping("/deleteArticleByArticleId.action")
    @ResponseBody
    public JsonResult deleteArticleByArticleId(@RequestParam("id")int id){
        return articleService.deleteArticleByArticleId(id);
    }

    @RequestMapping("/changeArticleStatusToDisableByArticleId.action")
    @ResponseBody
    public JsonResult changeArticleStatusToDisableByArticleId(@RequestParam("id")int id){
        return articleService.changeArticleStatusToDisableByArticleId(id);
    }
    @RequestMapping("/deleteDraftByArticleId.action")
    @ResponseBody
    public JsonResult deleteDraftByArticleId(@RequestParam("id")int id){
        return articleService.deleteDraftByArticleId(id);
    }

    @RequestMapping("/publishDraft.action")
    @ResponseBody
    public JsonResult publishDraft(@RequestParam("id")int id){
        JsonResult result = articleService.publishDraft(id);
        return result;
    }
}
