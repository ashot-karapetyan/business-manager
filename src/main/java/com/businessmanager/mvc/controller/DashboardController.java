package com.businessmanager.mvc.controller;

import com.businessmanager.ViewNameConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Artush on 6/17/2014.
 */
@Controller
@RequestMapping(value = "/dashboard.htm", method = RequestMethod.GET)
public class DashboardController {

    @RequestMapping
    public String provideViewName() {
        return ViewNameConstants.VIEW_DASHBOARD_PAGE;
    }
}
