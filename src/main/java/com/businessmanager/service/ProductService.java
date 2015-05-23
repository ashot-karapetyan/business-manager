package com.businessmanager.service;

import com.businessmanager.db.LogDBManager;
import com.businessmanager.db.dto.LogDto;
import com.businessmanager.mvc.model.ProductDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by Artush on 5/23/2015.
 */
@Service
public class ProductService {

    @Autowired
    LogDBManager logDBManager;

    public ProductDetails getLogs(Integer businessId, Integer productId, Date startTime, Date endTime) {
        List<LogDto> logs = logDBManager.fetchLogs(businessId, null, productId, startTime, endTime);

        return new ProductDetails();
    }
}
