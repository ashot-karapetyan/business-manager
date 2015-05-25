package com.businessmanager.mvc.controller;

import com.businessmanager.ViewNameConstants;
import com.businessmanager.db.dto.BusinessDto;
import com.businessmanager.db.dto.MarketDto;
import com.businessmanager.db.dto.ProductDto;
import com.businessmanager.db.dto.ProviderDto;
import com.businessmanager.service.BusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by Artush on 6/17/2014.
 */
@Controller
@RequestMapping(value = "/dashboard.htm", method = RequestMethod.POST)
public class DashboardController {

    @Autowired
    BusinessService businessService;

    @RequestMapping
    public String handle(@RequestParam(value = "modelId") Integer modelId,
                         @RequestParam(value = "businessId") Integer businessId,
                         Model model) {

        List<ProviderDto> providers = businessService.getBusinessProviders(businessId);
        List<MarketDto> markets = businessService.getBusinessMarkets(businessId);
        List<ProductDto> products = businessService.getBusinessProducts(businessId);
        BusinessDto business = businessService.getBusinessById(businessId);

        model.addAttribute("providers", providers);
        model.addAttribute("markets", markets);
        model.addAttribute("products", products);
        model.addAttribute("business", business);

        return ViewNameConstants.VIEW_DASHBOARD_PAGE;
    }
}
