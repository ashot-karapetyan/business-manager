package com.businessmanager.db.dao;

import com.businessmanager.db.dto.UserBusinessCondition;
import com.businessmanager.db.dto.UserBusinessDto;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

@Component
public interface UserBusinessDAO {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_business
     *
     * @mbggenerated
     */
    int countByExample(UserBusinessCondition example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_business
     *
     * @mbggenerated
     */
    int deleteByExample(UserBusinessCondition example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_business
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_business
     *
     * @mbggenerated
     */
    int insert(UserBusinessDto record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_business
     *
     * @mbggenerated
     */
    int insertSelective(UserBusinessDto record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_business
     *
     * @mbggenerated
     */
    List<UserBusinessDto> selectByExample(UserBusinessCondition example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_business
     *
     * @mbggenerated
     */
    UserBusinessDto selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_business
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") UserBusinessDto record, @Param("example") UserBusinessCondition example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_business
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") UserBusinessDto record, @Param("example") UserBusinessCondition example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_business
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(UserBusinessDto record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_business
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(UserBusinessDto record);

    /**
     * Custom generated method to insert list.
     * @mbggenerated
     */
    void insertList(@Param("recordList") List<UserBusinessDto> values);
}