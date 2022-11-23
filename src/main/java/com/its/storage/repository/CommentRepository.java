package com.its.storage.repository;

import com.its.storage.dto.CommentDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CommentRepository {
    @Autowired
    SqlSessionTemplate sql;
    public void commentSave(CommentDTO commentDTO) {
        sql.insert("commentSpace.commentSave",commentDTO);
    }

    public List<CommentDTO> commentList(CommentDTO commentDTO) {
        return sql.selectList("commentSpace.commentList",commentDTO);
    }

    public List<CommentDTO> commentList2(Long id) {
        return sql.selectList("commentSpace.commentList2",id);
    }
}
