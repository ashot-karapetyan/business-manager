package com.businessmanager.db.dao;

import com.businessmanager.db.dto.BusinessProviderCondition;
import com.businessmanager.db.dto.BusinessProviderPk;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

@Component
public interface BusinessProviderDAO {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table business_provider
     *
     * @mbggenerated
     */
    int countByExample(BusinessProviderCondition example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table business_provider
     *
     * @mbggenerated
     */
    int deleteByExample(BusinessProviderCondition example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table business_provider
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(BusinessProviderPk key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table business_provider
     *
     * @mbggenerated
     */
    int insert(BusinessProviderPk record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table business_provider
     *
     * @mbggenerated
     */
    int insertSelective(BusinessProviderPk record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table business_provider
     *
     * @mbggenerated
     */
    List<BusinessProviderPk> selectByExample(BusinessProviderCondition example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table business_provider
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") BusinessProviderPk record, @Param("example") BusinessProviderCondition example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table business_provider
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") BusinessProviderPk record, @Param("example") BusinessProviderCondition example);

    /**
     * Custom generated method to insert list.
     * @mbggenerated
     */
    void insertList(@Param("recordList") List<BusinessProviderPk> values);
}