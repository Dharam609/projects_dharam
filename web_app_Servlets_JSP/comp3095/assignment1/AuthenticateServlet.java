package comp3095.assignment1;
/*
//*********************************************************************************
* Project: < Secure Payment Processing System >
* Assignment: < assignment 1 >
* Author(s): < Chaudhay, Ayusha; Kaur, Harampreet; KC, Dharam; Panna, Sahara; and Shireen, Fatima>
* Student Number: < 100968449, 101140952, 101044421, 101145593 and 101159461>
* Date:
* Description: <This Servlet gets validated email and password from LoginServlet.
* 				Then it creates a session and authenticates to a respective dash-board if both matched from database.
* 				If no match from database data, the process will redirect to LoginServel.>
//*********************************************************************************/

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AuthenticateServlet")
public class AuthenticateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AuthenticateServlet() {
        super();      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		OperationDAO operation = new OperationDAO();
		
		// Login authentication rules			
		String email = (String) request.getAttribute("email");
		String password = (String) request.getAttribute("password");					
		
		String check = operation.checkLogin(email, password);
		
		
		if (check != null) {
			HttpSession session=request.getSession();  
		    session.setAttribute("email",email);
		    
		    if(email.equals("admin@isp.net") && password.equals("P@ssword1")) {
		    	String firstname = "Sergio";
		    	request.setAttribute("firstname", firstname);
				request.getRequestDispatcher("admin_dashboard.jsp").forward(request, response);
		    }
		    else if (check.equals("admin")) {
				String firstname = OperationDAO.getFirstName(email);
				request.setAttribute("firstname", firstname);
				request.getRequestDispatcher("admin_dashboard.jsp").forward(request, response);
			}
			else if(check.equals("client")){
				String firstname = OperationDAO.getFirstName(email);
				request.setAttribute("firstname", firstname);
				request.getRequestDispatcher("client_dashboard.jsp").forward(request, response);
			}			
			else {			
				
				request.getRequestDispatcher("LoginServlet").forward(request, response);	
			}
						
		}
		request.getRequestDispatcher("LoginServlet").forward(request, response);

	}
}

			


		
		
	


