package org.example.awesome.user_service;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.example.awesome.util.model.dto.UserStatus;

@SpringBootApplication
public class AwesomeUserServiceApplication {

	public static void main(String[] args) {
    // Test import
    UserStatus status;

		SpringApplication.run(AwesomeUserServiceApplication.class, args);
	}

}
