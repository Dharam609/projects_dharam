
package comp3095.assignment1;
/*
//*********************************************************************************
* Project: < Secure Payment Processing System >
* Assignment: < assignment 1 >
* Author(s): < Chaudhay, Ayusha; Kaur, Harampreet; KC, Dharam; Panna, Sahara; and Shireen, Fatima>
* Student Number: < 100968449, 101140952, 101044421, 101145593 and 101159461>
* Date:
* Description: <This servlet calls methods from Registration java file and when all valid, it adds the user in database
* 				else send the messages to registration jsp file accordingly.>
//*********************************************************************************/
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;       
   
    public RegistrationServlet() {
        super();
       
    }	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		boolean validInput = true;
		String message = "";
		
		
		if(request.getParameter("action").equals("register")){
			String fname = request.getParameter("first_name");
			String lname = request.getParameter("last_name");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			String pass = request.getParameter("client_password");
			String confirmPass = request.getParameter("confirm_password");
			
			Registration register = new Registration(fname, lname, email, address, pass, confirmPass);
			if(register.isEmpty()) {
		    	message="Please fill all the required fileds";
				request.setAttribute("message", message);
				request.getRequestDispatcher("registration.jsp").forward(request, response);
			}
			else {
				
				if(!(register.isAlpha(fname))) {
					message = "Please ensure that first and last name are alphabetical only\n";
					validInput = false;
				}
				
				if(!(register.isValidEmail())) {
					message += "Please enter a valid email\n";
					validInput = false;
				}
				
				if(!(register.isValidPassword())) {
					message += "Please ensure that your password is 6-12 characters in length "
							+ "\nand includes at least one upper case and one special character\n";
					validInput = false;
				}
				
				if(!(register.passwordMatch(pass,confirmPass))) {
					message += "Please make sure your password matches\n";
					validInput = false;
				}
				
				if(validInput == false) {
					request.setAttribute("message", message);
					request.getRequestDispatcher("registration.jsp").forward(request, response);
				}
			}
			
			if(validInput == true) {
				OperationDAO operation = new OperationDAO();
				User client = new User(fname, lname, email, pass, address);
				try {
					if(operation.insert(client)) {
						try {
							EmailConfirmation.sendLink(client.getEmail());
							request.getRequestDispatcher("confirmation.jsp").forward(request, response);
						} catch (Exception e) {
							
							e.printStackTrace();
						}
						request.getRequestDispatcher("confirmation.jsp").forward(request, response);
					}
					else {
						message = "User already exists";
						request.setAttribute("message", message);
						request.getRequestDispatcher("registration.jsp").forward(request, response);
					}
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
		}
	}
}
