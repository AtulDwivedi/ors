package com.atuldwivedi.ors.presentation.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.atuldwivedi.ors.model.Exam;
import com.atuldwivedi.ors.model.Job;
import com.atuldwivedi.ors.service.impl.CompanyServiceImpl;
import com.atuldwivedi.ors.service.services.CompanyService;

/**
 * Servlet implementation class JobServlet
 */
@WebServlet("/JobServlet/*")
public class JobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JobServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getPathInfo());
		HttpSession session = request.getSession(false);
		if(session.getAttribute("s1") == null){
			response.sendRedirect("login.jsp");
		}
		String requestUri = request.getRequestURI();
		System.out.println("Request URI: "+requestUri);
		if(requestUri.contains("delete")){
			System.out.println("I am deleting.");
			CompanyService companyService = new CompanyServiceImpl();
			int i = companyService.deletJobById(Long.parseLong(request.getParameter("jobId")), (String)session.getAttribute("s1"));
			if(i == 1){
				response.sendRedirect(request.getContextPath() + "/ViewJobDetails.jsp");
			}
			else{
				response.sendRedirect(request.getContextPath() + "/index.jsp");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session.getAttribute("s1") == null){
			response.sendRedirect("login.jsp");
		}
		String requestUri = request.getRequestURI();
		System.out.println("Request URI: "+requestUri);
		if(requestUri.contains("add")){
			String companyId = (String)session.getAttribute("s1");
			long jobId = Long.parseLong(request.getParameter("jid"));
			String post = request.getParameter("post");
			String criteria = request.getParameter("criteria");
			int vacancies = Integer.parseInt(request.getParameter("vacancies"));
			long salary = Long.parseLong(request.getParameter("salary"));
			String expiryDate = request.getParameter("lastdate");

			Job job = new Job(jobId, post, criteria, vacancies, salary, expiryDate, companyId);
			CompanyService companyService = new CompanyServiceImpl();
			int createJob = companyService.createJob(job);

			if(createJob == 1){
//				RequestDispatcher rd = request.getRequestDispatcher("/CompanyHomePage.jsp");
//				rd.forward(request, response);
				response.sendRedirect(request.getContextPath() + "/CompanyHomePage.jsp");
			}
			else{
//				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//				rd.forward(request, response);
				response.sendRedirect(request.getContextPath() + "/index.jsp");
			}
		}
		else if(requestUri.contains("edit")){
			System.out.println("I am editing.");
			String companyId = (String)session.getAttribute("s1");
			long jobId = Long.parseLong(request.getParameter("jid"));
			String post = request.getParameter("post");
			String criteria = request.getParameter("criteria");
			int vacancies = Integer.parseInt(request.getParameter("vacancies"));
			long salary = Long.parseLong(request.getParameter("salary"));
			String expiryDate = request.getParameter("lastdate");

			Job job = new Job(jobId, post, criteria, vacancies, salary, expiryDate, companyId);
			CompanyService companyService = new CompanyServiceImpl();
			int editJob = companyService.updateJobById(job);
			if(editJob == 1){
//				RequestDispatcher rd = request.getRequestDispatcher(request.getContextPath() + "/ViewJobDetails.jsp");
//				rd.forward(request, response);
				response.sendRedirect(request.getContextPath() + "/ViewJobDetails.jsp");
			}else{
//				RequestDispatcher rd = request.getRequestDispatcher(request.getContextPath() + "/CompanyHomePage.jsp");
//				rd.forward(request, response);
				response.sendRedirect(request.getContextPath() + "/CompanyHomePage.jsp");
			}
		}
	}

}
