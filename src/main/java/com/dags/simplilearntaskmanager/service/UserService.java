package com.dags.simplilearntaskmanager.service;

import com.dags.simplilearntaskmanager.dto.UserDto;
import com.dags.simplilearntaskmanager.entity.User;
import com.dags.simplilearntaskmanager.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    UserRepository userRepository;

    @Autowired
    PasswordEncoder passwordEncoder;

    public void registerAccount(UserDto userDto) {

        User user = User.builder()
                .email(userDto.getEmail())
                .password(passwordEncoder.encode(userDto.getPassword()))
                .username(userDto.getUsername())
                .build();

        userRepository.save(user);
    }

    public boolean usernameExists(String username){
        return userRepository.existsByUsername(username);
    }
}
