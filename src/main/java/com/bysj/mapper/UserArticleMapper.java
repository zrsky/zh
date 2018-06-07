package com.bysj.mapper;

import com.bysj.pojo.UserArticle;
import com.bysj.pojo.UserArticleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserArticleMapper {
    int countByExample(UserArticleExample example);

    int deleteByExample(UserArticleExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(UserArticle record);

    int insertSelective(UserArticle record);

    List<UserArticle> selectByExample(UserArticleExample example);

    UserArticle selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") UserArticle record, @Param("example") UserArticleExample example);

    int updateByExample(@Param("record") UserArticle record, @Param("example") UserArticleExample example);

    int updateByPrimaryKeySelective(UserArticle record);

    int updateByPrimaryKey(UserArticle record);
}