package com.atuldwivedi.ors.presentation.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.atuldwivedi.ors.constant.AddressType;
import com.atuldwivedi.ors.constant.UserType;
import com.atuldwivedi.ors.model.Address;
import com.atuldwivedi.ors.model.Candidate;
import com.atuldwivedi.ors.model.Education;
import com.atuldwivedi.ors.model.Login;

/**
 * Servlet implementation class RegiserCandidateServlet
 */
@WebServlet("/RegiserCandidateServlet/*")
public class RegisterCandidateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterCandidateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestUri = request.getRequestURI();
		
		if(requestUri.contains("education")){
			HttpSession session = request.getSession(false);
			session.getAttribute("userName");
			
			Education education = new Education();
			education.setBranch(request.getParameter("branch"));
			education.setMarks(Integer.parseInt(request.getParameter("markDegree")));
			education.setEducationLevel(request.getParameter("degree"));
			education.setCollegeName(request.getParameter("collname"));
		}
		else if(requestUri.contains("address")){
			Address address = new Address();
			address.setAddressLine1(request.getParameter("addressLine1"));
			address.setAddressLine2(request.getParameter("addressLine2"));
			address.setCity(request.getParameter("city"));
			address.setState(request.getParameter("state"));
			address.setCountry(request.getParameter("country"));
			address.setPinCode(Integer.parseInt(request.getParameter("pinCode")));
			address.setLandMark(request.getParameter("landMark"));
			address.setAddressType(AddressType.HOME.getValue());
		}
		else if(requestUri.contains("experience")){
			
			
		}
		else if(requestUri.contains("candidate")){
			String userName = request.getParameter("username");
			String password = request.getParameter("password");
			
			Login login = new Login();
			login.setUserName(userName);
			login.setPassword(password);
			login.setUserType(UserType.CANDIDATE.getValue());
			
			HttpSession session = request.getSession();
			session.setAttribute("userName", userName);
			
			Candidate candidate = new Candidate();
			candidate.setUserName(userName);
			candidate.setName(request.getParameter("name"));
			candidate.setGender(request.getParameter("gender"));
			candidate.setDob(request.getParameter("dob"));
		}
	}

}
