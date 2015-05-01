package com.businessmanager.db;

import com.businessmanager.db.dao.UserDAO;
import com.businessmanager.db.dao.UserRoleDAO;
import com.businessmanager.db.dto.UserDto;
import com.businessmanager.db.dto.UserRoleCondition;
import com.businessmanager.db.dto.UserRoleDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Artush on 5/1/2015.
 */
@Repository
public class UserDBManager {

    @Autowired
    UserDAO userDAO;

    @Autowired
    UserRoleDAO userRoleDAO;

    public UserDto fetchUserByUsername(String username) {
        return userDAO.selectByPrimaryKey(username);
    }

    public List<UserRoleDto> fetchUserRoles(String username) {
        UserRoleCondition condition = new UserRoleCondition();
        UserRoleCondition.Criteria criteria = condition.createCriteria();
        criteria.andUsernameEqualTo(username);

        return userRoleDAO.selectByExample(condition);
    }
}
