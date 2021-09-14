package com.Page;

public class User {

	int UserID;
	String Name;
	String Email;
	String Password;
	
	public User() {
		
	}
	
	public User(int userID, String name, String email, String password) {
		super();
		UserID = userID;
		Name = name;
		Email = email;
		Password = password;
	}

	public int getUserID() {
		return UserID;
	}

	public void setUserID(int userID) {
		UserID = userID;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}
	
	
	
	
	
	
	
}
