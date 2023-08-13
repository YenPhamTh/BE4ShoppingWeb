package project.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.dao.CategoryDAO;
import project.dao.ProductDAO;
import project.model.Category;
import project.model.Product;

/**
 * Servlet implementation class homeServlet
 */
@WebServlet("/Shop")
public class Shop extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int ITEMS_PER_PAGE = 9;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			// get parameters
			String categoryId = request.getParameter("categoryId");
			String text = request.getParameter("text");
//			String pageIndex = request.getParameter("pageIndex");
			List<Product> productList = new ArrayList<Product>();

			// show all categories in sidebar + no of products in each category
			CategoryDAO categoryDAO = new CategoryDAO();
			List<Category> list = categoryDAO.getAllCategories();
			// temporary show count products in each category

			// show product list by category, by search
			ProductDAO productDao = new ProductDAO();

			if (categoryId != null) {
				productList = productDao.getProductsByCate(Integer.parseInt(categoryId));

			} else if (text != null) {
				productList = productDao.getProductsByText(text);

			} else {
				int pageIndex = 1;
				if (request.getParameter("pageIndex") != null) {
					pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
				}
				productList = productDao.getProductsByPage(pageIndex, ITEMS_PER_PAGE);
			}
			// pagination: define total items & number of pages
			double countItems = productDao.getAllProducts().size();
			int endPage = (int) Math.ceil(countItems / ITEMS_PER_PAGE);

			RequestDispatcher rd = request.getRequestDispatcher("shop.jsp");
			request.setAttribute("categoryList", list);
			request.setAttribute("categoryId", categoryId);
			request.setAttribute("search", text);
			request.setAttribute("count", countItems);
			request.setAttribute("pageIndex", request.getParameter("pageIndex"));
			request.setAttribute("endPage", endPage);
			request.setAttribute("productList", productList);
			rd.forward(request, response);

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

//	public List<PProduct> paging(List<PProduct> productList, String pageIndex) {
//		if (pageIndex == null) {
//			pageIndex = "1";
//		}
//		return productList.subList((Integer.parseInt(pageIndex) - 1) * ITEMS_PER_PAGE,
//				Math.min((Integer.parseInt(pageIndex) * ITEMS_PER_PAGE), productList.size()-1));
//	}

}
