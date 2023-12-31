package project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.dao.UserDAO;
import project.model.User;

/**
 * Servlet implementation class PLoginServlet
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		UserDAO userDAO = new UserDAO();
		User user = new User();
		try {
			user = userDAO.getUserByEmailPassword(email, password);
			if (user == null) {
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				request.setAttribute("ErrorMessage", "Invalid Email or Password");
				rd.forward(request, response);
			} else {
				HttpSession session = request.getSession(false);
				session.setAttribute("user", user);
				session.setAttribute("userId", user.getId());
				response.sendRedirect("Shop");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		doGet(request, response);
	}
}