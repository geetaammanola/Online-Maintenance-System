package com.serv.web.DAOImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.serv.web.util.DbUtil;

public class LoginFrmDbDAOImpl {
	
	private Connection conn;

	public LoginFrmDbDAOImpl() {
		conn = DbUtil.getConnection();
	}
  
	
	
	String query="select 8 from userLogin where email=? and password=?";
	
	
	public boolean check(String email , String password )
	{
		try {
			PreparedStatement st =conn.prepareStatement(query);
			st.setString(1, email);
			st.setString(2, password);
		
			
			ResultSet rs=st.executeQuery();
			if(rs.next()) {
				return true;
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
		
	}
	
	

}
