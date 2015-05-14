package com.businessmanager.service;

import com.businessmanager.db.BusinessDBManager;
import com.businessmanager.db.dto.BusinessDto;
import com.businessmanager.db.dto.UserBusinessDto;
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

}
