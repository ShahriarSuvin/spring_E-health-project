package com.exam.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.CreateUser;
import com.exam.model.OnlineAppointment;
import com.exam.model.UserMessage;
import com.exam.service.CreateUserServiceImpl;
import com.exam.service.OnlineAppointmentServiceImpl;

@Controller
public class CreateUserController {
	@Autowired
	CreateUserServiceImpl createUserServiceImpl;
	
	
	@PostMapping("/usermessage")
	public ModelAndView createUser(HttpServletRequest request) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String msg = request.getParameter("msg");
		
		
		UserMessage userMessage = new UserMessage(); 
		userMessage.setName(name);
		userMessage.setEmail(email);
		userMessage.setMsg(msg);
		
		 createUserServiceImpl.save(userMessage);
		 return new ModelAndView("index");
	}
	
	//all show
		@RequestMapping("/showMsg")
		public ModelAndView getAllDr(Map<String, Object> map) {

			map.put("msgs", createUserServiceImpl.getAll());

			System.out.println(createUserServiceImpl.getAll());

			return new ModelAndView("/userMessageShow", map);

		}

		//delete by id
		@RequestMapping(value = "/user/delete/{id}")
		public ModelAndView deleteDr(@PathVariable("id") long id,Map<String, Object> map) {

			System.out.println("work id ==============" + id);
			createUserServiceImpl.delete(id);
			map.put("msgs", createUserServiceImpl.getAll());
			return new ModelAndView("/userMessageShow", map);
		}
		
		//mail by id
		@RequestMapping(value = "/user/show/{id}")
		public ModelAndView showDetails(@PathVariable("id") long id, Map<String, Object> map) {
			
			
			map.put("msgs", createUserServiceImpl.getById(id));
			return new ModelAndView("/sentEmail", map);
		}
		
}
