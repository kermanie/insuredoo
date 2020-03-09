package com.quotation.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quotation.service.InsuredooService;

@Controller
public class MainController {

    @Autowired
    private InsuredooService service;
    
    @RequestMapping("/")
    String index(Map<String, Object> model) {
        List<String> output = service.getAllBrands();
        System.out.println("index called "+output.get(0).toString());
        System.out.println("index called 2"+output.get(0));
        model.put("records", output);
        return "index";
    }
    
}
