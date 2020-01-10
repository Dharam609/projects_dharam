package comp3095.assignment1;
/*
//*********************************************************************************
* Project: < Secure Payment Processing System >
* Assignment: < assignment 1 >
* Author(s): < Chaudhay, Ayusha; Kaur, Harampreet; KC, Dharam; Panna, Sahara; and Shireen, Fatima>
* Student Number: < 100968449, 101140952, 101044421, 101145593 and 101159461>
* Date:
* Description: <This servlet destroys the session and directs the page to login page.>
//*********************************************************************************/
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LogoutServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message = "";
		HttpSession session=request.getSession(); 
		if(session.getAttribute("email") !=null) {
			session.invalidate();
			message = "You have successefully logged out!";
			request.setAttribute("message", message);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		
			
		}
	}

}
