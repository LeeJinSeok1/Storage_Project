package com.its.storage.controller;

import com.its.storage.dto.BoardDTO;
import com.its.storage.dto.PageDTO;
import com.its.storage.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class BoardController {
    @Autowired
    BoardService boardService;
    @GetMapping("/boardPage")
    public String boardMain() {
        return "/board/boardMain";
    }

    @GetMapping("/boardSavePage")
    public String boardSavePage() {
        return "/board/boardSavePage";
    }

    @PostMapping("/boardSave")
    public String boardSave(@ModelAttribute BoardDTO boardDTO) {
        boardService.boardSave(boardDTO);
        return "redirect:/boardPage";
    }

    @GetMapping("/paging5")
    public String boardPage(Model model, @RequestParam(value = "page", required = false,
                                                       defaultValue = "1") int page) {
        List<BoardDTO> pagingList= boardService.pagingList(page);
        PageDTO pageDTO = boardService.pagingParam(page);
        model.addAttribute("boardList", pagingList);
        model.addAttribute("paging", pageDTO);
        return "/board/boardMain";
    }







}
