package com.atuldwivedi.ors.presentation.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atuldwivedi.ors.model.Candidate;

/**
 * Servlet implementation class RegiserCandidateServlet
 */
@WebServlet("/RegiserCandidateServlet")
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
		Candidate candidate = new Candidate();
		candidate.setName(request.getParameter("name"));
		candidate.setAddress(request.getParameter("address"));
		candidate.setState(request.getParameter("state"));
		candidate.setPinCode(request.getParameter("pinCode"));
		candidate.setName(request.getParameter("name"));
		candidate.setGender(request.getParameter("gender"));
		candidate.setDob(request.getParameter("dob"));
		
		
	}

}
