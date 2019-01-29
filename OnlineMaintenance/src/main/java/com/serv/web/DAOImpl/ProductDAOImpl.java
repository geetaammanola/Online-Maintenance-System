package com.serv.web.DAOImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.serv.web.dao.ProductDAO;
import com.serv.web.modal.Product;
import com.serv.web.util.DbUtil;

public class ProductDAOImpl  implements ProductDAO {

	private Connection conn;

	public ProductDAOImpl() {
		conn = DbUtil.getConnection();
	}
	@Override
	public void addProduct(  Product  product ) {
		try {
			String query = "insert into product (productName, inStock) values (?,?)";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			preparedStatement.setString( 1, product.getProductName() );
			preparedStatement.setInt( 2, product.getInStock() );
			
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void deleteProduct( int productId ) {
		try {
			String query = "delete from product where ProductId=?";
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setInt(1, productId);
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void updateProduct( Product product ) {
		try {
			String query = "update product set productName=?, inStock=? where productId=?";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			preparedStatement.setString( 1, product.getProductName() );
			preparedStatement.setInt( 2, product.getInStock() );
		
			preparedStatement.setInt(3, product.getProductId());
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public List<Product> getAllProducts() {
		List<Product> products = new ArrayList<Product>();
		try {
			Statement statement = conn.createStatement();
			ResultSet resultSet = statement.executeQuery( "select * from product" );
			while( resultSet.next() ) {
				Product product = new Product();
				product.setProductId( resultSet.getInt( "productId" ) );
				product.setProductName( resultSet.getString( "productName" ) );
				product.setInStock( resultSet.getInt( "inStock" ) );
			
				products.add(product);
			}
			resultSet.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}
	@Override
	public Product getProductById(int productId) {
		Product product = new Product();
		try {
			String query = "select * from product where productId=?";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			preparedStatement.setInt(1, productId);
			ResultSet resultSet = preparedStatement.executeQuery();
			while( resultSet.next() ) {
				product.setProductId( resultSet.getInt( "productId" ) );
				product.setProductName( resultSet.getString( "productName" ) );
				product.setInStock( resultSet.getInt( "inStock" ) );
			}
			resultSet.close();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return product;
	}

}
