package com.its.storage.dto;

import lombok.*;

import java.sql.Timestamp;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class CommentDTO {
    private Long id;
    private String commentMember;
    private String commentContents;
    private Long boardId;
    private Timestamp commentTime;
}
