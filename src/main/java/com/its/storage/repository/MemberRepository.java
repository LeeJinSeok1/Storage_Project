package com.its.storage.repository;

import com.its.storage.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

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

    public List<MemberDTO> searchMember(String memberName) {
        return  sql.selectList("memberSpace.searchMember",memberName);
    }
}
