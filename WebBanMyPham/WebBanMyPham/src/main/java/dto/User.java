package dto;

import java.util.Date;

public class User {
	private int id;
	private String email;
	private String password;
	private String fullName;
	private String gender;
	private String address;
	private Date birthDate;
	private int roleId;
	public User(int id, String email, String password, String fullName, String gender, String address, Date birthDate,
			int roleId) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.fullName = fullName;
		this.gender = gender;
		this.address = address;
		this.birthDate = birthDate;
		this.roleId = roleId;
	}
	public User() {
		super();
	}
	public User(String email, String password, String fullName, String gender, String address, Date birthDate,
			int roleId) {
		super();
		this.email = email;
		this.password = password;
		this.fullName = fullName;
		this.gender = gender;
		this.address = address;
		this.birthDate = birthDate;
		this.roleId = roleId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	
}
