package project.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.dao.ProductDAO;
import project.model.Product;

/**
 * Servlet implementation class PProductDetail
 */
@WebServlet("/ProductDetail")
public class ProductDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String productId = request.getParameter("productId");
		Product product = new Product();
		ProductDAO productDao = new ProductDAO();

		try {
			if (productId != null) {
				product = productDao.getProductsById(Integer.parseInt(productId));
			} else {
				product = null;
			}
			RequestDispatcher rd = request.getRequestDispatcher("single-product.jsp");
			request.setAttribute("product", product);
			request.setAttribute("productId", productId);			

			rd.forward(request, response);
			
			HttpSession session = request.getSession(false);
			session.setAttribute("productId", productId);

			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
