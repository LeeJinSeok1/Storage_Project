package com.its.storage.dto;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class ProductDTO {
    private long id;
    private String productClient;
    private String productName;
    private int productCount;
    private  String productLocation;
    private String memberName;
}


