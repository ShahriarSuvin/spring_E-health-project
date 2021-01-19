package com.exam.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.jasperreports.SimpleReportExporter;
import com.exam.jasperreports.SimpleReportFiller;
import com.exam.model.OnlineAppointment;
import com.exam.service.OnlineAppointmentServiceImpl;

@Controller
public class AppointmentController {
	@Autowired
	OnlineAppointmentServiceImpl onlineAppointmentServiceImpl;
	@Autowired
	JavaMailSender javaMailSender;
	
	@Autowired
	SimpleReportFiller simpleReportFiller;
	
	@Autowired
	private ServletContext servletContext;

	
	@PostMapping("/onlineAppoint")
	public ModelAndView onlineAppoint(HttpServletRequest request) {
		
		String name = request.getParameter("pName");
		String email = request.getParameter("pEmail");
		String age = request.getParameter("pAge");
		String gen = request.getParameter("pGender");
		String address = request.getParameter("pAddress");
		String dept = request.getParameter("pDepertment");
		String doctor = request.getParameter("pDoctor");
		String token = request.getParameter("token");
		
		
		OnlineAppointment onlineAppoint	= new OnlineAppointment(); 
		onlineAppoint.setpName(name);
		onlineAppoint.setpEmail(email);
		onlineAppoint.setpAge(age);
		onlineAppoint.setpGender(gen);
		onlineAppoint.setpAddress(address);
		onlineAppoint.setpDepertment(dept);
		onlineAppoint.setpDoctor(doctor);
		onlineAppoint.setToken(Integer.parseInt(token));
		
		
		
		 onlineAppointmentServiceImpl.save(onlineAppoint);
		
		 Map<String, String> map = new HashMap();
		 
		 SimpleMailMessage massage = new SimpleMailMessage();
	        massage.setFrom("j2eeround44nclc@gmail.com");
	        massage.setSentDate(new Date());
	        massage.setTo(email);
	        massage.setSubject("Online Appointment Success");
	        massage.setText("Hi "+name+" ,\n Your Online Appointment is Successfull. \n Your Token Number is: "+token+". When you come to our Healthcare, Our Receiptionist want to know your Token Number. \n Thanks for staying with us.");
	        System.out.println(massage);
	        javaMailSender.send(massage);
	        map.put("msg", "Your Online Appointment is Successfull. Check your mail.");
	        
	        return new ModelAndView("index", map);
	    
	}
	
	
	
	
	
	
	
	//show details
	
	@RequestMapping(value = "/onlineAppoint/show")
	public ModelAndView online(Map<String, Object> map) {
		map.put("onlineAppoint", onlineAppointmentServiceImpl.getAll());
		System.out.println( onlineAppointmentServiceImpl.getAll());
		return new ModelAndView("onlineAppointmentShow",map);
	}
	
	
	@RequestMapping(value = "/onlineAppoint/search")
	public ModelAndView online(Map<String, Object> map, HttpServletRequest request) {
		String search = request.getParameter("search");
		int token = Integer.parseInt(search);
		onlineAppointmentServiceImpl.getByToken(token);
		
		map.put("onlineAppoint",onlineAppointmentServiceImpl.getByToken(token));
		System.out.println(onlineAppointmentServiceImpl.getByToken(token));
		return new ModelAndView("onlineAppointmentShow",map);
	}
	
	//reports
	 @GetMapping("onlineAppoint/appoint/pdf/{id}")
		public String pdf(HttpServletResponse response , @PathVariable int id) {
		 
		 System.out.println("Method called.");
			response.setContentType("application/pdf");
			try {
				SimpleReportExporter simpleExporter = new SimpleReportExporter();

				simpleReportFiller.setReportFileName("report10.jrxml");
				simpleReportFiller.compileReport();

				Map<String, Object> parameters = new HashMap<>();

				parameters.put("id", id);
				simpleReportFiller.setParameters(parameters);
				simpleReportFiller.fillReport();
				simpleExporter.setJasperPrint(simpleReportFiller.getJasperPrint());

				simpleExporter.exportToPdf("report10.pdf", "olonsoft");

				File file = new File("src/main/resources/reports/report10.pdf");
				response.setHeader("Content-Type", servletContext.getMimeType(file.getName()));
				response.setHeader("Content-Length", String.valueOf(file.length()));
				response.setHeader("Content-Disposition", "inline; filename=\"report10.pdf\"");
				Files.copy(file.toPath(), response.getOutputStream());
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
}
