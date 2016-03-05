package com.SpatialKey;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;

/**
 * Spring Boot main Application
 * start from here
 */
// This annotation is the quick one at using 
//@EnableAutoConfiguration, @ComponentScan, @Configuration

@SpringBootApplication
public class Application extends SpringBootServletInitializer{
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(Application.class);
	}
	
    public static void main( String[] args ) throws Exception{
        SpringApplication.run(Application.class, args);
    }
    
}
