package com.serv.web.DAOImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.serv.web.dao.userLoginDAO;
import com.serv.web.modal.Student;
import com.serv.web.modal.userLogin;
import com.serv.web.util.DbUtil;

public class userLoginDAOImpl implements userLoginDAO{
	
	private Connection conn;

	public userLoginDAOImpl() {
		conn = DbUtil.getConnection();
	}

	@Override
	public void addUser(userLogin user) {
		try {
			String query = "insert into userLogin (fname, lname, email, password) values (?,?,?,?)";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			preparedStatement.setString( 1, user.getFname() );
			preparedStatement.setString( 2, user.getLname() );
			preparedStatement.setString( 3, user.getEmail() );
			preparedStatement.setString( 4, user.getPassword() );
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateUser(userLogin user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public userLogin getUserByEmail(String email, String password) {
		// TODO Auto-generated method stub
		return null;
	}
		
	/*

	@Override
	public void updateUser(userLogin user) {
		try {
			String query = "update userLogin set fname=?, lname=?, email=?, password=? where userId=?";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			preparedStatement.setString( 1, user.getFname() );
			preparedStatement.setString( 2, user.getLname() );
			preparedStatement.setString( 3, user.getEmail() );
			preparedStatement.setString( 4, user.getPassword() );
			preparedStatement.setInt(5, user.getUserid());
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		


	@Override
	public userLogin getUserByEmail(String email, String password) {
		userLogin userLogin = new userLogin();
		try {
			String query = "select * from student where email=? AND password=?";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			ResultSet resultSet = preparedStatement.executeQuery();
			if( resultSet.next() ) {
				userLogin.setEmail( resultSet.getString( "email" ) );
				userLogin.setPassword( resultSet.getString( "password" ) );
				
			
			}
			resultSet.close();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userLogin;
	}*/
}

	


