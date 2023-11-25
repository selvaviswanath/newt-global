package in.vishwa.course6;

import java.util.Date;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import in.vishwa.course6.entity.Person;
import in.vishwa.course6.repos.PersonRepo;
@SpringBootApplication
public class Course6Application {
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	PersonRepo repository;
	public static void main(String[] args) {
		SpringApplication.run(Course6Application.class, args);
	}
	public void run(String... args) throws Exception {
		
		logger.info("User id 10001 -> {}", repository.findById(10001));
		
		logger.info("Inserting -> {}", 
				repository.insert(new Person("Tara", "Berlin", new Date())));
		
		logger.info("Update 10003 -> {}", 
				repository.update(new Person(10003, "Pieter", "Utrecht", new Date())));
		
		repository.deleteById(10002);

		logger.info("All users -> {}", repository.findAll());
	}
}
