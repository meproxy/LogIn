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


@WebServlet("/saveReg")
public class SaveRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public SaveRegistration() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/newRegistration.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session.getAttribute("email")!=null) {
		
		String name = request.getParameter("name");
		String fathersName = request.getParameter("fathersName");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		
		DAOService service = new DAOServiceImpl();
		service.connectDB();
		service.saveRegistration(name, fathersName, email, address, contact);
		
		request.setAttribute("msg", "Record is Saved");
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/newRegistration.jsp");
		rd.forward(request, response);
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("logIn.jsp");
			rd.forward(request, response);
		}
	}

}
