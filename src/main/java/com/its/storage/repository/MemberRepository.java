package com.its.storage.repository;

import com.its.storage.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class MemberRepository {
    @Autowired
    SqlSessionTemplate sql;

    public void memberSave(MemberDTO memberDTO) {
        sql.insert("memberSpace.memberSave",memberDTO);
    }

    public MemberDTO memberCk(MemberDTO memberDTO) {
        return sql.selectOne("memberSpace.memberCk",memberDTO);
    }

    public List<MemberDTO> memberList() {
        return  sql.selectList("memberSpace.memberList");
    }


    public List<MemberDTO> searchMember(Map<String, String> searchParams) {
        return  sql.selectList("memberSpace.searchMember",searchParams);
    }

    public MemberDTO nameCk(String memberName) {
        return sql.selectOne("memberSpace.nameCk",memberName);
    }

    public MemberDTO emailCk(String memberEmail) {
        return sql.selectOne("memberSpace.emailCk",memberEmail);
    }


    public MemberDTO myPage(String memberEmail) {
        return sql.selectOne("memberSpace.myPage",memberEmail);
    }

    public MemberDTO updatePage(Long id) {
        return sql.selectOne("memberSpace.updatePage",id);
    }

    public void updateMember(MemberDTO memberDTO) {
        sql.update("memberSpace.updateMember",memberDTO);
    }

    public List<MemberDTO> pagingList(Map<String, Integer> pagingParams) {
        return sql.selectList("memberSpace.pagingList",pagingParams);
    }

    public int memberCount() {
        return  sql.selectOne("memberSpace.memberCount");
    }

    public void deleteMember(Long id) {
        sql.delete("memberSpace.deleteMember",id);
    }
}
