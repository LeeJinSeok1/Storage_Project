package com.its.storage.repository;

import com.its.storage.dto.InDTO;
import com.its.storage.dto.OutDTO;
import com.its.storage.dto.ProductDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class ProductRepository {
    @Autowired
    SqlSessionTemplate sql;
    public ProductDTO productSave(ProductDTO productDTO) {
        sql.insert("productSpace.productSave",productDTO);
        return productDTO;
    }

    public List<ProductDTO> productList() {
        return  sql.selectList("productSpace.productList");
    }

    public List<ProductDTO> searchProduct(Map<String, String> searchParams) {
        return  sql.selectList("productSpace.searchProduct",searchParams);
    }

    public void upCount(InDTO inDTO) {
        sql.update("productSpace.upCount",inDTO);
    }

    public void downCount(OutDTO outDTO) {
        sql.update("productSpace.downCount",outDTO);
    }

    public ProductDTO productCk(String productName) {
        return sql.selectOne("productSpace.productCk",productName);
    }

    public List<ProductDTO> pagingList(Map<String, Integer> pagingParams) {
        return sql.selectList("productSpace.pagingList",pagingParams);
    }

    public int productCount() {
        return sql.selectOne("productSpace.productCount");
    }

    public void saveFile(ProductDTO result) {
        sql.insert("productSpace.saveFile",result);
    }

    public ProductDTO productDetail(Long id) {
      return  sql.selectOne("productSpace.productDetail",id);
    }
}
