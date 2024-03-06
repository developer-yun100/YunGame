package com.yungame.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/official")
public class OfficialController {

    // 공지사항
    @RequestMapping(value="/importantNotice")
    public String importantNoticeView(Model model){
        return "/official/importantNotice";
    }

    // 점검 및 업데이트
    @RequestMapping(value="/updateCheck")
    public String updateCheckView(Model model){
        return "/official/updateCheck";
    }

    // 이벤트
    @RequestMapping(value="/event")
    public String eventView(Model model){
        return "/official/event";
    }

    // 커뮤니티
    @RequestMapping(value="/community")
    public String communityView(Model model){
        return "/official/community";
    }

    @RequestMapping(value="/detail")
    public String detailView(Model model){
        return "/official/detail";
    }


}
