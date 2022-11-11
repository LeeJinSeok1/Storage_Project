package com.its.storage.controller;

import com.its.storage.dto.MemberDTO;
import com.its.storage.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Member;

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

    @PostMapping("/memberLogin")
    public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session) {
        MemberDTO member = memberService.memberCk(memberDTO);
        session.setAttribute("loginEmail",member.getMemberEmail());
        return "mainPage";
    }


}