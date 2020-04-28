package comp3095.assignment1;
/*
//*********************************************************************************
* Project: < Secure Payment Processing System >
* Assignment: < assignment 1 >
* Author(s): < Chaudhay, Ayusha; Kaur, Harampreet; KC, Dharam; Panna, Sahara; and Shireen, Fatima>
* Student Number: < 100968449, 101140952, 101044421, 101145593 and 101159461>
* Date:
* Description: <This file is a model class in MVC mode. It maps to the database table named User.
* 				It also creates relevant getters and setters to be used in other java files.>
//*********************************************************************************/


public class User {
	private int id;
	private String firstName;
	private String lastName;
	private String email;
	private String role;
	private String password;
	private String address;
		
	public User() {}
	
	public User(String fname, String lname, String mail, String pass, String addr) {
		
		firstName=fname;
		lastName=lname;
		email=mail;		
		password=pass;
		address = addr;		
	}

	public int getId() {		
		return id;
	}
	
	public void setId(int user_id) {
		this.id=user_id;		
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String fName) {
		this.firstName = fName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String pass) {
		password = pass;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String addr) {
		address= addr;
	}
	
}
