package steer.UserDto;

public class UserDto {

	long phone;
	String name;
	String email;
	String role;
	String password;

	public UserDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserDto(long phone, String name, String email, String role, String password) {
		super();
		this.phone = phone;
		this.name = name;
		this.email = email;
		this.role = role;
		this.password = password;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "UserDto [phone=" + phone + ", name=" + name + ", email=" + email + ", role=" + role + ", password="
				+ password + "]";
	}
	
	
	
	


}
