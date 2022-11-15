package com.its.storage.controller;

import com.its.storage.dto.OutDTO;
import com.its.storage.dto.PageDTO;
import com.its.storage.service.OutService;
import com.its.storage.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class OutController {
    @Autowired
    ProductService productService;
    @Autowired
    OutService outService;
    @GetMapping("/outPage")
    public String outPage() {
        return "/out/productOutPage";
    }
    @GetMapping("/outSave")
    public String outSave(@ModelAttribute OutDTO outDTO) {
        productService.downCount(outDTO);
        outService.outSave(outDTO);
        return "mainPage";
    }
    @GetMapping("/outListPage")
    public String outList(Model model) {
      List<OutDTO> result=  outService.outList();
      model.addAttribute("outList",result);
      return "/out/outListPage";
    }

    @GetMapping("/paging4")
    public String paging(Model model, @RequestParam( value = "page", required = false,
                                                    defaultValue = "1") int page){
        List<OutDTO> pagingList = outService.pagingList(page);
        PageDTO pageDTO = outService.pagingParams(page);
        model.addAttribute("outList",pagingList);
        model.addAttribute("paging",pageDTO);

        return "/out/outPaging";
    }
}
