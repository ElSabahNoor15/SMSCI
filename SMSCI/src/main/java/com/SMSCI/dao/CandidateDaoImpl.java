package com.SMSCI.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.SMSCI.model.Candidate;


@Repository("candidateDao")
public class CandidateDaoImpl implements CandidateDao{
	@PersistenceContext
	EntityManager em;
	
	public boolean registerCandidate(Candidate candidate) 
	{
		boolean flag = false;
		try {
			em.persist(candidate);
			flag = true;
			}catch(Exception e){
				System.out.println("Error:"+e);
			}
		return flag;
	}

}
