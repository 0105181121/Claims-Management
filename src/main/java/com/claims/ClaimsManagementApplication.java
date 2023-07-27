package com.claims;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//@EnableAutoConfiguration(exclude=(DataSourceAutoConfiguration.class))
public class ClaimsManagementApplication {

	public static void main(String[] args) {
		SpringApplication.run(ClaimsManagementApplication.class, args);
	}

}
