package com.its.storage.controller;

import com.its.storage.dto.MemberDTO;
import com.its.storage.dto.PageDTO;
import com.its.storage.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Member;
import java.util.List;

@Controller
public class MemberController {
    @Autowired
    MemberService memberService;

    //    회원가입 홈으로 이동하기
    @GetMapping("/memberSavePage")
    public String memberSavePage() {
        return "/member/memberSavePage";
    }

    //  회원가입에서 디비로 저장처리
    @GetMapping("/memberSave")
    public String memberSave(@ModelAttribute MemberDTO memberDTO) {
        memberService.memberSave(memberDTO);
        return "saveSuccess";
    }

    // 완료 후 로그인으로 이동
    @GetMapping("/loginPage")
    public String loginPage() {
        return "index";
    }

// 로그인창에서 db로 조회 후 로그인 처리하기
    @GetMapping("/memberCk")
    public@ResponseBody String memberCk(@ModelAttribute MemberDTO memberDTO) {
        MemberDTO result= memberService.memberCk(memberDTO);
        System.out.println(result);
        if(result!=null) {
            return "yes";
        }else{
            return "no";
        }
    }
    // 로그인 후 메인 페이지로 이동
    @PostMapping("/memberLogin")
    public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session) {
        MemberDTO member = memberService.memberCk(memberDTO);
        session.setAttribute("loginEmail",member.getMemberEmail());
        return "mainPage";
    }
    //회원 조회 하기
    @GetMapping("/memberList")
    public String memberList(Model model){
         List<MemberDTO> members = memberService.memberList();
         model.addAttribute("members",members);
         return "/member/memberListPage";
    }
    //회원리스트에서 이름 검색

    @GetMapping("/searchMember")
    public String searchMember(@RequestParam("type") String type,
                               @RequestParam("q") String q,Model model){
        List<MemberDTO> result = memberService.searchMember(type,q);
        model.addAttribute("members",result);
        return "/member/memberListPage";

    }
    @GetMapping("/mainPage")
    public String mainPage() {
        return "mainPage";
    }

    @GetMapping("logOut")
    public String logOut(HttpSession session){
        session.invalidate();
        return "index";
    }
    @GetMapping("/nameCk")
    public @ResponseBody String nameCk(@RequestParam("memberName") String memberName) {
        MemberDTO result = memberService.nameCk(memberName);
        if(result !=null) {
            return "no";
        }else{
            return "good";
        }
    }

    @GetMapping("/emailCk")
    public @ResponseBody String emailCk(@RequestParam("memberEmail") String memberEmail) {
        MemberDTO result = memberService.emailCk(memberEmail);
        if(result != null) {
            return "no";
        }else {
            return "good";
        }
    }

    @GetMapping("/myPage")
    public String myPage(@RequestParam("memberEmail") String memberEmail,Model model){
        MemberDTO result = memberService.myPage(memberEmail);
        model.addAttribute("member",result);
        return "/member/memberPage";
    }

    @GetMapping("updateMember")
    public String updatePage(@RequestParam("id") Long id,
                             Model model){
        MemberDTO result = memberService.updatePage(id);
        model.addAttribute("member",result);
        return "/member/memberUpdatePage";
    }
    @PostMapping("/updateMember")
    public String updateMember(@ModelAttribute MemberDTO memberDTO){
        memberService.updateMember(memberDTO);
        return "mainPage";
    }

    @GetMapping("/paging2")
    public String paging2(Model model,@RequestParam(value="page", required = false,
                                                    defaultValue = "1") int page){
        List<MemberDTO> memberList = memberService.pagingList(page);

        PageDTO pageDTO = memberService.pagingParams(page);
        model.addAttribute("memberList",memberList);
        model.addAttribute("paging",pageDTO);
        return "/member/memberPaging";
    }

    @GetMapping("/deleteMember")
    public String deleteMember(@RequestParam("id") Long id) {
        memberService.deleteMember(id);
        return "mainPage";
    }




}