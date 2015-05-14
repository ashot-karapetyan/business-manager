package com.businessmanager.db;

import com.businessmanager.db.dao.BusinessDAO;
import com.businessmanager.db.dao.UserBusinessDAO;
import com.businessmanager.db.dto.BusinessCondition;
import com.businessmanager.db.dto.BusinessDto;
import com.businessmanager.db.dto.UserBusinessCondition;
import com.businessmanager.db.dto.UserBusinessDto;
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

    public List<BusinessDto> fetchUserBusinesses(String username) {
        return businessDAO.selectBusinessesByUsername(username);
    }
}
