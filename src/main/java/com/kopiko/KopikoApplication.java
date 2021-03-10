package com.kopiko;

import java.util.Arrays;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class KopikoApplication {

	public static void main(String[] args) {
		SpringApplication.run(KopikoApplication.class, args);
	}

	/**
     * There is also a CommandLineRunner method marked as a @Bean, and this runs on start up.
     * It retrieves all the beans that were created by your application or that were automatically added by Spring Boot.
     * It sorts them and prints them out.
     */
    @Bean
    public CommandLineRunner commandLineRunner(ApplicationContext ctx) {
        return args -> {
            System.out.println("Let's inspect the beans provided by Spring Boot:");

            String[] beanNames = ctx.getBeanDefinitionNames();
            Arrays.sort(beanNames);
            for (String beanName : beanNames) {
                System.out.println(beanName);
            }
        };
    }
}
