package com.businessmanager.db;

import com.businessmanager.db.dao.*;
import com.businessmanager.db.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Artush on 5/15/2015.
 */
@Repository
public class BusinessDBManager {

    @Autowired
    BusinessDAO businessDAO;

    @Autowired
    ProviderDAO providerDAO;

    @Autowired
    MarketDAO marketDAO;

    @Autowired
    ProductDAO productDAO;

    public List<BusinessDto> fetchUserBusinesses(String username) {
        return businessDAO.selectBusinessesByUsername(username);
    }

    public List<ProviderDto> fetchBusinessProviders(Integer businessId) {
        return providerDAO.selectProvidersByBusinessId(businessId);
    }

    public List<MarketDto> fetchBusinessMarkets(Integer businessId) {
        return marketDAO.selectMarketsByBusinessId(businessId);
    }

    public List<ProductDto> fetchBusinessProducts(Integer businessId) {
        return productDAO.selectProductsByBusinessId(businessId);
    }
}
