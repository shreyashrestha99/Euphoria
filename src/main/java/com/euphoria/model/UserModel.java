package com.euphoria.model;

public class UserModel {
	private int userId;
    private String fullName;
    private String username;
    private String email;
    private String phoneNumber;
    private String password;
    private String userRole;
    private String imgUrl;
    
	public UserModel(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	public UserModel(int userId, String fullName, String username, String email, String phoneNumber, String password,
			String userRole,String imgUrl) {
		super();
		this.userId = userId;
		this.fullName = fullName;
		this.username = username;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.password = password;
		this.userRole = userRole;
		this.imgUrl=imgUrl;
	}
	public UserModel(String fullName, String username, String email, String phoneNumber, String password,
			String userRole,String imgeUrl, String imgUrl) {
		super();
		this.fullName = fullName;
		this.username = username;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.password = password;
		this.userRole = userRole;
		this.imgUrl=imgUrl;
	
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	public String getImageUrl() {
		return imgUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imgUrl = imageUrl;
	}

	
    
}
