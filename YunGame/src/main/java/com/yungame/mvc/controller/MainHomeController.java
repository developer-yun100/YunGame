package com.yungame.mvc.controller;

import com.util.PagingUtil;
import com.yungame.mvc.dto.MainHomeDTO;
import com.yungame.mvc.dto.UserDTO;
import com.yungame.mvc.service.MainHomeService;
import com.yungame.webutil.SessionUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value="/mainHome")
public class MainHomeController {

    private static final Logger LOG = LoggerFactory.getLogger(MainHomeController.class);


    @Autowired
    MainHomeService mainHomeService;

    @Autowired
    PagingUtil pagingUtil;

    //tab 메뉴 화면 LIST
    // Home 화면
    @RequestMapping(value="/main")
    public String mainView(Model model){
        return "/mainHome/main";
    }

    // about 화면
    @RequestMapping(value="/about")
    public String aboutView(Model model){
        return "/mainHome/about";
    }

    // games 화면
    @RequestMapping(value="/games", method = RequestMethod.GET)
    public String gamesView(Model model, HttpServletRequest req, HttpServletResponse res,
                            @ModelAttribute MainHomeDTO mainHomeParamDTO) throws Exception {
        model.addAttribute("data", mainHomeService.selectGamesBoardView(mainHomeParamDTO));
        return "/mainHome/games";
    }

    // news 화면
    @RequestMapping(value="/news")
    public String newsView(Model model){
        return "/mainHome/news";
    }

    // news 게시글 목록
    @RequestMapping(value="/newsList")
    public String newsListView(Model model, HttpServletRequest req, HttpServletResponse res,
                               @ModelAttribute MainHomeDTO mainHomeParamDTO) throws Exception {
        mainHomeParamDTO.setPageNumber(1);
        mainHomeParamDTO.setPageGroupSize(3);
        model.addAttribute("data", mainHomeService.selectBoardList(mainHomeParamDTO));

        Map<String, Object> map = pagingUtil.paging(mainHomeService.selectBoardTotalCnout(mainHomeParamDTO), mainHomeParamDTO.getPageNumber(), mainHomeParamDTO.getPageGroupSize());
        model.addAttribute("paging", map);

        model.addAttribute("boardType", mainHomeParamDTO.getBoardType());

        return "/mainHome/newsList";
    }

    // news 게시글 목록 페이징
    @RequestMapping(value="/newsListPage")
    @ResponseBody
    public MainHomeDTO newsListPage(Model model, HttpServletRequest req, HttpServletResponse res,
                                          @RequestBody MainHomeDTO mainHomeParamDTO) throws Exception {
        MainHomeDTO resDTO = new MainHomeDTO();
        mainHomeParamDTO.setPageGroupSize(3);
        resDTO.setPaging(pagingUtil.paging(mainHomeService.selectBoardTotalCnout(mainHomeParamDTO), mainHomeParamDTO.getPageNumber(), mainHomeParamDTO.getPageGroupSize()));
        resDTO.setBoardList(mainHomeService.selectBoardList(mainHomeParamDTO));
        return resDTO;
    }

    @RequestMapping(value="/newsRead")
    public String newsReadView(Model model, HttpServletRequest req, HttpServletResponse res,
                               @ModelAttribute MainHomeDTO mainHomeParamDTO) throws Exception {
        model.addAttribute("data", mainHomeService.selectBoardView(mainHomeParamDTO));
        return "/mainHome/newsRead";
    }

    // news 게시글 쓰기 화면
    @RequestMapping(value="/newsWrite")
    public String newsWriteView(Model model){
        return "/mainHome/newsWrite";
    }

    @RequestMapping(value="/insertNewsWrite")
    @ResponseBody
    public int insertNewsWrite(Model model, HttpServletRequest req, HttpServletResponse res,
                               @RequestBody MainHomeDTO paramDTO) throws Exception{
        return mainHomeService.insertBoard(paramDTO);
    }

    // faq 화면
    @RequestMapping(value="/faq")
    public String faqView(Model model){
        return "/mainHome/faq";
    }

    // 로그인 화면
    @RequestMapping(value="/login")
    public String loginView(Model model){
        return "/mainHome/login";
    }

    // 회원가입 화면
    @RequestMapping(value="/signUpPopup")
    public String signUpPopupView(Model model){
        return "/mainHome/signUpPopup";
    }

    // 로그인
    @RequestMapping(value = "/selectUser")
    @ResponseBody
    public UserDTO selectUser(Model model, HttpServletRequest req, HttpServletResponse res,
                              @RequestBody UserDTO paramDTO) throws Exception {
        return mainHomeService.selectSessionUser(paramDTO);
    }

    // 로그아웃
    @RequestMapping(value = "/logout")
    @ResponseBody
    public int logoutCheck(Model model, HttpServletRequest req, HttpServletResponse res,
                           @RequestBody UserDTO paramDTO){
        try{
            SessionUtil.logout();
        } catch (Exception e){
            LOG.info("SessionUtil.logout() " + e.getMessage());
            SessionUtil.logout();
        }
        return 1;
    }

    // 회원가입
    @RequestMapping(value="/createUser")
    @ResponseBody
    public int createUser(Model model, HttpServletRequest req, HttpServletResponse res,
                          @RequestBody UserDTO paramDTO) throws Exception {
        return mainHomeService.createUser(paramDTO);
    }



}
