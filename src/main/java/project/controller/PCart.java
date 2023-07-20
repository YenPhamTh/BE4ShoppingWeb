package project.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.dao.POrderDAO;
import project.dao.PProductDAO;
import project.dto.PCartSession;
import project.model.PProduct;
import project.model.PUser;

@WebServlet("/PCart")
public class PCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String REQUEST_REMOVE_ITEM_FROM_CART = "REMOVE";
	//private final String REQUEST_ADD_TO_CART = "ADD_TO_CART";
	private final String REQUEST_CHECK_OUT = "CHECK_OUT";

	public PCart() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String command = request.getParameter("command");
			String productId = request.getParameter("productId");
			HttpSession session = request.getSession();
			PCartSession cart = (PCartSession) session.getAttribute("cart");

			switch (command) {
			case REQUEST_REMOVE_ITEM_FROM_CART: {
				removeFromCart(productId, request, response);
				return;
			}
			case REQUEST_CHECK_OUT: {
				checkout(cart, request, response);
				return;
			}
			default: {
				addToCart(productId, request, response);
				return;
			}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// functions:

	public void addToCart(String productId, HttpServletRequest request, HttpServletResponse response)
			throws NumberFormatException, SQLException, IOException {
		PProductDAO productService = new PProductDAO();
		PProduct product = productService.getProductsById(Integer.parseInt(productId));

		HttpSession session = request.getSession();
		PCartSession cart = (PCartSession) session.getAttribute("cart");

		if (cart == null) {
			cart = new PCartSession();
			PUser user = (PUser) session.getAttribute("user");
			cart.setUserId(user.getId());
		}
		boolean isAddedSuccess = cart.getProducts().add(product);
		if (isAddedSuccess) {
			// cart.setSubTotalPrice(product.getPrice()*quantity);
			// cart.setTotalPrice(cart.getTotalPrice()+cart.getSubTotalPrice());
			cart.setTotalPrice(cart.getTotalPrice() + product.getDiscountedPrice());

			session.setAttribute("cart", cart);
			// session.setAttribute("product", product);
		}
		response.sendRedirect("PShop");
	}

	public void removeFromCart(String productId, HttpServletRequest request, HttpServletResponse response)
			throws NumberFormatException, SQLException, IOException {
		PProductDAO productService = new PProductDAO();
		PProduct product = productService.getProductsById(Integer.parseInt(productId));

		HttpSession session = request.getSession();
		PCartSession cart = (PCartSession) session.getAttribute("cart");
		// remove product:
		cart.getProducts().remove(product);
		cart.setTotalPrice(cart.getTotalPrice() - product.getDiscountedPrice());
		session.setAttribute("cart", cart);
		response.sendRedirect("cart.jsp");
	}

	public void checkout(PCartSession cart, HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		HttpSession session = request.getSession();
		cart = (PCartSession) session.getAttribute("cart");

		// create order - return order id
		POrderDAO orderService = new POrderDAO();
		orderService.addOrderWithItems(cart);

		// create order summary:
		session.setAttribute("orderSummary", cart);
		session.removeAttribute("cart");
		response.sendRedirect("checkout.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
