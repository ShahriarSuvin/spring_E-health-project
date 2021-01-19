package com.exam.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.exam.service.CreateUserServiceImpl;

@Controller
public class EmailController {

	@Autowired
	JavaMailSender javaMailSender;
	@Autowired
	CreateUserServiceImpl createUserServiceImpl;
	@RequestMapping("/sendEmail")
    public ModelAndView sendEmail(@RequestParam("email") String email,
            @RequestParam("body") String body, Map<String, Object> map) {
		
	
		
		
        SimpleMailMessage massage = new SimpleMailMessage();
        massage.setFrom("j2eeround44nclc@gmail.com");
        massage.setSentDate(new Date());
        massage.setTo(email);
        massage.setText(body);
        System.out.println(massage);
        javaMailSender.send(massage);
        map.put("msg", "Email Send SuccessFull");
        map.put("msgs", createUserServiceImpl.getAll());
        return new ModelAndView("userMessageShow",map);
    }
	
	
	
//	
//	@GetMapping("/sendEmail/{id}")
//	public ModelAndView getEmailAddress(@PathVariable("id") long id){
//		Map<String, Object> model = new HashMap<>();
//		List<Contact> contact = contactServiceImpl.getContactById(id);
//		String email = contact.get(0).getEmail();
//		System.out.println(email);
//		model.put("email", email);
//		return new ModelAndView("pages/adcompose-email", model);
//	}
//	
}
