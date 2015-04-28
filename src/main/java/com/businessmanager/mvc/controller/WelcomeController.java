package com.businessmanager.mvc.controller;

import com.businessmanager.ViewNameConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "/welcome.htm", method = RequestMethod.GET)
public class WelcomeController {

    @RequestMapping
    public String handleRequest() {
        return ViewNameConstants.VIEW_WELCOME_PAGE;
    }
}
