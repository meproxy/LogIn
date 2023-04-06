package com.UniversityOfCanada.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.UniversityOfCanada.model.DAOService;
import com.UniversityOfCanada.model.DAOServiceImpl;

@WebServlet("/UpdateRegistration")
public class UpdateRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateRegistration() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String fathersName = request.getParameter("fathersName");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		
		request.setAttribute("name", name);
		request.setAttribute("fathersName", fathersName);
		request.setAttribute("email", email);
		request.setAttribute("address", address);
		request.setAttribute("contact", contact);
		
		RequestDispatcher red = request.getRequestDispatcher("/WEB-INF/views/updateRegistration.jsp");
		red.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session.getAttribute("email")!=null) {
		String name = request.getParameter("name");
		String fathersName = request.getParameter("fathersName");	
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		
		DAOService service = new DAOServiceImpl();
		service.connectDB();
		service.updateRegistration(name, fathersName, email, address, contact);
		
		ResultSet result = service.listReg();
		request.setAttribute("result", result);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/list.jsp");
		rd.forward(request, response);
	}
	else {
		RequestDispatcher rd = request.getRequestDispatcher("logIn.jsp");
		rd.forward(request, response);
	}
	}
}
