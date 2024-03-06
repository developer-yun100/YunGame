package com.yungame.webutil;


import com.yungame.mvc.dto.UserDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;


public class SessionUtil {
    private static final Logger LOG = LoggerFactory.getLogger(SessionUtil.class);
    public static final String LOGIN_USER_INFO = "USER_INFO"; // 담을 데이터

    // 로그인 세션 정보부여
    public static Boolean setLoginSuccess(UserDTO param) {
        try {
            LOG.debug("Login Info : "+ param.toString());
            getSession().setAttribute(LOGIN_USER_INFO, param);
            getSession().setMaxInactiveInterval(3000);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    // 세션
    public static HttpSession getSession() {
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        return attr.getRequest().getSession();
    }

    // 세션 체크
    public static Boolean isLogin() {
        if(getSession().getAttribute(LOGIN_USER_INFO) == null) {
            return false;
        } else {
            return true;
        }
    }

    // 로그아웃
    public static void logout() {
        getSession().invalidate();
    }

    // 로그인 정보
    public static UserDTO getUser() {
        if(isLogin()) {
            return (UserDTO)getSession().getAttribute(LOGIN_USER_INFO);
        } else {
            return null;
        }
    }


}
