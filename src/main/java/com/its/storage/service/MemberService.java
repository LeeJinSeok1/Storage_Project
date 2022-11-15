package com.its.storage.service;

import com.its.storage.dto.MemberDTO;
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
}
