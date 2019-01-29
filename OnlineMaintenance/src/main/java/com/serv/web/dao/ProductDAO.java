package com.serv.web.dao;

import java.util.List;

import com.serv.web.modal.Product;

public interface ProductDAO {
	
	
	public void addProduct( Product product );
	public void deleteProduct( int productid );
	public void updateProduct( Product product );
	public List<Product> getAllProducts();
	public Product getProductById( int productid );

}
