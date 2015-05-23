package com.businessmanager.mvc.controller;

import com.businessmanager.ViewNameConstants;
import com.businessmanager.db.dto.LogDto;
import com.businessmanager.db.dto.MarketDto;
import com.businessmanager.db.dto.ProductDto;
import com.businessmanager.db.dto.ProviderDto;
import com.businessmanager.service.BusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by Artush on 6/17/2014.
 */
@Controller
@RequestMapping(value = "/dashboard/{modelId}/{businessId}.htm", method = RequestMethod.GET)
public class DashboardController {

    @Autowired
    BusinessService businessService;

    @RequestMapping
    public String handle(@PathVariable Integer modelId, @PathVariable Integer businessId, Model model) {
        List<ProviderDto> providers = businessService.getBusinessProviders(businessId);
        List<MarketDto> markets = businessService.getBusinessMarkets(businessId);
        List<ProductDto> products = businessService.getBusinessProducts(businessId);

        model.addAttribute("providers", providers);
        model.addAttribute("markets", markets);
        model.addAttribute("products", products);

        return ViewNameConstants.VIEW_DASHBOARD_PAGE;
    }
}
