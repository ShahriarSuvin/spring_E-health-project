package com.exam.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.AddReceiptionist;
import com.exam.model.CreateUser;
import com.exam.model.DoctorRegistration;
import com.exam.model.OnlineAppointment;
import com.exam.service.CreateUserServiceImpl;
import com.exam.service.DoctorRegistrationServiceImpl;
import com.exam.service.OnlineAppointmentServiceImpl;
import com.exam.service.ReceiptionistServiceImpl;

@Controller
public class ReceiptionistController {
	@Autowired
	ReceiptionistServiceImpl receiptionistServiceImpl;
	
	@Autowired
	OnlineAppointmentServiceImpl onlineAppointmentServiceImpl;
	
	@PostMapping("/addReceiptionist")
	public ModelAndView addDoctor(HttpServletRequest request) {
		String name = request.getParameter("fullname");
		String username = request.getParameter("username");
		String address = request.getParameter("address");
		String pass = request.getParameter("pass");
		String email = request.getParameter("email");
		String phn = request.getParameter("phnNo");
		String qualification = request.getParameter("Qualification");
		
		
		AddReceiptionist addReceiptionist = new AddReceiptionist(); 
		
		addReceiptionist.setFullname(name);
		addReceiptionist.setUsername(username);
		addReceiptionist.setAddress(address);
		addReceiptionist.setPass(pass);
		addReceiptionist.setEmail(email);
		addReceiptionist.setPhnNo(phn);
		addReceiptionist.setQualification(qualification);
		
		
		
		receiptionistServiceImpl.save(addReceiptionist);
		 return new ModelAndView("addReceiptionist");
	}
	
	
	//show receiptionist
	@RequestMapping("/showReceiptionist")
	public ModelAndView show(Map<String, Object> map) {

		map.put("receiptionlist", receiptionistServiceImpl.getAll());

		System.out.println(receiptionistServiceImpl.getAll());

		return new ModelAndView("/addReceiptionistShow", map);

	}
	
	//delete by id
		@RequestMapping(value = "/receiption/delete/{id}")
		public ModelAndView deleteReceipt(@PathVariable("id") long id) {

			System.out.println("work id ==============" + id);
			receiptionistServiceImpl.delete(id);

			return new ModelAndView("redirect:/showReceiptionist");
		}

		//show by id
		@RequestMapping(value = "/receiption/show/{id}")
		public ModelAndView showDetails(@PathVariable("id") long id, Map<String, Object> map) {
			System.out.println("work id ==============" + id);
			map.put("rnst", receiptionistServiceImpl.getById(id));
			return new ModelAndView("/addReceiptionistDetails", map);
		}
		
		//update submit method
		@RequestMapping(value = "/UpdateReceiptionist")
		public ModelAndView uddateReceiption(@ModelAttribute ("addReceiptionist") AddReceiptionist addReceiptionist,Map<String, Object> map) {
			System.out.println("update value = ====================="+ addReceiptionist);
			receiptionistServiceImpl.update(addReceiptionist);
			map.put("rnst", receiptionistServiceImpl.getById(addReceiptionist.getId()));
			return new ModelAndView("/addReceiptionistDetails",map);
		}
		
		//edit method
		@RequestMapping("/receiptionist/edit/{id}")
		public ModelAndView edit(@PathVariable long id) {
			Map<String, Object> model = new HashMap<>();

			AddReceiptionist addReceiptionist = receiptionistServiceImpl.getById(id);

			model.put("rnst", addReceiptionist);
			return new ModelAndView("addReceiptionistUpdate", model);
		}

		
		//Login part
		
		//Receiptionist Login
		@PostMapping(value = "/receiptionLogin")
		public ModelAndView rlogin(HttpServletRequest request, Map<String, Object> map) {
			
				String user = request.getParameter("userName");
				String password = request.getParameter("password");
				
			boolean login =  receiptionistServiceImpl.ReceiptionistLogin(user, password);
			
			if(login) {
				map.put("onlineAppoint",onlineAppointmentServiceImpl.getAll());
				return new ModelAndView("onlineAppointmentShow",map);
				
			}else {
				map.put("msg", "Username or Password is not match");
				return new ModelAndView("receiptionistlogin",map);
			}
						
		}
		
		//admin login
		
		@PostMapping(value = "/adminLogin")
		public ModelAndView alogin(HttpServletRequest request, Map<String, Object> map) {
			
				String user = request.getParameter("username");
				String password = request.getParameter("password");
				
			//boolean login =  receiptionistServiceImpl.adminLogin(user, password);
			
				System.out.println(user+password);
			if(user.equals("suvin") && password.equals("1234")) {
				
				return new ModelAndView("admin",map);
				
			}else {
				map.put("msg", "Username or Password is not match");
				return new ModelAndView("loginPage",map);
			}
						
		}
		

}
