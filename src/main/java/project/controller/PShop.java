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

import project.dao.PCategoryDAO;
import project.dao.PProductDAO;
import project.model.PCategory;
import project.model.PProduct;

/**
 * Servlet implementation class homeServlet
 */
@WebServlet("/PShop")
public class PShop extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int ITEMS_PER_PAGE = 3;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			// get parameters
			String categoryId = request.getParameter("categoryId");
			String text = request.getParameter("text");
//			String pageIndex = request.getParameter("pageIndex");
			List<PProduct> productList = new ArrayList<PProduct>();

			// show all categories in sidebar + no of products in each category
			PCategoryDAO pCategoryDAO = new PCategoryDAO();
			List<PCategory> list = pCategoryDAO.getAllCategories();
			// temporary show count products in each category

			// show product list by category, by search
			PProductDAO pProductDao = new PProductDAO();

			if (categoryId != null) {
				productList = pProductDao.getProductsByCate(Integer.parseInt(categoryId));

			} else if (text != null) {
				productList = pProductDao.getProductsByText(text);

			} else {
				int pageIndex = 1;
				if (request.getParameter("pageIndex") != null) {
					pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
				}
				productList = pProductDao.getProductsByPage(pageIndex, ITEMS_PER_PAGE);
			}
			// pagination: define total items & number of pages
			double countItems = pProductDao.getAllProducts().size();
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
