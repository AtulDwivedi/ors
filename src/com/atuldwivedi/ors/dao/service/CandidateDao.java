package com.atuldwivedi.ors.dao.service;

import java.util.List;

import com.atuldwivedi.ors.model.Candidate;

public interface CandidateDao {
	
	public int insertCandidate(Candidate candidate);
	
	public int updateCandidate(Candidate candidate);
	
	public int deleteCandidate(Candidate candidate);
	
	public Candidate getCandidateByUserName(String userName);
	
	public List<Candidate> getCandidates();

}
