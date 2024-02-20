package com.admin;

public class users {
	private int id;
	private String uname;
	private String phone;
	private String email;
	private String name;
	private String add;
	private String age;
	
	public users(int id, String uname, String phone, String email, String name, String add, String age) {
		super();
		this.id = id;
		this.uname = uname;
		this.phone = phone;
		this.email = email;
		this.name = name;
		this.add = add;
		this.age = age;
	}
	public int getId() {
		return id;
	}

	

	public String getUname() {
		return uname;
	}

	

	public String getPhone() {
		return phone;
	}

	

	public String getEmail() {
		return email;
	}

	
	public String getName() {
		return name;
	}

	
	public String getAdd() {
		return add;
	}

	

	public String getAge() {
		return age;
	}

	

	
	
}
