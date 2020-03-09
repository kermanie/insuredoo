package com.quotation.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quotation.dto.Qutotaion;
import com.quotation.service.InsuredooService;

@Controller
@RequestMapping(path = "/v1.0/quotation")
public class InsuredooController {

    @Autowired
    private InsuredooService service;

    @GetMapping(path = "/brands", produces = { MediaType.APPLICATION_JSON_VALUE })
    public List<String> getProcessor() {

        return service.getAllBrands();

    }

    @GetMapping(path = "/qutation-desired", produces = { MediaType.APPLICATION_JSON_VALUE })
    public String getBestQuotes(@RequestParam(name = "brandName", required = true) String brandName,
            @RequestParam(name = "model", required = true) String model, Map<String, Object> map) {

        System.out.println("method called with brand " + brandName + " model" + model);
        List<Qutotaion> quotes = service.getBestQuotes(brandName, model);
        if (quotes.size() > 0) {
            map.put("quotes", quotes);
            return "db";
        } else {
            map.put("message", "No Record Found For the Selected Criteria");
            return "error";
        }

    }
}
