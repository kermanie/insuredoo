package com.quotation.service;

import java.util.List;

import com.quotation.dto.Qutotaion;

public interface InsuredooService {

    public List<String> getAllBrands();
    
    public List<Qutotaion> getBestQuotes(String brandName, String model);
}
