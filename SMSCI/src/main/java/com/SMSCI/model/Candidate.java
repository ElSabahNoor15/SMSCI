package com.SMSCI.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Candidate {

	
	
	@Id
	@Column(name="id")
	private String candidateId;
	@Column(name="full_name")
	private String fullName;
	private String gender;
	@Temporal(TemporalType.DATE)
	@Column(name="birth_date")
	private Date dob;
	private String email;
	@Column(name="contact_number")
	private String contactNumber;
	@Column(name="last_qualification")
	private String lastQualification;
	private String course;
	private String photo;
	@Column(name="dob_proof")
	private String dobProof;
	@Column(name="adhar_no")
	private String adharNo;
	@Column(name="adhar_proof")
	private String adharProof;
	@Column(name="voter_no")
	private String voterNo;
	@Column(name="voter_proof")
	private String voterProof;
	
	
	public Candidate() {
		super();
		
	}
	public String getCandidateId() {
		return candidateId;
	}
	public void setCandidateId(String candidateId) {
		this.candidateId = candidateId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getLastQualification() {
		return lastQualification;
	}
	public void setLastQualification(String lastQualification) {
		this.lastQualification = lastQualification;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getDobProof() {
		return dobProof;
	}
	public void setDobProof(String dobProof) {
		this.dobProof = dobProof;
	}
	public String getAdharNo() {
		return adharNo;
	}
	public void setAdharNo(String adharNo) {
		this.adharNo = adharNo;
	}
	public String getAdharProof() {
		return adharProof;
	}
	public void setAdharProof(String adharProof) {
		this.adharProof = adharProof;
	}
	public String getVoterNo() {
		return voterNo;
	}
	public void setVoterNo(String voterNo) {
		this.voterNo = voterNo;
	}
	public String getVoterProof() {
		return voterProof;
	}
	public void setVoterProof(String voterProof) {
		this.voterProof = voterProof;
	}
	@Override
	public String toString() {
		return "Candidate [candidateId=" + candidateId + ", fullName=" + fullName + ", gender=" + gender + ", dob="
				+ dob + ", email=" + email + ", contactNumber=" + contactNumber + ", lastQualification="
				+ lastQualification + ", course=" + course + ", photo=" + photo + ", dobProof=" + dobProof
				+ ", adharNo=" + adharNo + ", adharProof=" + adharProof + ", voterNo=" + voterNo + ", voterProof="
				+ voterProof + "]";
	}
	
	
	
}
