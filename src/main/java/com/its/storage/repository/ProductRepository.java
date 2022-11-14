package com.its.storage.repository;

import com.its.storage.dto.ProductDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductRepository {
    @Autowired
    SqlSessionTemplate sql;
    public void productSave(ProductDTO productDTO) {
        sql.insert("productSpace.productSave",productDTO);
    }
}
