package com.its.storage.service;

import com.its.storage.dto.OutDTO;
import com.its.storage.repository.OutRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OutService {
    @Autowired
    OutRepository outRepository;
    public void outSave(OutDTO outDTO) {
        outRepository.outSave(outDTO);

    }

    public List<OutDTO> outList() {
        return  outRepository.outList();
    }
}
