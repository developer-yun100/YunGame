package com.util;

import org.springframework.stereotype.Component;

import java.security.MessageDigest;

@Component
public class SecurityUtil {

    public static String sha256(String param) throws Exception {
        StringBuffer sb = new StringBuffer();
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(param.getBytes());
        byte[] msg = md.digest();
        for(int i = 0; i < msg.length; i++){
            byte strByte = msg[i];
            String shaStr = Integer.toString((strByte & 0xff) + 0x100, 16).substring(1);
            sb.append(shaStr);
        }
        return sb.toString();
    }

}
