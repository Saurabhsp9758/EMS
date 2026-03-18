package com.sp.app.service;

import java.util.List;

import com.sp.app.model.Employee;

public interface EmployeeService {

	public void saveEmployee(Employee employee);
	
	List<Employee> getAllEmpInfo();
	
	public List<Employee> deleteEmployee(int id);
	
	public Employee getEmployee(int id);
	

}
