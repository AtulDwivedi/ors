package com.atuldwivedi.ors.presentation.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atuldwivedi.ors.constant.Action;
import com.atuldwivedi.ors.model.Candidate;

/**
 * Servlet implementation class CandidateServlet
 */
@WebServlet("/CandidateServlet/*")
public class CandidateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CandidateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestUri = request.getRequestURI();
		String[] requestUriSplit = requestUri.split("/");
		String action = requestUriSplit[requestUriSplit.length-1];
		
		System.out.println(">> "+this.getClass().getSimpleName()+" Action is "+action);
		
		switch (action) {
		
		case "Add":
			addCandidate();
			break;
		case "View":
			viewCandidate();
			break;
		case "Edit":
			editCandidate(request, response);
			break;

		default:
			viewCandidate();
			break;
		}	
	}

	private void editCandidate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Candidate cand = new Candidate();
		cand.setName("atul");
		request.setAttribute("cand", cand);
		request.getRequestDispatcher("../candidate/edit-candidate-profile.jsp").forward(request, response);
	}

	private void viewCandidate() {
		// TODO Auto-generated method stub
		
	}

	private void addCandidate() {
		// TODO Auto-generated method stub
		
	}

}
