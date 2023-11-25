package in.vishwa.service;

import java.util.Optional;

import in.vishwa.model.User;

public interface UserService {

    Optional<User> findByUsername(String username);

    Optional<User> findByEmail(String email);

    User save(User user);
}
