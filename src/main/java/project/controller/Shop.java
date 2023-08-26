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
import project.dao.PriceRangeDAO;
import project.dao.ProductColorDAO;
import project.dao.ProductDAO;
import project.model.Category;
import project.model.PriceRange;
import project.model.Product;
import project.model.ProductColor;

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
			String[] categories = request.getParameterValues("category");
			String[] colors = request.getParameterValues("color");
			String text = request.getParameter("text");
			String max = request.getParameter("max");
			
			CategoryDAO categoryDAO = new CategoryDAO();
			List<Category> list = categoryDAO.getAllCategories();
			
			ProductColorDAO productColorDao = new ProductColorDAO();
			List<ProductColor> colorList = productColorDao.getAllColor();
			
			PriceRangeDAO priceRangeDAO = new PriceRangeDAO();
			List<PriceRange> priceList = priceRangeDAO.getAllRange();
			
			ProductDAO productDao = new ProductDAO();			
			List<Product> productList = new ArrayList<Product>();
			int countItems = 0;
			if (categories != null || colors != null) {
				productList = productDao.getProductsByFilters(categories, colors, "0", max);
				countItems = productList.size();
			} else {
				int pageIndex = 1;
				if (request.getParameter("pageIndex") != null) {
					pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
				}
				productList = productDao.getProductsByPage(pageIndex, ITEMS_PER_PAGE);
				countItems = productDao.getAllProducts().size();
			}
			// pagination: define total items & number of pages
			int endPage = (int) Math.ceil(productDao.getAllProducts().size() / ITEMS_PER_PAGE);

			RequestDispatcher rd = request.getRequestDispatcher("shop.jsp");
			request.setAttribute("categoryList", list);
			request.setAttribute("search", text);
			request.setAttribute("count", countItems);
			request.setAttribute("pageIndex", request.getParameter("pageIndex"));
			request.setAttribute("endPage", endPage);
			request.setAttribute("productList", productList);
			request.setAttribute("priceList", priceList);
			request.setAttribute("colorList", colorList);
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
