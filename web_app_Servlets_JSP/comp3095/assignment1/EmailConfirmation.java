package comp3095.assignment1;
/*
//*********************************************************************************
* Project: < Secure Payment Processing System >
* Assignment: < assignment 1 >
* Author(s): < Chaudhay, Ayusha; Kaur, Harampreet; KC, Dharam; Panna, Sahara; and Shireen, Fatima>
* Student Number: < 100968449, 101140952, 101044421, 101145593 and 101159461>
* Date:
* Description: <This java file prepares a message/link and includes in the method sendLink,
* 				which is used to send to the email after successful registration.>
//*********************************************************************************/

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailConfirmation {
	public static void sendLink(String recepient) throws Exception {
		Properties properties = new Properties();

		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");

		String MyAccountEmail = "kcdharam.b@gmail.com";
		String password = "Angel@911";

		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(MyAccountEmail, password);
			}
		});

		Message message = customMessage(session, MyAccountEmail,recepient);
		Transport.send(message);
		System.out.println("Message Sent");
	}

	private static Message customMessage(Session session, String MyAccountEmail,String recepient) {
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress((String) MyAccountEmail));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
			message.setSubject("Registration Confirmation");
			message.setText("Your are successfully registered. To login, please visit http://localhost:8086/Assignment1_COMP3095/login.jsp"
					+ "			\n Regards"					
					+ "			\nCourse: COMP 3095"
					+ "			\nTeam Name:Binary Beasts"
					+ "			\nTeam Members: "
					+ "							\nChaudhay, Ayusha - 100968449 "
					+ "							\nKaur, Harampreet-101140952"
					+ "							\nKC, Dharam - 101044421"
					+ "							\nPanna, Sahara - 101145593"
					+ "							Shireen, Fatima - 101159461");
			return message;
		} catch (Exception ex) {
			Logger.getLogger(OperationDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return null;
	}

}
