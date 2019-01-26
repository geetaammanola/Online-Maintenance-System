package com.serv.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.serv.web.modal.data;

public class dataDAO
{
	public data getData(int id) 
	{
		
		data d = new data();

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineMaintenance","root","root123");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from mp where id =" + id );
			if(rs.next())
			{
				d.setId(rs.getInt("id"));
				d.setFname(rs.getString("fname"));
				d.setLname(rs.getString("lname"));
				d.setEmail(rs.getString("email"));
				
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		
		return d;
		
		/*	d.setId(101);
		d.setName("Veronica");
		d.setTech("Java");
		return d;

	
	}*/

}
}
