package com.onlineshopping.config;

import java.util.Properties;
import java.util.logging.Logger;

import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableAutoConfiguration(exclude=HibernateJpaAutoConfiguration.class)
@EnableTransactionManagement
public class AppConfig implements WebMvcConfigurer {

	@Autowired
	private Environment env;

	private Logger logger = Logger.getLogger(getClass().getName());

	@Bean
	public DataSource securityDataSource() {

		DriverManagerDataSource securityDataSource = new DriverManagerDataSource();
		
			securityDataSource.setDriverClassName(env.getProperty("jdbc.driver"));

		logger.info(">>> security.jdbc.url=" + env.getProperty("security.jdbc.url"));
		logger.info(">>> security.jdbc.user=" + env.getProperty("jdbc.user"));

		// set database connection props
		securityDataSource.setUrl(env.getProperty("security.jdbc.url"));
		securityDataSource.setUsername(env.getProperty("jdbc.user"));
		securityDataSource.setPassword(env.getProperty("jdbc.password"));


		return securityDataSource;
	}

	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(env.getProperty("jdbc.driver"));
		dataSource.setUrl(env.getProperty("jdbc.url"));
		dataSource.setUsername(env.getProperty("jdbc.user"));
		dataSource.setPassword(env.getProperty("jdbc.password"));
		return dataSource;
	}

	private Properties getHibernateProperties() {

		// set hibernate properties
		Properties props = new Properties();
		props.setProperty("hibernate.hbm2ddl.auto", env.getProperty("hibernate.hbm2ddl.auto"));
		props.setProperty("hibernate.dialect", env.getProperty("hibernate.dialect"));
		props.setProperty("hibernate.show_sql", env.getProperty("hibernate.show_sql"));

		return props;
	}

	@Bean
	public LocalSessionFactoryBean sessionFactory() {

		// create session factorys
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();

		// set the properties
		sessionFactory.setDataSource(dataSource());
		sessionFactory.setPackagesToScan(env.getProperty("hibernate.packagesToScan"));
		sessionFactory.setHibernateProperties(getHibernateProperties());
		return sessionFactory;
	}

	@Bean
	public HibernateTransactionManager transactionManager() {

		// setup transaction manager based on session factory
		HibernateTransactionManager txManager = new HibernateTransactionManager();
		txManager.setSessionFactory(sessionFactory().getObject());

		return txManager;
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
	
	// need a helper method
	// read environment property and convert to int

//	private int getIntProperty(String propName) {
//
//		String propVal = env.getProperty(propName);
//
//		// now convert to int
//		int intPropVal = Integer.parseInt(propVal);
//
//		return intPropVal;
//	}
}
