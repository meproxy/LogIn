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

@WebServlet("/list")
public class ListRegisteration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ListRegisteration() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session.getAttribute("email")!=null) {
		
		DAOService service = new DAOServiceImpl();
		service.connectDB();
		
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


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
