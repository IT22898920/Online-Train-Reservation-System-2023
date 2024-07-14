package com.oop.model;

public class Passenger {
	private int id;
	private String name;
	private String email;
	private String phone;
	private String username;
	private String password;
	private static Passenger passenger;
	
	private Passenger() {
		
	}
	
	public static Passenger getInstanceOfPassenger() {
		if(passenger ==  null) {
			passenger = new Passenger();
		}
		
		return passenger;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

}
