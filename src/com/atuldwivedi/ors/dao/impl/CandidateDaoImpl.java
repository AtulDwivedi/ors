package com.atuldwivedi.ors.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import com.atuldwivedi.ors.dao.service.CandidateDao;
import com.atuldwivedi.ors.dao.util.ConnectionProvider;
import com.atuldwivedi.ors.model.Candidate;

public class CandidateDaoImpl implements CandidateDao {

	Connection con;
	
	@Override
	public int insertCandidate(Candidate candidate) {
		int retVal = 0;
		
		String insertCandidate = "INSERT INTO CANDIDATE VALUES(?,?,?,?,?)";
		String insertAddress = "";
		String insertContact = "INSERT INTO CONTACT VALUES(?,?,?,?,?)";
		String insertEducation = "";
		String insertExperience = "";
		
		try {
			Connection con =ConnectionProvider.getConnection();
			PreparedStatement psCand = con.prepareStatement(insertCandidate);
			PreparedStatement psContact = con.prepareStatement(insertContact);
						
			psCand.setString(1, candidate.getUserName());
			psCand.setString(2, candidate.getName());
			psCand.setString(3, candidate.getGender());
			psCand.setString(4, candidate.getDob());
			psCand.setBoolean(6, candidate.isExperienced());
			
			psCand.executeUpdate();
			
			psContact.setString(1, candidate.getUserName());
			psContact.setString(2, candidate.getContact().getEmailId());
			psContact.setLong(3, candidate.getContact().getMobileNumber());
			psContact.setLong(4, candidate.getContact().getLandLineNumber());
			psContact.setString(5, candidate.getContact().getContactType());
			retVal = psContact.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return retVal;
	}

	@Override
	public int updateCandidate(Candidate candidate) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteCandidate(Candidate candidate) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Candidate getCandidateByUserName(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Candidate> getCandidates() {
		// TODO Auto-generated method stub
		return null;
	}

}
