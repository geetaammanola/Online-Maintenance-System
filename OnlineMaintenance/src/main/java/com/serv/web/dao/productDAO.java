package com.serv.web.dao;

import java.util.List;

import com.serv.web.modal.product;

public interface productDAO {
	
	
	public void addProduct( product product );
	public void deleteProduct( int pid );
	public void updateProduct( product product );
	public List<product> getAllProduct();
	public product getProductById( int pid );

}
