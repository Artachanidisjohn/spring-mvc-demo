package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorldController {

	@RequestMapping("/showForm")
	public String ShowFrom() {
		
		return"helloworld-form";
	}
	
	
	@RequestMapping("/processForm")
	public String processForm() {
		
		return "helloworld";
	}
	
	
	@RequestMapping("/processFormVersionTwo")
	public String letsShout(HttpServletRequest request,Model theModel) {
		
		String theName=request.getParameter("studentName");
		
		theName=theName.toUpperCase();
		
		String result = "Yo! " + theName;
		
		theModel.addAttribute("message", result);
				
		
		return "helloworld";
	}
	
	
	@RequestMapping("/processFormVersionThree")
	public String processFormThree(@RequestParam("studentName") String theName,Model theModel) {
		
	
		theName=theName.toUpperCase();
		
		String result = "Hey My Friend from v3 " + theName;
		
		theModel.addAttribute("message", result);
				
		
		return "helloworld";
	}
	
	
}
