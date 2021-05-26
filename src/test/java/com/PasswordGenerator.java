package com;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordGenerator {
public static void main(String[] args) {
	BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
	String raw="zaki";
	String encodedpassword = encoder.encode(raw);
	System.out.println(encodedpassword);
}
}
