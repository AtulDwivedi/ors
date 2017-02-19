package com.atuldwivedi.ors.presentation.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.atuldwivedi.ors.dao.util.ConnectionProvider;
import com.atuldwivedi.ors.model.Exam;
import com.atuldwivedi.ors.service.impl.CompanyServiceImpl;
import com.atuldwivedi.ors.service.services.CompanyService;

/**
 * Servlet implementation class ExamServlet
 */
@WebServlet("/ExamServlet/*")
public class ExamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ExamServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session == null || session.getAttribute("s1") == null){
			response.sendRedirect("login.jsp");
		}
		String requestUri = request.getRequestURI();
		System.out.println("Request URI: "+requestUri);
		if(requestUri.contains("create")){
			CompanyService companyService = new CompanyServiceImpl();
			List<Long> jobIds = companyService.getJobIdsOfExamsForCompany((String)session.getAttribute("s1"));
			request.setAttribute("jobIds", jobIds);
			
			request.getRequestDispatcher("../ExamCreation.jsp").forward(request, response);
		}
		else if(requestUri.contains("view")){
			CompanyService companyService = new CompanyServiceImpl();
			List<Long> jobIds = companyService.getJobIdsOfExamsForCompany((String)session.getAttribute("s1"));
			request.setAttribute("jobIds", jobIds);
			List<Exam> exams = companyService.getExamsByJobIdAndCompanyId(0, (String)session.getAttribute("s1"));
			request.setAttribute("exams", exams);
			request.getRequestDispatcher("../ExamView.jsp").forward(request, response);
		}
		else if(requestUri.contains("delete")){
			CompanyService companyService = new CompanyServiceImpl();
			companyService.deleteExamByExamIdAdnCompanyId(Long.parseLong(request.getParameter("examId")), (String)session.getAttribute("s1"));
			List<Long> jobIds = companyService.getJobIdsOfExamsForCompany((String)session.getAttribute("s1"));
			request.setAttribute("jobIds", jobIds);
			List<Exam> exams = companyService.getExamsByJobIdAndCompanyId(0, (String)session.getAttribute("s1"));
			request.setAttribute("exams", exams);
			request.getRequestDispatcher("../ExamView.jsp").forward(request, response);
		}
		else if(requestUri.contains("show-edit")){
			String jobId = request.getParameter("jobId");
			String examId = request.getParameter("examId");
			response.sendRedirect(request.getContextPath() + "/EditExam.jsp?jobId="+jobId+"&examId="+examId);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		if(session == null || session.getAttribute("s1") == null){
			response.sendRedirect("login .jsp");
		}
		
		String requestUri = request.getRequestURI();
		System.out.println("Request URI: "+requestUri);
		
		if(requestUri.contains("add")){
			CompanyService companyService = new CompanyServiceImpl();
			Exam exam = new Exam(Long.parseLong(request.getParameter("jobId")), 
					request.getParameter("post"), 
					Long.parseLong(request.getParameter("eid")), 
					request.getParameter("ename"), 
					Double.parseDouble(request.getParameter("coff")), 
					(String)session.getAttribute("s1"));
			System.out.println(exam);
			int i = companyService.addExam(exam);
			System.out.println(i);
			List<Exam> exams = companyService.getExamsByJobIdAndCompanyId(exam.getJobId(),(String)session.getAttribute("s1"));
			request.setAttribute("exams", exams);

//			response.sendRedirect(request.getContextPath() + "/ExamView.jsp");
			response.sendRedirect(request.getContextPath() + "/ExamServlet/view");
//						request.getRequestDispatcher("../../ExamView.jsp").forward(request, response);
		}
		else if(requestUri.contains("edit")){
			Exam exam = new Exam(Long.parseLong(request.getParameter("jobId")), 
					request.getParameter("post"), 
					Long.parseLong(request.getParameter("examId")), 
							request.getParameter("examName"), 
					Double.parseDouble(request.getParameter("cutOff")), 
					(String)session.getAttribute("s1"));
			
			CompanyService companyService = new CompanyServiceImpl();
			companyService.editExam(exam);
			response.sendRedirect(request.getContextPath() + "/ExamView.jsp");
		}
	}

}
