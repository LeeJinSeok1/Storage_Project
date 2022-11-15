package com.its.storage.controller;

import com.its.storage.dto.InDTO;
import com.its.storage.dto.PageDTO;
import com.its.storage.service.InService;
import com.its.storage.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class InController {
    @Autowired
    InService inService;
    @Autowired
    ProductService productService;
    @GetMapping("inPage")
    public String inPage() {
        return "/In/productInPage";

    }
    @GetMapping("/inSave")
    public String inSave(@ModelAttribute InDTO inDTO){
        productService.upCount(inDTO);
        inService.inSave(inDTO);
        return "mainPage";
    }

    @GetMapping("/inListPage")
    public String inListPage(Model model) {
        List<InDTO> result= inService.inList();
        model.addAttribute("inList",result);
        return "/In/inListPage";

    }
    @GetMapping("/paging3")
    public String paging(Model model, @RequestParam(value = "page",required = false,
                                                     defaultValue = "1") int page){
        List<InDTO> pagingList = inService.pagingList(page);
        PageDTO pageDTO =inService.pagingParam(page);
        model.addAttribute("inList",pagingList);
        model.addAttribute("paging",pageDTO);
        return "/In/inPaging";
    }
}
