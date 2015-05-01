package com.businessmanager.service;

import com.businessmanager.db.UserDBManager;
import com.businessmanager.db.dto.UserDto;
import com.businessmanager.db.dto.UserRoleDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService implements UserDetailsService {

    @Autowired
    UserDBManager userDBManager;

    /**
     * Load user by username.
     * @param username  User's username.
     * @return          Spring UserDetails object.
     */
    public UserDetails loadUserByUsername(String username) {
        UserDto userDto = userDBManager.fetchUserByUsername(username);
        List<UserRoleDto> userRoleDtoList = userDBManager.fetchUserRoles(username);

        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        for (UserRoleDto userRoleDto : userRoleDtoList) {
            authorities.add(new SimpleGrantedAuthority(userRoleDto.getRole()));
        }

        return new User(userDto.getUsername(), userDto.getPassword(), authorities);
    }

}
