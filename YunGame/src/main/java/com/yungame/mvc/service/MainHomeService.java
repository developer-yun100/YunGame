package com.yungame.mvc.service;

import com.util.SecurityUtil;
import com.yungame.mvc.dto.MainHomeDTO;
import com.yungame.mvc.dto.UserDTO;
import com.yungame.mvc.mapper.MainHomeMapper;
import com.yungame.webutil.SessionUtil;
import org.eclipse.jdt.internal.compiler.batch.Main;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class MainHomeService {

    @Autowired
    MainHomeMapper mainHomeMapper;

    public MainHomeDTO selectGamesBoardView(MainHomeDTO paramDTO) throws Exception{
        return mainHomeMapper.selectGamesBoardView(paramDTO);
    }

    public List<MainHomeDTO> selectBoardList(MainHomeDTO paramDTO) throws Exception{
        return mainHomeMapper.selectBoardList(paramDTO);
    }

    public int selectBoardTotalCnout(MainHomeDTO paramDTO) throws Exception{
        return mainHomeMapper.selectBoardTotalCnout(paramDTO);
    }

    public MainHomeDTO selectBoardView(MainHomeDTO paramDTO) throws Exception{
        return mainHomeMapper.selectBoardView(paramDTO);
    }


    // 로그인
    public UserDTO selectSessionUser(UserDTO paramDTO) throws Exception {
        String pw = SecurityUtil.sha256(paramDTO.getPassword());
        paramDTO.setPassword(pw);
        UserDTO dto = mainHomeMapper.selectSessionUser(paramDTO);
        // 세션 부여
        if(dto != null){
            boolean isOk = SessionUtil.setLoginSuccess(dto);
            if(!isOk) return dto = null;
        }
        return dto;
    }

    // 회원가입
    @Transactional
    public int createUser(UserDTO paramDTO) throws Exception{
        String pw = SecurityUtil.sha256(paramDTO.getPassword());
        paramDTO.setPassword(pw);
        int result = mainHomeMapper.createUser(paramDTO);
        return result;
    }

    @Transactional
    public int insertBoard(MainHomeDTO paramDTO) throws Exception{
        int result = mainHomeMapper.insertBoard(paramDTO);
        System.out.println("result-> "+result);
        return result;
    }




}
