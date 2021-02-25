package com.dags.simplilearntaskmanager;

import com.dags.simplilearntaskmanager.entity.Task;
import com.dags.simplilearntaskmanager.entity.User;
import com.dags.simplilearntaskmanager.repository.TaskRepository;
import com.dags.simplilearntaskmanager.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.text.SimpleDateFormat;
import java.util.Date;

@SpringBootApplication
public class SimplilearnTaskManagerApplication implements CommandLineRunner {

    public static void main(String[] args) {
        SpringApplication.run(SimplilearnTaskManagerApplication.class, args);
    }

    @Autowired
    UserRepository userRepository;

    @Autowired
    TaskRepository taskRepository;

    @Override
    public void run(String... args) throws Exception {

        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();

        User user = User.builder()
                .username("chris")
                .password(bCryptPasswordEncoder.encode("123"))
                .email("chris@example.com")
                .build();

        Task task = Task.builder()
                .taskName("task 1")
                .description("task 1 description")
                .severity("high")
                .startDate(new Date())
                .endDate(new Date())
                .user(user)
                .build();

        Task task1 = Task.builder()
                .taskName("task 2")
                .description("task 2 description")
                .severity("low")
                .startDate(new Date())
                .endDate(new Date())
                .user(user)
                .build();

        User user1 = User.builder()
                .username("foo")
                .password(bCryptPasswordEncoder.encode("321"))
                .email("ellie@example.com")
                .build();

        Task task2 = Task.builder()
                .taskName("foo task")
                .description("foo description")
                .severity("high")
                .startDate(new Date())
                .endDate(new Date())
                .user(user1)
                .build();


        userRepository.save(user);
        taskRepository.save(task);
        taskRepository.save(task1);
        userRepository.save(user1);
        taskRepository.save(task2);

    }
}
