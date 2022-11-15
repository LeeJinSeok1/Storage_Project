package com.its.storage.service;

import com.its.storage.commons.PagingConst;
import com.its.storage.dto.InDTO;
import com.its.storage.dto.OutDTO;
import com.its.storage.dto.PageDTO;
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


    public ProductDTO productCk(String productName) {
        return  productRepository.productCk(productName);
    }

    public List<ProductDTO> pagingList(int page) {

        int pagingStart = (page-1)  * PagingConst.PAGE_LIMIT;
        Map<String,Integer> pagingParams = new HashMap<>();
        pagingParams.put("start",pagingStart);
        pagingParams.put("limit",PagingConst.PAGE_LIMIT);
        List<ProductDTO> pagingList = productRepository.pagingList(pagingParams);
        return pagingList;

    }

    public PageDTO pagingParam(int page) {
        int productCount = productRepository.productCount();
        int maxPage = (int) (Math.ceil((double) productCount / PagingConst.PAGE_LIMIT));
        int startPage = (((int)(Math.ceil((double) page / PagingConst.BLOCK_LIMIT))) - 1) * PagingConst.BLOCK_LIMIT + 1;
        int endPage = startPage + PagingConst.BLOCK_LIMIT - 1;

        if(endPage> maxPage){
            endPage = maxPage;
        }

        PageDTO pageDTO = new PageDTO();
        pageDTO.setPage(page);
        pageDTO.setMaxPage(maxPage);
        pageDTO.setStartPage(startPage);
        pageDTO.setEndPage(endPage);
        return pageDTO;
    }
}
