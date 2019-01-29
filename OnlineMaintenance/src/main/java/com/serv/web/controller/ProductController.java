package com.serv.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.serv.web.DAOImpl.ProductDAOImpl;
import com.serv.web.dao.ProductDAO;
import com.serv.web.modal.Product;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
	private ProductDAO dao;
	private static final long serialVersionUID = 1L;
	public static final String lIST_Product = "/listProduct.jsp";
	public static final String INSERT_OR_EDIT = "/Pro.jsp";

	public ProductController() {
		dao = new ProductDAOImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String forward = "";
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("delete")) {
			forward = lIST_Product;
			int productId = Integer.parseInt(request.getParameter("productId"));
			dao.deleteProduct(productId);
			request.setAttribute("Products", dao.getAllProducts());
		} else if (action.equalsIgnoreCase("edit")) {
			forward = INSERT_OR_EDIT;
			int productId = Integer.parseInt(request.getParameter("productId"));
			Product product = dao.getProductById(productId);
			request.setAttribute("product", product);
		} else if (action.equalsIgnoreCase("insert")) {
			forward = INSERT_OR_EDIT;
		} else {
			forward = lIST_Product;
			request.setAttribute("products", dao.getAllProducts());
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Product product = new Product();
		product.setProductName(request.getParameter("productName"));

		product.setInStock(Integer.parseInt(request.getParameter("inStock")));

		String productId = request.getParameter("productId");

		if (productId == null || productId.isEmpty())
			dao.addProduct(product);
		else {
			product.setProductId(Integer.parseInt(productId));
			dao.updateProduct(product);
		}
		RequestDispatcher view = request.getRequestDispatcher(lIST_Product);
		request.setAttribute("products", dao.getAllProducts());
		view.forward(request, response);
	}
}