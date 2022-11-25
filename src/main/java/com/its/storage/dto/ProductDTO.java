package com.its.storage.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

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
    private MultipartFile productFile;
    private String originalFileName;
    private String fakeFileName;
}


