package com.SMSCI.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SMSCI.dao.CandidateDao;
import com.SMSCI.model.Candidate;


@Service("candidateService")
public class CandidateServiceImpl implements CandidateService{
	
	@Autowired
	CandidateDao candidateDao; 
	
	
	@Transactional
	public boolean registerCandidate(Candidate candidate) {
	return candidateDao.registerCandidate(candidate);
}
}
