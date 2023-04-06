package com.UniversityOfCanada.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.UniversityOfCanada.model.DAOService;
import com.UniversityOfCanada.model.DAOServiceImpl;

@WebServlet("/verifyLogIn")
public class LogInController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LogInController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		DAOService service = new DAOServiceImpl();
		service.connectDB();
		boolean status = service.verifyCredentials(email, password);
		if (status) {
			HttpSession session = request.getSession(true);
			session.setAttribute("email", email);
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/newRegistration.jsp");
			rd.forward(request, response);
		} else {
			request.setAttribute("error", "Invalid USER NAME or PASSWORD");
			RequestDispatcher rd = request.getRequestDispatcher("logIn.jsp");
			rd.forward(request, response);
		}
	}

}
