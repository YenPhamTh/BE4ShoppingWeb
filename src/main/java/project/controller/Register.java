package project.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.dao.RegisterDAO;
import project.model.User;

/**
 * Servlet implementation class registrationServlet
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		System.out.println(username);

		// Validate user:
		User account = new User(username, email, password);
		List<String> errorsMessage = validateUser(account);
		if (!errorsMessage.isEmpty()) {
			RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
			request.setAttribute("errorMessages", errorsMessage);
			request.setAttribute("username", username);
			request.setAttribute("email", email);
			rd.forward(request, response);

		}
		// If valid --> input database
		RegisterDAO registerService = new RegisterDAO();
		try {
			boolean isInsertSuccess = registerService.registerAccount(account);
			System.out.println(isInsertSuccess);
			if (isInsertSuccess) {
				response.sendRedirect("login.jsp"); // khong can dinh kem thong tin gi
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
				request.setAttribute("errorMessage", "There's an error, pls reinput!");
				rd.forward(request, response);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private List<String> validateUser(User account) {
		// Validate user input
		List<String> errors = new ArrayList<String>();
		Pattern p = Pattern.compile("^[a-zA-Z0-9]*$");
		boolean isAlphaNumericUsername = p.matcher(account.getName()).find();

		// if invalid: show correctly what's the error:
		if (!isAlphaNumericUsername) {
			errors.add("Error: User contain only alphabet & numbers");
		}
		boolean isPasswordMatch = p.matcher(account.getPassword()).find();

		// if invalid: show correctly what's the error:
		if (!isPasswordMatch) {
			errors.add("Error: Password contain only alphabet & numbers");
		}

		return errors;
	}
}
