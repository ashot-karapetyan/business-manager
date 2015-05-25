package com.businessmanager.service;

import com.businessmanager.db.BusinessDBManager;
import com.businessmanager.db.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Artush on 5/15/2015.
 */
@Service
public class BusinessService {

    @Autowired
    BusinessDBManager businessDBManager;

    public List<BusinessDto> getUserBusinesses(String username) {
        return businessDBManager.fetchUserBusinesses(username);
    }

    public List<ProviderDto> getBusinessProviders(Integer businessId) {
        return businessDBManager.fetchBusinessProviders(businessId);
    }

    public List<MarketDto> getBusinessMarkets(Integer businessId) {
        return businessDBManager.fetchBusinessMarkets(businessId);
    }

    public List<ProductDto> getBusinessProducts(Integer businessId) {
        return businessDBManager.fetchBusinessProducts(businessId);
    }

    public BusinessDto getBusinessById(Integer businessId) {
        return businessDBManager.fetchBusinessById(businessId);
    }
}
