package com.its.storage.service;

import com.its.storage.dto.MemberDTO;
import com.its.storage.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    public List<MemberDTO> searchMember(String memberName) {
        return  memberRepository.searchMember(memberName);
    }
}
