package com.example.coursework.services;

import com.example.coursework.enums.Role;
import com.example.coursework.entities.User;
import com.example.coursework.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public boolean createUser(User user) {
        String email = user.getEmail();
        if (userRepository.findByEmail(email) != null) {
            return false;
        }
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.getRoles().add(Role.ROLE_USER);
        userRepository.save(user);
        return true;
    }

    public List<User> list() {
        return userRepository.findAll();
    }
}
