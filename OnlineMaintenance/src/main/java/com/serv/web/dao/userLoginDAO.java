package com.serv.web.dao;

import com.serv.web.modal.userLogin;

;

public interface userLoginDAO {

	public void addUser(userLogin user);

	public void updateUser(userLogin user);

	public userLogin getUserByEmail(String email , String password);
}

/*
 * private Connection connection;
 * 
 * public userLoginDAO() { connection = DbUtil.getConnection(); }
 * 
 * public void addUserLogin(userLogin user) { try { PreparedStatement
 * preparedStatement = connection
 * .prepareStatement("insert into login(fname,lname,email, pass) values (?, ?, ?, ? )"
 * ); // Parameters star t with 1 preparedStatement.setString(1,
 * user.getFname()); preparedStatement.setString(2, user.getLname());
 * 
 * preparedStatement.setString(4, user.getEmail());
 * preparedStatement.setString(4, user.getPass());
 * preparedStatement.executeUpdate();
 * 
 * } catch (SQLException e) { e.printStackTrace(); }
 * 
 * 
 * 
 * 
 * }
 * 
 * 
 * public void updateUserLogin(userLogin user) { try { PreparedStatement
 * preparedStatement = connection
 * .prepareStatement("update login set fname=?, lname=?, email=?" +
 * "where userid=?"); // Parameters start with 1 preparedStatement.setString(1,
 * user.getFname()); preparedStatement.setString(2, user.getLname());
 * preparedStatement.setString(3, user.getEmail());
 * 
 * preparedStatement.executeUpdate();
 * 
 * } catch (SQLException e) { e.printStackTrace(); } }
 */
