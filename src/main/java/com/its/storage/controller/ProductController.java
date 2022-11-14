package com.its.storage.controller;

import com.its.storage.dto.ProductDTO;
import com.its.storage.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class ProductController {
    @Autowired
    ProductService productService;
    // 상품 저장 페이지 이동
    @GetMapping("/saveProductPage")
    public String saveProductPage() {
        return "/product/productSavePage";
    }

    // 상품 저장 처리
    @GetMapping("/productSave")
    public String productSave(@ModelAttribute ProductDTO productDTO) {
        productService.productSave(productDTO);
        return "mainPage";
    }
}
