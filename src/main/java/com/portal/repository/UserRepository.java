package com.portal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.portal.entity.User;
@Repository
public interface UserRepository extends JpaRepository<User, Long> {

	User findByUsername(String username);

	/* @Query("SELECT user_id FROM users user_id WHERE user_id.username = :username")
	    public User getUserByUsername(@Param("username") String username);
	}
*/
}