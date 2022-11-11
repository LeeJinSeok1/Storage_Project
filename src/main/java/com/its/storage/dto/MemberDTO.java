package com.its.storage.dto;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class MemberDTO {
    private Long id;
    private String memberName;
    private String memberPhone;
    private String memberEmail;
    private String memberPass;
}


