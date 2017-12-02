package com.webapp.sportstore;

import java.io.Serializable;
import java.util.Date;

public class Person implements Serializable {

	private String firstName;
	private String lastName;
	private String addLine1;
	private String addline2;
	private String city;
	private String state;
	private String zipcode;
	private String phoneNo;
	private String email;
	private String cardNo;
	private Date date;
	private String cvv;
	
	public Person() {
	
	}

	public Person(String firstName, String lastName, String addLine1, String addline2, String city, String state,
			String zipcode, String phoneNo, String email, String cardNo, Date date, String cvv) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.addLine1 = addLine1;
		this.addline2 = addline2;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
		this.phoneNo = phoneNo;
		this.email = email;
		this.cardNo = cardNo;
		this.date = date;
		this.cvv = cvv;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAddLine1() {
		return addLine1;
	}

	public void setAddLine1(String addLine1) {
		this.addLine1 = addLine1;
	}

	public String getAddline2() {
		return addline2;
	}

	public void setAddline2(String addline2) {
		this.addline2 = addline2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	
	
	
}
