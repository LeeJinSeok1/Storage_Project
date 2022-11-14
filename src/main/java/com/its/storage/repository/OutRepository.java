package com.its.storage.repository;

import com.its.storage.dto.OutDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class OutRepository {
    @Autowired
    SqlSessionTemplate sql;
    public void outSave(OutDTO outDTO) {
        sql.insert("outSpace.outSave",outDTO);
    }

    public List<OutDTO> outList() {
        return sql.selectList("outSpace.outList");
    }
}
