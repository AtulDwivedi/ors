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
		
		String insertCandidate = "INSERT INTO CANDIDATE VALUES(?,?,?,?,?,?)";
		String insertAddress = "INSERT INTO ORS_ADDRESS VALUES(?,?,?,?,?,?,?,?)";
		String insertContact = "INSERT INTO CONTACT VALUES(?,?,?,?,?)";
		String insertEducation = "INSERT INTO ORS_EDUCATION VALUES(?,?,?,?,?,?)";
		String insertExperience = "INSERT INTO EXPERIENCE VALUES(?,?,?,?,?,?)";
		
		try {
			Connection con =ConnectionProvider.getConnection();
			PreparedStatement psCand = con.prepareStatement(insertCandidate);
			PreparedStatement psAddress = con.prepareStatement(insertAddress);
			PreparedStatement psContact = con.prepareStatement(insertContact);
			PreparedStatement psEducation = con.prepareStatement(insertEducation);
			PreparedStatement psExperience = con.prepareStatement(insertExperience);
						
			psCand.setString(1, candidate.getUserName());
			psCand.setString(2, candidate.getName());
			psCand.setString(3, candidate.getGender());
			psCand.setString(4, candidate.getDob());
			psCand.setString(5, "cand");
			psCand.setBoolean(6, candidate.isExperienced());
			psCand.executeUpdate();
			
			psAddress.setString(1, candidate.getAddress().getAddressLine1());
			psAddress.setString(2, candidate.getAddress().getAddressLine2());
			psAddress.setString(3, candidate.getAddress().getCity());
			psAddress.setString(4, candidate.getAddress().getState());
			psAddress.setString(5, candidate.getAddress().getCountry());
			psAddress.setInt(6, candidate.getAddress().getPinCode());
			psAddress.setString(7, candidate.getAddress().getLandMark());
			psAddress.setString(8, candidate.getAddress().getAddressType());
			psAddress.executeUpdate();
			
			psEducation.setString(1, candidate.getEducation().getCollegeName());
			psEducation.setString(2, candidate.getEducation().getBranch().trim());
			psEducation.setString(3, candidate.getEducation().getEducationLevel());
			psEducation.setInt(4, candidate.getEducation().getMarks());
			psEducation.setInt(5, candidate.getEducation().getStartYear());
			psEducation.setInt(6, candidate.getEducation().getEndYear());
			psEducation.executeUpdate();
			
			psContact.setString(1, candidate.getUserName());
			psContact.setString(2, candidate.getContact().getEmailId());
			psContact.setLong(3, candidate.getContact().getMobileNumber());
			psContact.setLong(4, candidate.getContact().getLandLineNumber());
			psContact.setString(5, candidate.getContact().getContactType());
			retVal = psContact.executeUpdate();
			
			psExperience.setString(1, candidate.getExperience().getCompanyName());
			psExperience.setString(2, candidate.getExperience().getDesignation());
			psExperience.setInt(3, candidate.getExperience().getStartYear());
			psExperience.setInt(4, candidate.getExperience().getEndYear());
			psExperience.setBoolean(5, candidate.getExperience().isPresentCompany());
			psExperience.setInt(6, candidate.getExperience().getTotalYearsOfExperience());
			psExperience.executeUpdate();
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
