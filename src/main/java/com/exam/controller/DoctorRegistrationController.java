package com.exam.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.exam.jasperreports.SimpleReportExporter;
import com.exam.jasperreports.SimpleReportFiller;
import com.exam.model.DoctorRegistration;
import com.exam.service.DoctorRegistrationServiceImpl;

@Controller
public class DoctorRegistrationController {
	
	@Autowired
	SimpleReportFiller simpleReportFiller;
	
	@Autowired
	private ServletContext servletContext;

	@Autowired
	DoctorRegistrationServiceImpl doctorRegistrationServiceImpl;

	@PostMapping("/addDoctor")
	public ModelAndView addDoctor(HttpServletRequest request ,Model model, @RequestParam("imageFile") MultipartFile[] files) {
		
		//start		
		
		System.out.println(files.length);
		String uploadDir = "src/main/resources/static/img";
		// ---------------------------------------------------
		StringBuilder fileNames = new StringBuilder();
		Path fileNameAndPath = null;
		try {
			for (MultipartFile file : files) {
				fileNameAndPath = Paths.get(uploadDir, file.getOriginalFilename());
				fileNames.append(file.getOriginalFilename());
				Files.write(fileNameAndPath, file.getBytes());
			}
		} catch (IOException e) {
			model.addAttribute("msg", "YOU HAVENT CHOOSE ANY IMAGES");
		}

		System.out.println("File name path -------------" + fileNames);
		model.addAttribute("img", fileNames);
	
		
		//end
		
		
		
		String name = request.getParameter("Dname");
		String email = request.getParameter("Demail");
		String user = request.getParameter("username");
		String dept = request.getParameter("Dept");
		String regi = request.getParameter("RegiNo");
		String qualification = request.getParameter("Qualification");
		String designation = request.getParameter("Designation");
		String visit = request.getParameter("visitHour");
		String room = request.getParameter("RoomNo");
		String pass = request.getParameter("Dpass");

		DoctorRegistration addDoctor = new DoctorRegistration();

		addDoctor.setDname(name);
		addDoctor.setDemail(email);
		addDoctor.setDept(dept);
		addDoctor.setRegiNo(regi);
		addDoctor.setQualification(qualification);
		addDoctor.setDesignation(designation);
		addDoctor.setVisitHour(visit);
		addDoctor.setRoomNo(room);
		addDoctor.setDpass(pass);
		addDoctor.setUsername(user);
		addDoctor.setImg(fileNames.toString());
		
		

		doctorRegistrationServiceImpl.save(addDoctor);
		return new ModelAndView("doctorRegistration");
	}

	//all show
	@RequestMapping("/showDoc")
	public ModelAndView getAllDr(Map<String, Object> map) {

		map.put("drlist", doctorRegistrationServiceImpl.getAll());

		System.out.println(doctorRegistrationServiceImpl.getAll());

		return new ModelAndView("/drlist", map);

	}

	//edit method
	@RequestMapping("/doctor/edit/{id}")
	public ModelAndView edit(@PathVariable long id) {
		Map<String, Object> model = new HashMap<>();

		DoctorRegistration doctorRegistration = doctorRegistrationServiceImpl.getById(id);

		model.put("dr", doctorRegistration);
		return new ModelAndView("updateDoctor", model);
	}

	//delete by id
	@RequestMapping(value = "/doctor/delete/{id}")
	public ModelAndView deleteDr(@PathVariable("id") long id) {

		System.out.println("work id ==============" + id);
		doctorRegistrationServiceImpl.delete(id);

		return new ModelAndView("redirect:/showDoc");
	}

	
	//show by id
	@RequestMapping(value = "/doctor/show/{id}")
	public ModelAndView showDetails(@PathVariable("id") long id, Map<String, Object> map) {
		System.out.println("work id ==============" + id);

		System.out.println("show details value ================" + doctorRegistrationServiceImpl.getById(id));
		map.put("dr", doctorRegistrationServiceImpl.getById(id));
		return new ModelAndView("/viewDetails", map);
	}
	
	
	//update submit method
	@RequestMapping(value = "/updateDoctor")
	public ModelAndView uddateDoctor(@ModelAttribute ("doctorRegistration") DoctorRegistration doctorRegistration,Map<String, Object> map) {
		System.out.println("update value = ====================="+ doctorRegistration);
		doctorRegistrationServiceImpl.update(doctorRegistration);
		map.put("dr", doctorRegistrationServiceImpl.getById(doctorRegistration.getId()));
		return new ModelAndView("/viewDetails",map);
	}

	@GetMapping(value = "/testreport")
	public ModelAndView report() {
		return new ModelAndView("testReport");
	}
	//reports
		 @GetMapping("/pdf")
			public String pdf(HttpServletResponse response) {
				response.setContentType("application/pdf");
				try {
					SimpleReportExporter simpleExporter = new SimpleReportExporter();

					simpleReportFiller.setReportFileName("report4.jrxml");
					simpleReportFiller.compileReport();

					Map<String, Object> parameters = new HashMap<>();

					simpleReportFiller.setParameters(parameters);
					simpleReportFiller.fillReport();
					simpleExporter.setJasperPrint(simpleReportFiller.getJasperPrint());

					simpleExporter.exportToPdf("report4.pdf", "olonsoft");

					File file = new File("src/main/resources/reports/report4.pdf");
					response.setHeader("Content-Type", servletContext.getMimeType(file.getName()));
					response.setHeader("Content-Length", String.valueOf(file.length()));
					response.setHeader("Content-Disposition", "inline; filename=\"report4.pdf\"");
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
		 
		 //with parameter
		 @PostMapping("/userpdf")
			public String pdf(HttpServletResponse response, HttpServletRequest request) {
				response.setContentType("application/pdf");
				
				String user = request.getParameter("username");
				
				
				try {
					SimpleReportExporter simpleExporter = new SimpleReportExporter();

					simpleReportFiller.setReportFileName("report5.jrxml");
					simpleReportFiller.compileReport();

					Map<String, Object> parameters = new HashMap<>();
					parameters.put("username", user);
					System.out.println(user);

					simpleReportFiller.setParameters(parameters);
					simpleReportFiller.fillReport();
					simpleExporter.setJasperPrint(simpleReportFiller.getJasperPrint());

					simpleExporter.exportToPdf("report5.pdf", "olonsoft");

					File file = new File("src/main/resources/reports/report5.pdf");
					response.setHeader("Content-Type", servletContext.getMimeType(file.getName()));
					response.setHeader("Content-Length", String.valueOf(file.length()));
					response.setHeader("Content-Disposition", "inline; filename=\"report5.pdf");
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
