package com.kopiko.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
// @ComponentScan("faca.trainning") // <context:component-scan base-package="faca.trainning.*" />
// @EnableJpaRepositories("faca.trainning.repositories") // <jpa:repositories base-package="faca.trainning.repositories" />
@EnableTransactionManagement // <tx:annotation-driven transaction-manager="transactionManager" />
public class ApplicationContextConfig {

//    // View resolver - Normal
//    @Bean(name = "viewResolver")
//    public InternalResourceViewResolver getViewResolver() {
//        System.out.println("getViewResolver");
//        InternalResourceViewResolver obj = new InternalResourceViewResolver();
//        obj.setViewClass(JstlView.class);
//        obj.setPrefix("/WEB-INF/views/");
//        obj.setSuffix(".jsp");
//        return obj;
//    }

    // View resolver - Tiles
    @Bean(name = "viewResolver")
    public TilesViewResolver getViewResolverTiles() {
        System.out.println("getViewResolverTiles");
        TilesViewResolver obj = new TilesViewResolver();
        obj.setViewClass(TilesView.class);
        return obj;
    }

    // Tiles configuration
    @Bean(name = "tilesConfigurer")
    public TilesConfigurer getTilesConfigurer() {
        System.out.println("getTilesConfigurer");
        TilesConfigurer obj = new TilesConfigurer();
        obj.setDefinitions("/WEB-INF/tiles.xml");
        return obj;
    }

//    // Config DataSource
//    @Bean("dataSource")
//    public DataSource getDataSource() {
//        DriverManagerDataSource obj = new DriverManagerDataSource();
//        obj.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        obj.setUrl("jdbc:sqlserver://10.133.223.25:1433;databaseName=TestDay6;");
//        obj.setUsername("sa");
//        obj.setPassword("Fpt12345");
//
//        return obj;
//    }
//
//    @Bean("sessionFactory")
//    public LocalSessionFactoryBean getSessionFactory(DataSource dataSource) {
//        LocalSessionFactoryBean obj = new LocalSessionFactoryBean();
//        obj.setDataSource(dataSource);
//        obj.setPackagesToScan("faca.trainning.models");
//
//        Properties hibernateProperties = new Properties();
//        hibernateProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.SQLServerDialect");
//        hibernateProperties.setProperty("hibernate.current_session_context_class", "thread");
//        hibernateProperties.setProperty("hibernate.transaction.factory_class",
//                "org.hibernate.transaction.JDBCTransactionFactory");
//        hibernateProperties.setProperty("hibernate.show_sql", "true");
//        hibernateProperties.setProperty("hibernate.connection.CharSet", "utf8");
//        hibernateProperties.setProperty("hibernate.connection.characterEncoding", "utf8");
//        hibernateProperties.setProperty("hibernate.connection.useUnicode", "true");
//        hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "update");
//        obj.setHibernateProperties(hibernateProperties);
//        return obj;
//    }
//
//    @Bean("entityManagerFactory")
//    public LocalContainerEntityManagerFactoryBean getEntityManagerFactory(DataSource dataSource) {
//        LocalContainerEntityManagerFactoryBean obj = new LocalContainerEntityManagerFactoryBean();
//        obj.setDataSource(dataSource);
//        obj.setPackagesToScan("faca.trainning.models");
//        obj.setJpaVendorAdapter(new HibernateJpaVendorAdapter());
//        return obj;
//    }
//
//    @Bean("transactionManager")
//    public JpaTransactionManager getTransactionManager(EntityManagerFactory entityManagerFactory) {
//        JpaTransactionManager obj = new JpaTransactionManager();
//        obj.setEntityManagerFactory(entityManagerFactory);
//        return obj;
//    }
}