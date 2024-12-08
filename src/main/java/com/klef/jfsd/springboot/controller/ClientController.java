package com.klef.jfsd.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ClientController {
	
	@GetMapping("/")
	public ModelAndView index() 
	{
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}

}