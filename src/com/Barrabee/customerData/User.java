package com.Barrabee.customerData;

public class User {
	private int index;
	private String userName;
	private String password;
	private String email;
	private String fullName;

	private User() {
	}

	public int getIndex() {
		return index;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	public String getEmail() {
		return email;
	}

	public String getFullName() {
		return fullName;
	}

	public void setIdex(int index) {
		this.index = index;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
}
