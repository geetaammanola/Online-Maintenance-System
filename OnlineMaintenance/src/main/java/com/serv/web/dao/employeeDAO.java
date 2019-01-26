package com.serv.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


import com.serv.web.modal.emp;

public class employeeDAO {


		public emp getEmployeeDAO(int eid) 
		{
			
			emp e = new emp();

			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineMaintenance","root","root123");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from Emp where eid =" + eid );
				if(rs.next())
				{
					e.setE_id(rs.getInt("eid"));
					e.setE_name(rs.getString("name"));
					e.setE_email(rs.getString("email"));
					e.setE_designation(rs.getString("designation"));
					e.setE_address(rs.getString("address"));
					e.setE_mobileNo(rs.getInt("mobileNo"));
					
				}
			}
			catch(Exception ex){
				System.out.println(ex);
			}
			
			return e;
			
			
	}

}
