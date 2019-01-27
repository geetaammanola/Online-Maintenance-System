package com.serv.web.DAOImpl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.serv.web.dao.ComplainDAO;
import com.serv.web.modal.Complain;
import com.serv.web.util.DbUtil;

public class ComplainDAOImpl implements ComplainDAO {
	private Connection conn;

	public ComplainDAOImpl() {
		conn = DbUtil.getConnection();
	}

	@Override
	public void addComplain(Complain complain) {
		try {
			String query = "insert into complain (complainer, email, mobileNo, date,address,category,Description) values (?,?,?,?,?,?,?)";
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setString(1, complain.getComplainer());
			preparedStatement.setString(2, complain.getEmail());
			preparedStatement.setInt(3, complain.getMobileNo());
			preparedStatement.setDate(4, (Date) complain.getDate());
			preparedStatement.setString(5, complain.getAddress());
			preparedStatement.setString(6, complain.getCategory());
			preparedStatement.setString(7, complain.getDescription());

			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Complain> getAllComplains() {
		List<Complain> complains = new ArrayList<Complain>();
		try {
			Statement statement = conn.createStatement();
			ResultSet resultSet = statement.executeQuery("select * from complain");
			while (resultSet.next()) {
				Complain complain = new Complain();

				complain.setComplainid(resultSet.getInt("complainid"));
				complain.setComplainer(resultSet.getString("complainer"));
				complain.setEmail(resultSet.getString("email"));
				complain.setMobileNo(resultSet.getInt("mobileNo"));
				complain.setDate(resultSet.getDate("date"));
				complain.setAddress(resultSet.getString("address"));
				complain.setCategory(resultSet.getString("category"));
				complain.setDescription(resultSet.getString("Description"));

				complains.add(complain);
			}
			resultSet.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return complains;
	}

}
