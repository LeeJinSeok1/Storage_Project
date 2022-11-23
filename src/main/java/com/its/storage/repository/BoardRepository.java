package com.its.storage.repository;

import com.its.storage.dto.BoardDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class BoardRepository {
    @Autowired
    SqlSessionTemplate sql;
    public void boardSave(BoardDTO boardDTO) {
        sql.insert("boardSpace.boardSave",boardDTO);
    }

    public List<BoardDTO> pagingList(Map<String, Integer> pagingParams) {
        return sql.selectList("boardSpace.pagingList",pagingParams);
    }

    public int boardCount() {
        return sql.selectOne("boardSpace.boardCount");
    }
}
