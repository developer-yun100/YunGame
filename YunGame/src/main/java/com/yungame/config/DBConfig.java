package com.yungame.config;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;

@Configuration
@MapperScan(basePackages = "com.yungame.mvc.*") // , annotationClass = org.springframework.stereotype.Repository.class
@ComponentScan("com.yungame.*")
public class DBConfig {

    // sql-myBatis
    @Bean
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{
        SqlSessionFactoryBean sessionFactoryBean = new SqlSessionFactoryBean();
        sessionFactoryBean.setDataSource(dataSource);
        // Java 17 이상, myBatis 3.x 버전에서는 xml 만들 필요 없음. (현재 boot 2.7, java 17)
        //sessionFactoryBean.setConfigLocation(new ClassPathResource("classpath:/resources/mybatis-config.xml"));
        //sessionFactoryBean.setConfigLocation(new ClassPathResource("classpath:mappers/**/*.xml"));
        return sessionFactoryBean.getObject();
    }

    // sql-myBatis
    @Bean
    public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory){
        return new SqlSessionTemplate(sqlSessionFactory);
    }

    // sql-transaction
    @Bean
    public PlatformTransactionManager transactionManager(DataSource dataSource){
        return new DataSourceTransactionManager(dataSource);
    }

}
