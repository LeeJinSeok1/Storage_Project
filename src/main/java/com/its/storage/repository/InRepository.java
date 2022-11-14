package com.its.storage.repository;

import com.its.storage.dto.InDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

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
}
