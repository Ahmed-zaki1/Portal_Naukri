package com.portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PortalController {
@RequestMapping("/admin")
public String adminMethod() {
	return "/admin";
}
@RequestMapping("/user")
public String showUser() {
return "/user";
}
}
