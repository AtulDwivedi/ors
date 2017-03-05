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
import com.atuldwivedi.ors.model.Candidate;

public class CandidateDaoImpl implements CandidateDao {

	Connection con;
	
	@Override
	public int insertCandidate(Candidate candidate) {
		int retVal = 0;
		
		try(PreparedStatement ps = con.prepareStatement("INSERT INTO studentregister VALUES()");){
			ps.setString(1, candidate.getUserName());
			ps.setString(2, candidate.getName());
			ps.setString(3, candidate.getGender());
			ps.setDate(4, (Date)new SimpleDateFormat("dd/MM/yyyy").parse(candidate.getDob()));
			ps.setString(5, candidate.getCollName());
			ps.setInt(6, Integer.parseInt(candidate.getTelephone()));
			ps.setString(7, candidate.getEmailId());
			ps.setString(8, candidate.getBranch());
			ps.setString(9, candidate.getMarks());
			ps.setString(10, candidate.getDegree());
			ps.setString(11, candidate.getAddress());
			ps.setString(12, candidate.getState());
			ps.setString(12, candidate.getPinCode());
			ps.setString(14, candidate.getCategory());
			
		
			


//			addr varchar2(100), 
//			states varchar2(20),
//			pincode number(6), 
//			category varchar2(20))

		} catch (SQLException | ParseException e) {
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
