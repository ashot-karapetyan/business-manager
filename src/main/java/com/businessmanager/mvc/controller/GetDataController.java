package com.businessmanager.mvc.controller;

import com.businessmanager.db.dto.LogDto;
import com.businessmanager.mvc.model.MarketDetails;
import com.businessmanager.mvc.model.ProductDetails;
import com.businessmanager.mvc.model.json.AsynchResponseJson;
import com.businessmanager.service.MarketService;
import com.businessmanager.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/**
 * Created by Artush on 5/23/2015.
 */
@Controller
public class GetDataController {

    @Autowired
    MarketService marketService;

    @Autowired
    ProductService productService;

    @InitBinder
    protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy HH:mm");
        dateFormat.setTimeZone(TimeZone.getDefault());
        dateFormat.setLenient(false);
        binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, true));
    }

    @RequestMapping(value = "/get-market-data.htm", method = RequestMethod.GET)
    @ResponseBody
    protected AsynchResponseJson handleMarketData(@RequestParam(value = "businessId") Integer businessId,
                                                   @RequestParam(value = "marketId") Integer marketId,
                                                   @RequestParam(value = "startTime") Date startTime,
                                                   @RequestParam(value = "endTime") Date endTime) {
        AsynchResponseJson doneActionResponse = new AsynchResponseJson();

        MarketDetails marketDetails = marketService.getLogs(businessId, marketId, startTime, endTime);
        doneActionResponse.addResponseParam("marketDetails", marketDetails);
        return doneActionResponse;
    }

    @RequestMapping(value = "/get-product-data.htm", method = RequestMethod.GET)
    @ResponseBody
    protected AsynchResponseJson handleProductData(@RequestParam(value = "businessId") Integer businessId,
                                                   @RequestParam(value = "productId") Integer productId,
                                                   @RequestParam(value = "startTime") Date startTime,
                                                   @RequestParam(value = "endTime") Date endTime) {
        AsynchResponseJson doneActionResponse = new AsynchResponseJson();

        ProductDetails productDetails = productService.getLogs(businessId, productId, startTime, endTime);
        doneActionResponse.addResponseParam("productDetails", productDetails);
        return doneActionResponse;
    }
}
