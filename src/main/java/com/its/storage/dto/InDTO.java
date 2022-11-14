package com.its.storage.dto;

import lombok.*;

import java.sql.Timestamp;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class InDTO {
    private Long id ;
    private Timestamp inTime;
    private int inCount;
    private String productName;
    private String memberName;
}

//    create table product_in_table(
//        id bigint auto_increment primary key,
//        inTime timestamp default now(),
//inCount int,
//        productId bigint,
//        constraint fk_in foreign key(productId) references product_table(id)
//        );
