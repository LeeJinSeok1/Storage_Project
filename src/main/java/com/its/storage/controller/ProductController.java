package com.its.storage.controller;

import com.its.storage.dto.PageDTO;
import com.its.storage.dto.ProductDTO;
import com.its.storage.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

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

    //재고조회
    @GetMapping("/productList")
    public String productList(Model model) {
        List<ProductDTO> productList = productService.productList();
        model.addAttribute("product",productList);
        return "/product/productListPage";
    }
    @GetMapping("/searchProduct")
    public String searchProduct(@RequestParam("type") String type,
                                @RequestParam("q") String q,Model model) {
        List<ProductDTO> result = productService.searchProduct(type,q);
        model.addAttribute("product",result);

        return "/product/productListPage";

    }

    @GetMapping("/productCk")
    public @ResponseBody String productCk(@RequestParam("productName") String productName) {
        ProductDTO result = productService.productCk(productName);
        if(result !=null){
            return "good";
        }else {
            return "no";
        }
    }

    //페이징

    @GetMapping("/paging")
    public String paging(Model model,@RequestParam(value= "page",required = false,defaultValue = "1") int page){
        List<ProductDTO> pagingList= productService.pagingList(page);

        PageDTO pageDTO = productService.pagingParam(page);
        model.addAttribute("productList",pagingList);
        model.addAttribute("paging",pageDTO);
        return "/product/productPaging";
    }

}
