package com.sp.app.service;

import java.util.List;

import org.apache.tomcat.jni.Library;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.app.model.Employee;
import com.sp.app.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	private EmployeeRepository employeeRepository;
	
	
	@Override
	public void saveEmployee(Employee employee) {
		
		System.out.println("in service Layer :" + employee);
		
		employeeRepository.save(employee);
		
	}


	@Override
	public List<Employee> getAllEmpInfo() {
		
		List<Employee> list = employeeRepository.findAll();
		
		return list;
	}


	@Override
	public List<Employee> deleteEmployee(int id) {
		
		System.out.println("in Service Layer:" + id);
		
		employeeRepository.deleteById(id);
		
		return employeeRepository.findAll();
	}


	@Override
	public Employee getEmployee(int id) {
		
		Employee employee = employeeRepository.findById(id).get();
		
		return employee;
	}

}
