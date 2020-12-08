package comp3095.assignment1;
/*
//*********************************************************************************
* Project: < Secure Payment Processing System >
* Assignment: < assignment 1 >
* Author(s): < Chaudhay, Ayusha; Kaur, Harampreet; KC, Dharam; Panna, Sahara; and Shireen, Fatima>
* Student Number: < 100968449, 101140952, 101044421, 101145593 and 101159461>
* Date:
* Description: <This servlet plays a role of login manager. It validates the parameters received
* 				from log in page and sends messages to log in page as per the status of parameters.>
//*********************************************************************************/
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String message ="";	
		String action = request.getParameter("action");
		
		HttpSession session=request.getSession();
		
	    if(session.getAttribute("pass")=="nopass"){
	    	session.invalidate();
	    	message="You must login first!!!";
			request.setAttribute("message", message);
			request.getRequestDispatcher("login.jsp").forward(request, response);
	    }
	    else if(session.getAttribute("email")== null && action.equals("login")){
	    	String email = request.getParameter("email");
			String password = request.getParameter("password");				
			
			if(email != null && email.length()>0 && password != null && password.length()>0) {			
				request.setAttribute("email", email);
				request.setAttribute("password", password);									
				request.getRequestDispatcher("AuthenticateServlet").include(request, response);  
			}		
			else {
				message="No box can be empty!";
				request.setAttribute("message", message);
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}		
		else {
			message = "Invalid Credentials! Please try again!";
			request.setAttribute("message", message);
			session.invalidate();
			request.getRequestDispatcher("login.jsp").forward(request, response);			
		}
	}
}
		
		
	


