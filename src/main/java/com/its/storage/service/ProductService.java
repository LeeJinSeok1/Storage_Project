package com.its.storage.service;

import com.its.storage.commons.PagingConst;
import com.its.storage.dto.InDTO;
import com.its.storage.dto.OutDTO;
import com.its.storage.dto.PageDTO;
import com.its.storage.dto.ProductDTO;
import com.its.storage.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ProductService {
    @Autowired
    ProductRepository productRepository;

    public void productSave(ProductDTO productDTO) throws IOException {
        if(!productDTO.getProductFile().isEmpty()) {
            // 파일 첨부가 있다면 실행
            System.out.println("파일 있음");
            MultipartFile productFile = productDTO.getProductFile();
            //dogFile 에 저장된 파일을 넣어줌
            String originalFileName = productFile.getOriginalFilename();
            // originalFileName에 저장된 파일의 이름을 넣어줌
            String fakeFileName = System.currentTimeMillis() + "-" + originalFileName;
            //TimeMillis를 사용해서 fakeFileName(서버관리용) 에 겹치지않는 이름을 originalFileName과 넣어줌
            productDTO.setOriginalFileName(originalFileName);
            productDTO.setFakeFileName(fakeFileName);
            //그 값들을 다시 dto에 넣어줌
            String savePath = "D:\\spring_img\\" + fakeFileName;
            productFile.transferTo(new File(savePath));
            //파일을 저장할 경로 지정
            ProductDTO result = productRepository.productSave(productDTO);
            //기존 테이블에 저장
            productRepository.saveFile(result);
            //파일 저장
        }else{
            productRepository.productSave(productDTO);
        }

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

    public ProductDTO productDetail(Long id) {
        return productRepository.productDetail(id);
    }
}
