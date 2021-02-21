package com.zamiatin.fora.user.repository;

import com.zamiatin.fora.user.entity.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer> {

}
