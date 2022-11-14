package com.its.storage.dto;

import lombok.*;

import java.sql.Timestamp;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class OutDTO {
    private Long id;
    private Timestamp outTime;
    private int outCount;
    private String productName;
    private String memberName;
}
//    create table product_out_table(
//        id bigint auto_increment primary key,
//        outTime datetime default now(),
//outCount int,
//        productName varchar(20),
//        memberName varchar(20),
//        constraint fk_out foreign key(productName) references product_table(productName),
//        constraint fk_out2 foreign key(memberName) references member_table(memberName)
//        );