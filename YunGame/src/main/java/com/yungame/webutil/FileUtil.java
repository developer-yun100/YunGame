package com.yungame.webutil;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value="/api")
public class FileUtil {

    @RequestMapping(value="/fileUpload", method = RequestMethod.POST)
    public String fileUpload(Model model, HttpServletRequest req, HttpServletResponse res,
                             MultipartHttpServletRequest uploadFile) throws Exception{
        System.out.println("파일: " + uploadFile);
        String test = "";
        MultipartFile mf = uploadFile.getFile("upload");
        test = mf.getOriginalFilename();
        System.out.println("test-> " + test);
        return test;
    }

    @RequestMapping(value="/fileDelete", method = RequestMethod.POST)
    public String fileDelete(Model model, MultipartFile[] uploadFile){
        return "";
    }



}
