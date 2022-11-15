package com.its.storage.service;

import com.its.storage.commons.PagingConst;
import com.its.storage.dto.InDTO;
import com.its.storage.dto.OutDTO;
import com.its.storage.dto.PageDTO;
import com.its.storage.repository.OutRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OutService {
    @Autowired
    OutRepository outRepository;
    public void outSave(OutDTO outDTO) {
        outRepository.outSave(outDTO);

    }

    public List<OutDTO> outList() {
        return  outRepository.outList();
    }

    public List<OutDTO> pagingList(int page) {

        int pagingStart= (page-1) * PagingConst.PAGE_LIMIT;
        Map<String,Integer> pagingParams = new HashMap<>();
        pagingParams.put("start",pagingStart);
        pagingParams.put("limit",PagingConst.PAGE_LIMIT);
        List<OutDTO> pagingList = outRepository.pagingList(pagingParams);
        return  pagingList;
    }

    public PageDTO pagingParams(int page) {
        int outCount = outRepository.outCount();
        int maxPage = (int) (Math.ceil((double) outCount / PagingConst.PAGE_LIMIT));
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
