package com.quotation.repository;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

import com.quotation.dto.Qutotaion;

@Repository
public class QuotationRepository {

   @Value("${spring.datasource.url}")
   private String dbUrl;

   @PersistenceContext
   private EntityManager entityManager;
    
    @SuppressWarnings(value="unchecked")
    public List<String> getAllBrands(){
        
        String sql = "select brand_name from brand";
        Query query= entityManager.createNativeQuery(sql);
        return query.getResultList();
    }
    
    @SuppressWarnings(value="unchecked")
    public List<Qutotaion> getBestQutation(String brandName, String model){
        String sql = "select company_name, is_islamic, brand_name, amount_net, amount_tax, valid_from as model_from, valid_to as model_to "
                + "from (select takaful_id, name as company_name, is_islamic, p.product_id, "
                + "amount_net, amount_tax, valid_from, valid_to,bp.brand_id, (select brand_name from brand b where b.brand_id = bp.brand_id) "
                + "from takaful t, product p, product_brand bp where p.company_id = t.takaful_id and bp.product_id =  p.product_id) view_takaful "
                + "where brand_name = '"+brandName+"' and "+model+" between valid_from AND valid_to order by amount_net asc";
        Query query = entityManager.createNativeQuery(sql);
        
        
        ///
        
        List<Object[]> res = query.getResultList();
        List<Qutotaion> list= new ArrayList<Qutotaion>();

        Iterator it = res.iterator();
        while(it.hasNext()){
             Object[] line = (Object[]) it.next();
             Qutotaion quotation = new Qutotaion();
             quotation.setCompanyName((String) line[0]);
             quotation.setIslamic((boolean) line[1]);
             quotation.setBrandName((String) line[2]);
             quotation.setAmountNet((Integer) line[3]);
             quotation.setAmountTax((Integer) line[4]);
             quotation.setModelFrom((Integer) line[5]);
             quotation.setModelFrom((Integer) line[6]);
             boolean found = false;
             for (Qutotaion q: list){
                 if(q.isIslamic() == quotation.isIslamic()){
                     found = true;
                 }
             }
             if(!found)
                 list.add(quotation);
        }
        
        return list;
    }
}
