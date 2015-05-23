package com.businessmanager.service;

import com.businessmanager.db.LogDBManager;
import com.businessmanager.db.dto.LogDto;
import com.businessmanager.mvc.model.MarketDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by Artush on 5/23/2015.
 */
@Service
public class MarketService {

    @Autowired
    LogDBManager logDBManager;

    public MarketDetails getLogs(Integer businessId, Integer marketId, Date startTime, Date endTime) {
        List<LogDto> logs = logDBManager.fetchLogs(businessId, marketId, null, startTime, endTime);

        return new MarketDetails();
    }
}
