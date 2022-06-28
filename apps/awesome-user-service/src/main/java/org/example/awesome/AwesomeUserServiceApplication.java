package org.example.awesome;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.example.awesome.model.dto.UserStatus;

@SpringBootApplication
public class AwesomeUserServiceApplication {

	public static void main(String[] args) {
    UserStatus status;

		SpringApplication.run(AwesomeUserServiceApplication.class, args);
	}

}
