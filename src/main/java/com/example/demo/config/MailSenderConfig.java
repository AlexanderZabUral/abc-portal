package com.example.demo.config;


import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan("com.example")
@EnableWebMvc
public class MailSenderConfig {

	@Bean
	public JavaMailSender GetMail() {
		Properties props = new Properties();
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");  
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.starttls.required", "true");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

		mailSender.setJavaMailProperties(props);
		mailSender.setUsername("uppsasha2016@gmail.com"); 
		mailSender.setPassword("ybnbedislwmtsrbi"); 

		return mailSender;
	}
}
