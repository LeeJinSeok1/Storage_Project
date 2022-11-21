package com.its.storage.service;

import com.its.storage.commons.PagingConst;
import com.its.storage.dto.MemberDTO;
import com.its.storage.dto.PageDTO;
import com.its.storage.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MemberService {
    @Autowired
    MemberRepository memberRepository;

    public void memberSave(MemberDTO memberDTO) {
        memberRepository.memberSave(memberDTO);
    }

    public MemberDTO memberCk(MemberDTO memberDTO) {
      return   memberRepository.memberCk(memberDTO);
    }

    public List<MemberDTO> memberList() {
        return  memberRepository.memberList();
    }


    public List<MemberDTO> searchMember(String type, String q) {
        Map<String,String> searchParams =  new HashMap<>();
        searchParams.put("type",type);
        searchParams.put("q",q);
        return memberRepository.searchMember(searchParams);
    }

    public MemberDTO nameCk(String memberName) {
        return memberRepository.nameCk(memberName);
    }

    public MemberDTO emailCk(String memberEmail) {
        return memberRepository.emailCk(memberEmail);
    }


    public MemberDTO myPage(String memberEmail) {
        return  memberRepository.myPage(memberEmail);
    }

    public MemberDTO updatePage(Long id) {
        return  memberRepository.updatePage(id);
    }

    public void updateMember(MemberDTO memberDTO) {
        memberRepository.updateMember(memberDTO);
    }

    public List<MemberDTO> pagingList(int page) {

        int pagingStart = (page-1) * PagingConst.PAGE_LIMIT;
        Map<String,Integer> pagingParams = new HashMap<>();
        pagingParams.put("start",pagingStart);
        pagingParams.put("limit",PagingConst.PAGE_LIMIT);
        List<MemberDTO>  pagingList = memberRepository.pagingList(pagingParams);
        return pagingList;

    }

    public PageDTO pagingParams(int page) {
        int memberCount = memberRepository.memberCount();
        int maxPage = (int) (Math.ceil((double) memberCount / PagingConst.PAGE_LIMIT));
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

    public void deleteMember(Long id) {
        memberRepository.deleteMember(id);
    }
}
