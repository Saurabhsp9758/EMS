package com.sp.app.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.DynamicUpdate;

@Entity
@DynamicUpdate
public class Employee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int eid;
	
	private String firstName;
	
	private String middleName;
	
	private String lastName;
	
	private String birthDate;
	
	private String emailId;
	
	private String designation;
	
	private int age;
	
	private String gender;
	
	public Employee() {
		// TODO Auto-generated constructor stub
	}

	public Employee(int eid, String firstName, String middleName, String lastName, String birthDate, String emailId,
			String designation, int age, String gender) {
		super();
		this.eid = eid;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.birthDate = birthDate;
		this.emailId = emailId;
		this.designation = designation;
		this.age = age;
		this.gender = gender;
	}

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "Employee [eid=" + eid + ", firstName=" + firstName + ", middleName=" + middleName + ", lastName="
				+ lastName + ", birthDate=" + birthDate + ", emailId=" + emailId + ", designation=" + designation
				+ ", age=" + age + ", gender=" + gender + "]";
	}
	
	
	

}
