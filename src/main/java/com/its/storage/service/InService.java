package com.its.storage.service;

import com.its.storage.dto.InDTO;
import com.its.storage.repository.InRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InService {
    @Autowired
    InRepository inRepository;
    public void inSave(InDTO inDTO) {
        inRepository.inSave(inDTO);
    }

    public List<InDTO> inList() {
       return inRepository.inList();
    }
}
