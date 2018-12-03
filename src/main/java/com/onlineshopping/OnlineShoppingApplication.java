package com.onlineshopping;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class OnlineShoppingApplication  extends SpringBootServletInitializer{


	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(OnlineShoppingApplication.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(OnlineShoppingApplication.class, args);
	}
}
