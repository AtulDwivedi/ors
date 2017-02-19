package com.atuldwivedi.ors.presentation.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.atuldwivedi.ors.dao.util.ConnectionProvider;
import com.atuldwivedi.ors.model.Company;
import com.atuldwivedi.ors.service.impl.CompanyServiceImpl;
import com.atuldwivedi.ors.service.services.CompanyService;

/**
 * Servlet implementation class EditCompanyDetailsServlet
 */
@WebServlet("/EditCompanyDetailsServlet")
public class EditCompanyDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditCompanyDetailsServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		String userName = (String)session.getAttribute("s1");
		if(userName != null){
			Connection con = null;
			try {
				 con = ConnectionProvider.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM COMPANYREGISTER WHERE USERNAME = '"+userName+"'");
				rs.next();
				String comUserName = rs.getString(1);
				String compName = rs.getString(2);
				String address = rs.getString(3);
				String postInComp = rs.getString(4);
				String criteria = rs.getString(5);
				String email = rs.getString(6);
				int contact = rs.getInt(7);
				int cutOff = rs.getInt(8);
				Company company = new Company(comUserName, address, postInComp, criteria, userName, email, contact, cutOff);
				request.setAttribute("com", company);
				request.getRequestDispatcher("/company/EditComProfile.jsp").forward(request, response);
//				response.sendRedirect("EditComProfile.jsp");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		HttpSession session = request.getSession(false);
		String userName = (String)session.getAttribute("s1");
		String compName = request.getParameter("compname");
		String address = request.getParameter("addr");
		String postInComp = request.getParameter("post");
		String criteria = request.getParameter("criteria");
//		String userName = request.getParameter("username");
//		String password = request.getParameter("password");
		String email = request.getParameter("email");
		int contact = Integer.parseInt(request.getParameter("contact"));
		int cutOff = Integer.parseInt(request.getParameter("cutoff"));
		
		Company company = new Company(compName, address, postInComp, criteria, userName, email, contact, cutOff);
		CompanyService companyService = new CompanyServiceImpl();
		
		int updateCompany = companyService.updateCompany(company);
		
		if( updateCompany ==1){
			request.getRequestDispatcher("/company/CompanyHomePage.jsp").forward(request, response);
			
		}
		else{
			response.sendRedirect("index.jsp");
		}
	}

}
