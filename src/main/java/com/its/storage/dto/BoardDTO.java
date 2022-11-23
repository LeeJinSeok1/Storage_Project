package com.its.storage.dto;

import lombok.*;

import java.sql.Timestamp;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class BoardDTO {
    private Long id; //게시글 번호
    private String boardMember; //작성자
    private String boardName; // 제목
    private String boardContents; // 내용
    private String boardPass; //비밀번호
    private Timestamp boardTime; //시간
}
