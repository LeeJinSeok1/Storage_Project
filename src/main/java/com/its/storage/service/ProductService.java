package com.its.storage.service;

import com.its.storage.dto.InDTO;
import com.its.storage.dto.OutDTO;
import com.its.storage.dto.ProductDTO;
import com.its.storage.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ProductService {
    @Autowired
    ProductRepository productRepository;
    public void productSave(ProductDTO productDTO) {
        productRepository.productSave(productDTO);

    }

    public List<ProductDTO> productList() {
        return productRepository.productList();
    }

    public List<ProductDTO> searchProduct(String type, String q) {
        Map<String,String> searchParams = new HashMap<>();
        searchParams.put("type",type);
        searchParams.put("q",q);
        List<ProductDTO> result = productRepository.searchProduct(searchParams);
        return result;
    }

    public void upCount(InDTO inDTO) {
        productRepository.upCount(inDTO);
    }

    public void downCount(OutDTO outDTO) {
        productRepository.downCount(outDTO);
    }


}
