package com.quotation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quotation.dto.Qutotaion;
import com.quotation.repository.QuotationRepository;

@Service
public class InsuredooServiceImpl implements InsuredooService {

    @Autowired
    QuotationRepository repository;
    
    @Override
    public List<String> getAllBrands() {
        return repository.getAllBrands();
    }

    @Override
    public List<Qutotaion> getBestQuotes(String brandName, String model) {
        return repository.getBestQutation(brandName, model);
    }

}
