package com.its.storage.repository;

import com.its.storage.dto.InDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class InRepository {
    @Autowired
    SqlSessionTemplate sql;
    public void inSave(InDTO inDTO) {
        sql.insert("inSpace.inSave",inDTO);
    }

    public List<InDTO> inList() {
       return sql.selectList("inSpace.inList");
    }

    public List<InDTO> pagingList(Map<String, Integer> pagingParams) {
        return sql.selectList("inSpace.pagingList",pagingParams);
    }

    public int inCount() {
        return sql.selectOne("inSpace.inCount");
    }
}
