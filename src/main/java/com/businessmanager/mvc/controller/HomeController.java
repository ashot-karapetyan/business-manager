package com.businessmanager.mvc.controller;

import com.businessmanager.ViewNameConstants;
import com.businessmanager.db.dto.BusinessDto;
import com.businessmanager.service.BusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AbstractAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by Artush on 6/17/2014.
 */
@Controller
@RequestMapping(value = "/home.htm", method = RequestMethod.GET)
public class HomeController {

    @Autowired
    BusinessService businessService;

    @RequestMapping
    public String provideUserBusinessesList(Model model, AbstractAuthenticationToken authenticationToken) {
        String username = ((UserDetails) authenticationToken.getPrincipal()).getUsername();
        List<BusinessDto> businesses = businessService.getUserBusinesses(username);
        model.addAttribute("businesses", businesses);
        return ViewNameConstants.VIEW_HOME_PAGE;
    }
}
