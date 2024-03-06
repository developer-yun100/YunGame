package com.yungame.application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.yungame.config")
public class YunGameApplication {

    public static void main(String[] args) {
        SpringApplication.run(YunGameApplication.class, args);
    }

}
