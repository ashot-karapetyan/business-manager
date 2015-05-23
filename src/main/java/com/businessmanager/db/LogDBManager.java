package com.businessmanager.db;

import com.businessmanager.db.dao.LogDAO;
import com.businessmanager.db.dto.LogCondition;
import com.businessmanager.db.dto.LogDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 * Created by Artush on 5/23/2015.
 */
@Repository
public class LogDBManager {

    @Autowired
    LogDAO logDAO;

    public List<LogDto> fetchLogs(Integer businessId, Integer marketId, Integer productId, Date startTime, Date endTime) {
        LogCondition condition = new LogCondition();
        LogCondition.Criteria criteria = condition.createCriteria();

        criteria.andBusinessIdEqualTo(businessId);
        if(marketId != null) { criteria.andMarketIdEqualTo(marketId); }
        if(productId != null) { criteria.andProductIdEqualTo(productId); }
        criteria.andDatetimeGreaterThanOrEqualTo(startTime);
        criteria.andDatetimeLessThanOrEqualTo(endTime);

        return logDAO.selectByExample(condition);
    }
}
