package comp3095.assignment1;
/*
//*********************************************************************************
* Project: < Secure Payment Processing System >
* Assignment: < assignment 1 >
* Author(s): < Chaudhay, Ayusha; Kaur, Harampreet; KC, Dharam; Panna, Sahara; and Shireen, Fatima>
* Student Number: < 100968449, 101140952, 101044421, 101145593 and 101159461>
* Date:
* Description: <This java file is the list of all operations on data received from database based on the
* 				parameters received from other files. It plays a role of Controller in MVC model.>
//*********************************************************************************/
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class OperationDAO {
	
	public String checkLogin(String email, String password) {
		String role = null;	
		
        try {        	
        	String sql = "SELECT * FROM user WHERE email = ?";		
    		PreparedStatement statement = statement(sql);	
			statement.setString(1, email);		
			ResultSet result = statement.executeQuery();			
        
		    if (result.next()) {
		    	User user = new User();
		    	
		        user.setPassword(result.getString("password"));	            
		        
		        String db_password = user.getPassword();
		        String users_id = result.getString("id");
		        
		        statement.close();
		        result.close();		       
		        
		        if (db_password.equals(password)) {
		        	String id_sql = "SELECT * FROM userrole WHERE users_id=" + users_id;
					PreparedStatement id_statement = statement(id_sql);					
					
					ResultSet resultID = id_statement.executeQuery();
					if(resultID.next()) {
						String roles_id = resultID.getString("roles_id");
			        	int role_num = Integer.parseInt(roles_id); 
			        	if (role_num == 1) {
			        		role ="admin";
			        	}
			        	else if (role_num == 2) {
			        		role ="client";
			        	}
			        	else {
			        		role ="norole";
			        	}	        	
					}
					else 
					{
						 role="noid";
					}
				}
		        else {
		        	role = "nopasswordmatch";
		        }
		    }
		    else {
		    	role = "emailnotfound";
		    }
        
        } catch (SQLException e) {
			
			e.printStackTrace();
		}
        return role;
	}
	
	
	public String insert_user(User client) {	
		String firstname = client.getFirstName();
		String lastname = client.getLastName();
		String email = client.getEmail();
		String password = client.getPassword();
		String address = client.getAddress();
		//String created =client.getCreatedDate();
		
		String success ="No";		
		
		String sql_email = "SELECT * FROM user WHERE email = ?";

		try {
			PreparedStatement email_check1 = statement(sql_email);
			email_check1.setString(1, email);
	        ResultSet result = email_check1.executeQuery();
        
	        if (result.next()){
				return success;
			}
	        else {
		        String sql = "INSERT INTO user(firstname,lastname,email, password, address)"
		                + "VALUES(?,?,?,?,?)";
		        PreparedStatement insert = statement(sql);			       
		        insert.setString(1, firstname);
		        insert.setString(2, lastname);
		        insert.setString(3, email);    
		        insert.setString(5, password);
		        insert.setString(4, address);
		        
		        insert.executeUpdate();
		        success="Yes";
		        
		        insert.close();
	            return success;
			}	
		} catch (SQLException e) {			
			e.printStackTrace();			
		}
		return success;
	}
	
	public Boolean insert(User client) throws SQLException {
		if(insert_user(client).equals("Yes")) {
		
		String email = client.getEmail();
		
		String new_email = "SELECT * FROM user WHERE email = ?";
        PreparedStatement new_email_check1 = statement(new_email);
		new_email_check1.setString(1, email);
        ResultSet new_email_result = new_email_check1.executeQuery();
        
        if(new_email_result.next()) {
        	String users_id = new_email_result.getString("id");
            int roles_id =2;
            
            String sql_user_role = "INSERT INTO userrole(users_id, roles_id)"
                    + "VALUES(?,?)";
            PreparedStatement insert_user_role = statement(sql_user_role);			       
            insert_user_role.setInt(1, Integer.parseInt(users_id));
            insert_user_role.setInt(2, roles_id);
            
            insert_user_role.executeUpdate();
            
            insert_user_role.close();
            return true;
        	
        }
        else 
        	return false;        
		}
		else {
			return false;
		}		
	}
	
	public static String getFirstName(String email) {
		String firstname = "";	
		
        try {        	
        	String sql = "SELECT * FROM user WHERE email = ?";		
    		PreparedStatement statement = statement(sql);	
			statement.setString(1, email);		
			ResultSet result = statement.executeQuery();			
        
		    if (result.next()) {
		    	
		        String fname= result.getString("firstname");
		        
		        statement.close();
		        result.close();
		        firstname=fname;
		    }
		    
		    } catch (SQLException e) {
				
				e.printStackTrace();
			}
        return firstname;
		}
		        
	public static PreparedStatement statement(String query) {
		DatabaseConnection dc = new DatabaseConnection();
		Connection connection;
		try {
			connection = dc.getConnection();
			if(connection !=null) {
				PreparedStatement result_set = connection.prepareStatement(query);							
				return result_set;
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}	
		
		return null;
	
	}
	
}