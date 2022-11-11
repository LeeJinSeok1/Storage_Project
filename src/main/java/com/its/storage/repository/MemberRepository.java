package com.its.storage.repository;

import com.its.storage.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
