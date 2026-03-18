package com.sp.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.app.constants.Credentials;
import com.sp.app.model.Employee;
import com.sp.app.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
		
	@RequestMapping(value = "/")
	private String handleFirstRequest1() {
		return "index";
	}
	
	@RequestMapping(value = "/reg")
	private String handleRegRequest() {
		return "register";
	}
	
	@RequestMapping(value = "/register")
	private String handleRegisterReuest(@ModelAttribute Employee employee) {
		
		System.out.println("in Controller Layer :"+ employee);
		
		employeeService.saveEmployee(employee);
		
		return "index";
	}
	
	@RequestMapping(value = "/log")
	public String handleLogRequest() {
		return "login";
	}
	
	@RequestMapping(value = "/login")
	public String handleLoginRequest(@RequestParam String username, @RequestParam String password, Model model) {
		
		System.out.println("USERNAME : " + username);
		System.out.println("PASSWORD : " + password);
		
     //  logic to check username & password
		
		if(username.equals(Credentials.USERNAME) && password.equals(Credentials.PASSWORD)) {
		
			List<Employee> emplist = employeeService.getAllEmpInfo();
			
			model.addAttribute("data", emplist);
			
			return "success";
		}
		
		return "index";
	}
	
	@RequestMapping(value = "/delete")
	public String handleDeleteRequest(@RequestParam int id, Model model){
		
		System.out.println("in Controller Layer:" + id);
		
		List<Employee> emplist = employeeService.deleteEmployee(id);
		
		model.addAttribute("data", emplist);
		
		return "success";
		
	}
	
	@RequestMapping(value = "/edit")
	public String handleEditRequest(@RequestParam int id, Model model) {
		
		System.out.println("in controller layer:"+ id);
		
		Employee employee = employeeService.getEmployee(id);
		
		model.addAttribute("emp", employee);
		
		return "update";
	}
	
	
	@RequestMapping(value = "/update")
	public String handleUpdateRequest(@ModelAttribute Employee employee, Model model) {
		
		employeeService.saveEmployee(employee);
		List<Employee> emplist = employeeService.getAllEmpInfo();
		
		model.addAttribute("data", emplist);
		
		return "success";
	}
	
	
}
