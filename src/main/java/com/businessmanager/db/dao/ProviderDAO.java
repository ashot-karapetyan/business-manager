package com.businessmanager.db.dao;

import com.businessmanager.db.dto.ProviderCondition;
import com.businessmanager.db.dto.ProviderDto;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

@Component
public interface ProviderDAO {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table provider
     *
     * @mbggenerated
     */
    int countByExample(ProviderCondition example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table provider
     *
     * @mbggenerated
     */
    int deleteByExample(ProviderCondition example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table provider
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table provider
     *
     * @mbggenerated
     */
    int insert(ProviderDto record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table provider
     *
     * @mbggenerated
     */
    int insertSelective(ProviderDto record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table provider
     *
     * @mbggenerated
     */
    List<ProviderDto> selectByExample(ProviderCondition example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table provider
     *
     * @mbggenerated
     */
    ProviderDto selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table provider
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") ProviderDto record, @Param("example") ProviderCondition example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table provider
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") ProviderDto record, @Param("example") ProviderCondition example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table provider
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(ProviderDto record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table provider
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(ProviderDto record);

    /**
     * Custom generated method to insert list.
     * @mbggenerated
     */
    void insertList(@Param("recordList") List<ProviderDto> values);

    /**
     * Select providers by business id.
     * @param businessId  User business ID.
     * @return List of provider dto.
     */
    List<ProviderDto> selectProvidersByBusinessId(@Param("businessId") Integer businessId);
}