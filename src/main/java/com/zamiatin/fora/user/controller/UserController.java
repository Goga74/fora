package com.zamiatin.fora.user.controller;

import com.zamiatin.fora.user.entity.User;
import com.zamiatin.fora.user.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserRepository userRepository;

    // insert new country into database
    @PostMapping("/add")
    public User addUser(@RequestBody User user) {

        return userRepository.save(user);
    }

    // fetch all country list from database
    @GetMapping("/all")
    public Iterable<User> allUser() {

        return userRepository.findAll();
    }

    // fetch specific country by their ID
    @GetMapping("/{userId}")
    public Optional<User> countryById(@PathVariable("userId") int countryId) {

        return userRepository.findById(countryId);
    }

    // update existing country
    @PutMapping("/update")
    public User updateCountry(@RequestBody User country) {

        return userRepository.save(country);
    }

    // delete country from database
    @DeleteMapping("/{userId}")
    public void deleteCountry(@PathVariable("userId") int countryId) {

        userRepository.deleteById(countryId);
    }
}
