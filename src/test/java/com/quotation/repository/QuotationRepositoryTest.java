package com.quotation.repository;

import java.util.List;


import org.assertj.core.api.Assertions;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.Import;
import org.springframework.test.context.junit4.SpringRunner;

import com.quotation.dto.Qutotaion;

@Import(QuotationRepository.class)
@RunWith(SpringRunner.class)
@DataJpaTest
public class QuotationRepositoryTest{
    
    @Autowired
    private QuotationRepository quotationRepository;
    
    @Before
    public void setup() {
       
    }
    
    @Test
    public void testGetAllBrands() throws Exception {
        List<String> result = quotationRepository.getAllBrands();
        System.out.println("results feteched from db - "+result);
        Assertions.assertThat(result).isNotNull();
        Assertions.assertThat(result).isNotEmpty();
    }
    
    @Test
    public void testTWOBestQuotes() throws Exception {
        List<Qutotaion> result = quotationRepository.getBestQutation("Toyota", "2010");
        System.out.println("qutation feteched - "+result.size());
        Assertions.assertThat(result).isNotNull();
        Assertions.assertThat(result).isNotEmpty();
        Assertions.assertThat(result.size()).isEqualTo(2);
    }
    
    @Test
    public void testUniqueBestQuote() throws Exception {
        List<Qutotaion> result = quotationRepository.getBestQutation("Toyota", "2001");
        System.out.println("qutation feteched - "+result.size());
        Assertions.assertThat(result).isNotNull();
        Assertions.assertThat(result).isNotEmpty();
        Assertions.assertThat(result.size()).isEqualTo(1);
    }
}
