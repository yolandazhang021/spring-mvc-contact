package com.yolanda.form.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class SpringDBConfiguration {
	
	@Autowired
	private DataSource dataSource;

//	@Bean
//	
//	public DataSource getDataSource() {
//		DriverManagerDataSource dataSource = new DriverManagerDataSource();
//		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
//		dataSource.setUrl("jdbc:mysql://192.168.10.171:3306/dev");
//		dataSource.setUsername("root");
//		dataSource.setPassword("cft67ujm");
//		
//		return dataSource;
//	}
	
	@Bean
	public JdbcTemplate getJdbcTemplate() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate();
		jdbcTemplate.setDataSource(dataSource);
		
		return jdbcTemplate; 
	}
}
