package com.exam.controller;

import java.util.Map;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@GetMapping(value = "/")
	public ModelAndView home() {
		return new ModelAndView("index");
	}
	
	@GetMapping(value = "/loginPage")
	public ModelAndView log() {
		return new ModelAndView("loginPage");
		
	}
	
	@GetMapping(value = "/register")
    public ModelAndView user1Registration() {
        return new ModelAndView("user1Registration");
    }
	
	//online appoint part
	
	@GetMapping(value = "/onlineAppointment")
	public ModelAndView onlineAppointment(Map<String, Object> map) {
		Random ran = new Random();
		int randomNumber=ran.nextInt(111111)+1;
		map.put("random", randomNumber);
		return new ModelAndView("onlineAppointment",map);
	}
	
	@GetMapping(value = "/save")
	public ModelAndView save() {
		return new ModelAndView("onlineAppointment");
	}
	
	
	
	//Create user 
	
	@GetMapping(value = "/createUser")
	public ModelAndView createUser() {
		return new ModelAndView("createUser");
	}
	
	@GetMapping(value = "/createUser/save")
	public ModelAndView Save() {
		return new ModelAndView("loginPage");
	}
	
	//user login and message
	
	@GetMapping(value = "/uMessage")
	public ModelAndView userlogin() {
		return new ModelAndView("userMessage");
	}
	
	
	
	@GetMapping(value = "/admin")
	public ModelAndView admin() {
		return new ModelAndView("admin");
	}
	
	//doctor part
	@GetMapping(value = "/doctorRegistration")
	public ModelAndView doctorRegister() {
		return new ModelAndView("doctorRegistration");
	}
	
	@GetMapping(value = "/doctorRegistration/save")
	public ModelAndView Savedoc() {
		return new ModelAndView("loginPage");
	}
	
	
	
	
	//receiption part
	
	@GetMapping(value = "/addReceiptionist")
	public ModelAndView addReceiption() {
		return new ModelAndView("addReceiptionist");
	}
	
	@GetMapping(value = "/receiptionistlogin")
	public ModelAndView rlogin() {
		return new ModelAndView("receiptionistlogin");
	}
	@GetMapping(value = "/addReceiptionist/save")
	public ModelAndView SaveRecep() {
		return new ModelAndView("addReceiptionist");
	}
	
	@GetMapping(value = "/payment")
	public ModelAndView payment() {
		return new ModelAndView("paymentForm");
	}
	
	@GetMapping(value = "/onlineDoctor")
	public ModelAndView doctor() {
		return new ModelAndView("userMessage");
	}
}
