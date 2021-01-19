package com.exam.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.exam.commerz.SSLCommerz;
import com.exam.commerz.Utility.ParameterBuilder;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@RestController
public class PaymentController {
	
	
	@PostMapping(value = "/payment/save")
	public String createLoan(HttpServletRequest req) {
		Map<String, Object> model = new HashMap<>();
		Map<String, String> postData = ParameterBuilder.constructRequestParameters();
		try {
			SSLCommerz sslCommerz = new SSLCommerz("olons5dc2484963f78", "olons5dc2484963f78@ssl", true);
			String result = sslCommerz.initiateTransaction(postData, false);
			Gson gson = new GsonBuilder().create();
			return gson.toJson(result);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
		
		
		
//		System.out.println("okkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
//		String cus_name = req.getParameter("cust_name");
//		String cus_mobile = req.getParameter("cust_mobile");
//		String cus_email = req.getParameter("cust_email");
//		String cus_address = req.getParameter("cust_address");
//		String cus_country = req.getParameter("country");
//		String city = req.getParameter("city");
//		String cus_state = req.getParameter("state");
//		String currency = req.getParameter("currency");
//		String total_amount = req.getParameter("amount");
//		String Card_Number = req.getParameter("Card_Number");
//		String Card_Name = req.getParameter("Card_Name");
//		String expiryDate = req.getParameter("expiryDate");
//		System.out.println("customer number"+cus_name);
//		System.out.println("customer date"+expiryDate);
//		return new ModelAndView("/paymentForm");
	}


	@PostMapping("/ssl-success-page")
	public ModelAndView sslPaymentSuccess() {
		Map<String, Object> model = new HashMap<>();
		System.out.println("SSL Successfull.");
		model.put("msg", "SSL Payement successful");
		return new ModelAndView("/paymentForm", model);
	}
}
