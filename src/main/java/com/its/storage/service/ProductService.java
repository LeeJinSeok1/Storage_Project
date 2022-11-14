package com.its.storage.service;

import com.its.storage.dto.ProductDTO;
import com.its.storage.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
    @Autowired
    ProductRepository productRepository;
    public void productSave(ProductDTO productDTO) {
        productRepository.productSave(productDTO);

    }
}
