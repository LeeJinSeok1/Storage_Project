package com.its.storage.service;

import com.its.storage.commons.PagingConst;
import com.its.storage.dto.InDTO;
import com.its.storage.dto.PageDTO;
import com.its.storage.repository.InRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class InService {
    @Autowired
    InRepository inRepository;
    public void inSave(InDTO inDTO) {
        inRepository.inSave(inDTO);
    }

    public List<InDTO> inList() {
       return inRepository.inList();
    }

    public List<InDTO> pagingList(int page) {
        int pagingStart= (page-1) * PagingConst.PAGE_LIMIT;
        Map<String,Integer> pagingParams = new HashMap<>();
        pagingParams.put("start",pagingStart);
        pagingParams.put("limit",PagingConst.PAGE_LIMIT);
        List<InDTO> pagingList = inRepository.pagingList(pagingParams);
        return  pagingList;

    }

    public PageDTO pagingParam(int page) {
        int inCount = inRepository.inCount();
        int maxPage = (int) (Math.ceil((double) inCount / PagingConst.PAGE_LIMIT));
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
