package comp3095.assignment1;
/*
//*********************************************************************************
* Project: < Secure Payment Processing System >
* Assignment: < assignment 1 >
* Author(s): < Chaudhay, Ayusha; Kaur, Harampreet; KC, Dharam; Panna, Sahara; and Shireen, Fatima>
* Student Number: < 100968449, 101140952, 101044421, 101145593 and 101159461>
* Date:
* Description: <This java file consits of methods that validate all the parameters received from Registraion
* 				form. If all valid, it creates a method to add the user, which can be used in RegistrationServlet.>
//*********************************************************************************/
import java.sql.SQLException;
import java.util.regex.Pattern;

public class Registration {
	
	private String fname;
	private String lname;
	private String email;
	private String address;
	private String password;
	private String confirmPass;
	OperationDAO operation = new OperationDAO();
	
	public Registration(String fname, String lname, String email, String address, String pass, String confPass) {
		this.fname = fname;
		this.lname = lname; 
		this.email = email;
		this.address = address;
		this.password = pass;
		this.confirmPass = confPass;
	}	
	
	public boolean isEmpty() {
		if(fname == null || fname.isEmpty() ||
				lname == null || lname.isEmpty() ||
				email == null || email.isEmpty() ||
				address == null || address.isEmpty() ||
				password == null || password.isEmpty() ||
				confirmPass == null || confirmPass.isEmpty()) {
			return true;
		}
		return false;
	}
	
	public boolean isAlpha(String str) {
		for(int i = 0; i < str.length(); i++) {
			char c = str.charAt(i);
			if((!(c >= 'A' && c <= 'Z')) &&
					(!(c >= 'a' && c <= 'z'))) {
				return false;
			}
		}
		return true;
	}
	
	public boolean isValidEmail() {
		String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+ 
                "[a-zA-Z0-9_+&*-]+)*@" + 
                "(?:[a-zA-Z0-9-]+\\.)+[a-z" + 
                "A-Z]{2,7}$";
		Pattern p  = Pattern.compile(emailRegex);
		return p.matcher(email).matches();
	}
	
	public boolean isValidPassword() {
		String specialChars = "~`!@#$%^&*()-_=+\\|[{]};:'\",<.>/?";
		char c;
		boolean hasUpper = false;
		boolean hasSpecial = false;
		boolean validLength = false;
		
		if(password.length() >= 6 && password.length() <= 12) {
			validLength = true;
		}
		
		for(int i = 0; i < password.length(); i++) {
			c = password.charAt(i);
			if(Character.isUpperCase(c)) {
				hasUpper = true;
			}
			else if(specialChars.contains(String.valueOf(c))) {
				hasSpecial = true;
			}
		}
		
		return (validLength && hasUpper && hasSpecial);
	}
	
	public boolean passwordMatch(String password, String confirmPassword) {
		return (password.equals(confirmPassword));
	}	
	
}
