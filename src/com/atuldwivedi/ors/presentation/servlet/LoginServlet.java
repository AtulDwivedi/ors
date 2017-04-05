package com.atuldwivedi.ors.presentation.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.atuldwivedi.ors.model.Login;
import com.atuldwivedi.ors.service.impl.LoginServiceImpl;
import com.atuldwivedi.ors.service.services.LoginService;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Request URI: "+request.getRequestURI());
		String userName = request.getParameter("username");
		String password = request.getParameter("password");

		Login login = new Login();
		login.setUserName(userName);
		login.setPassword(password);

		LoginService loginService = new LoginServiceImpl();
		boolean isValidUser = loginService.checkLogin(login);

		if(isValidUser){
			
			HttpSession session = request.getSession();
			session.setAttribute("s1", userName);
			
			String userType = login.getUserType();
			
			if(userType.equals("admin")){
				request.getRequestDispatcher("AdminHomePage.jsp").forward(request, response);
			}
			else if(userType.equals("comp"))
			{
				request.getRequestDispatcher("company/CompanyHomePage.jsp").forward(request, response);
			}
			else if(userType.equals("cand"))
			{
				request.getRequestDispatcher("candidate/CandidateHomePage.jsp").forward(request, response);
			}
			else
			{
				response.sendRedirect("index.jsp");
			}
		}
		else{
			response.sendRedirect("common/Login.jsp");
		}
	}

}
