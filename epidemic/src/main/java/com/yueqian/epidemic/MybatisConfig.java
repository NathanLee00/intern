package com.yueqian.epidemic;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
@MapperScan(basePackages ="com.yueqian.epidemic.mapper")
public class MybatisConfig {

    private Logger logger=Logger.getLogger(MybatisConfig.class);
    /**
     * 配置数据源
     * @return
     */
    @Bean(name="dataSource",destroyMethod = "close")
    public BasicDataSource basicDataSource(){
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");  //配置数据库的驱动
        dataSource.setUrl("jdbc:mysql://localhost:3306/test1db");  //数据库连接url
        dataSource.setUsername("root"); //连接数据库的登录账号
        dataSource.setPassword("123456"); //登录密码

        //连接池的相关配置
        dataSource.setInitialSize(3);
        dataSource.setMaxActive(50);
        dataSource.setMaxIdle(1);
        dataSource.setMaxWait(4000); //毫秒
        dataSource.setDefaultAutoCommit(false); //设置是否是自动提交事务，false：手动提交
        return dataSource;
    }

    @Bean
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) {
        SqlSessionFactoryBean factoryBean=new SqlSessionFactoryBean();
        factoryBean.setDataSource(dataSource);

        factoryBean.setTypeAliasesPackage("com.yueqian.epidemic.beans");

        org.apache.ibatis.session.Configuration configuration=new org.apache.ibatis.session.Configuration();
        configuration.setMapUnderscoreToCamelCase(true);

        factoryBean.setConfiguration(configuration);
        SqlSessionFactory factory=null;
        try{
            return factoryBean.getObject();
        }catch (Exception e){
            logger.error("配置sql时报错了"+e.getMessage());
        }
        return factory;
    }
}
