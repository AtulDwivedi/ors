package com.atuldwivedi.ors.presentation.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.atuldwivedi.ors.model.Company;
import com.atuldwivedi.ors.model.Login;
import com.atuldwivedi.ors.service.impl.CompanyServiceImpl;
import com.atuldwivedi.ors.service.impl.LoginServiceImpl;
import com.atuldwivedi.ors.service.services.CompanyService;
import com.atuldwivedi.ors.service.services.LoginService;

/**
 * Servlet implementation class RegisterCompanyServlet
 */
@WebServlet("/RegisterCompanyServlet")
public class RegisterCompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterCompanyServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String compName = request.getParameter("compname");
		String address = request.getParameter("addr");
		String postInComp = request.getParameter("postincomp");
		String criteria = request.getParameter("criteria");
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		int contact = Integer.parseInt(request.getParameter("contact"));
		int cutOff = Integer.parseInt(request.getParameter("cutoff"));
		
		
		
		Company company = new Company(compName, address, postInComp, criteria, userName, email, contact, cutOff);
		
		
		CompanyService companyService = new CompanyServiceImpl();
		
		int registeredUserCount = companyService.registerCompany(company);
		
		int loginInsertCount = 0;
		if(registeredUserCount == 1){
			
			Login login = new Login();
			login.setUserName(userName);
			login.setPassword(password);
			login.setUserType("comp");
			
			LoginService loginService = new LoginServiceImpl();
			loginInsertCount = loginService.insertLogin(login);
		}
		
		if(loginInsertCount == 1){
			HttpSession session = request.getSession();
			session.setAttribute("s1", company.getUserName());
			response.sendRedirect("company/CompanyHomePage.jsp");
		}
		else{
			response.sendRedirect("index.jsp");
		}
	}

}
