package com.yungame.config;

import com.util.PagingUtil;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("com.util")
public class UtilConfig {

    // util 의존성 부여시 빈 추가
    @Bean
    public PagingUtil pagingUtil(){
        PagingUtil pagingUtil = new PagingUtil();
        return pagingUtil;
    }

}
