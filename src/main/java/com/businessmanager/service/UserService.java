package com.businessmanager.service;

import com.businessmanager.security.BMUserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Responsible for Service layer related to Users, UserConnection persistent models.
 */

@Service
public class UserService {

    public UserDetails loadUserByUsername(String username) {
        BMUserDetails fakeUserDetails = new BMUserDetails();
        fakeUserDetails.setUsername(username);
        fakeUserDetails.setPassword("b1282c1dbc170a3f4bf470b7edb080c3"); // md5("fakepassword")
        fakeUserDetails.setEnabled(true);

        List<GrantedAuthority> authorityList = new ArrayList<GrantedAuthority>();
        authorityList.add(new SimpleGrantedAuthority("ROLE_USER"));
        fakeUserDetails.setGrantedAuthority(authorityList);
        return fakeUserDetails;
    }

//    @Autowired
//    UserDBManager userDBManager;
//
//    /**
//     * Load user by username.
//     * @param username     Username.
//     * @return          DistributionUserDetails object.
//     */
//    public BMUserDetails loadUserByUsername(String username) {
//        UserDto userDto = userDBManager.fetchUserByUsername(username);
//        return fillUserDetails(userDto);
//    }
//
//    /**
//     * Fill USerDetails object from data in userDto.
//     * @param userDto       UserDto object.
//     * @return          DistributionUserDetails object.
//     */
//    private BMUserDetails fillUserDetails(UserDto userDto) {
//        BMUserDetails userDetails = new BMUserDetails();
//        userDetails.setUsername(userDto.getUsername());
//        userDetails.setPassword(userDto.getPassword());
//        userDetails.setEnabled(true);
//
//        List<GrantedAuthority> authorityList = new ArrayList<GrantedAuthority>();
//        authorityList.add(new SimpleGrantedAuthority("ROLE_USER"));
//        userDetails.setGrantedAuthority(authorityList);
//        return userDetails;
//    }
}
