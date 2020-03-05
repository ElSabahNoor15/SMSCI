package com.SMSCI.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.SMSCI.model.Candidate;
import com.SMSCI.service.CandidateService;



public class CandidateController {
	
	@Autowired
	CandidateService candidateService;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView Dashboard() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("CandidateRegistration");
		return mav;
	 }
	
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public ModelAndView registerUser(HttpServletRequest request,HttpServletResponse response, @RequestParam("file") MultipartFile files[]) throws ParseException{
		
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd"); 
		
		String candidateid = request.getParameter("candidateid");
		String fullname = request.getParameter("fullname");
		String gender = request.getParameter("gender");
		Date dob=formatter.parse(request.getParameter("dob"));
		String email = request.getParameter("email");
		String contactno = request.getParameter("contactno");
		String lastqualification = request.getParameter("lastqualification");
		String course = request.getParameter("course");
		String photo = request.getParameter("photo");
		String dobproof = request.getParameter("dobproof");
		String adharno = request.getParameter("adharno");
		String adharproof = request.getParameter("adharproof");
		String voterno = request.getParameter("voterno");
		String voterproof = request.getParameter("voterproof");
		
		Candidate candidate =new Candidate();
		candidate.setCandidateId(candidateid);
		candidate.setFullName(fullname);
		candidate.setGender(gender);
		candidate.setDob(dob);
		candidate.setEmail(email);
		candidate.setContactNumber(contactno);
		candidate.setLastQualification(lastqualification);
		candidate.setCourse(course);
		candidate.setPhoto(photo);
		candidate.setDobProof(dobproof);
		candidate.setAdharNo(adharno);
		candidate.setAdharProof(adharproof);
		candidate.setVoterNo(voterno);
		candidate.setVoterProof(voterproof);
		
		candidateid = candidate.getCandidateId();
			for (int i = 0; i < files.length; i++) {
				
				String filename="";
				if(i==0)
					{filename=(candidateid+i)+".jpg";}
				else if(i==1)
						{filename=(candidateid+i)+".jpg";}
				else if(i==2)
						{filename=(candidateid+i)+".jpg";}
				else if(i==3)
						{filename=(candidateid+i)+".jpg";}
				MultipartFile file = files[i];
				try {
					byte[] bytes = file.getBytes();

					// Creating the directory to store file
					String rootPath = System.getProperty("catalina.home");
					File dir = new File(rootPath + File.separator + "tmpFiles");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir.getAbsolutePath()+ File.separator + filename);
					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();
					if(i==0)
						candidate.setPhoto(filename);
					else if(i==1)
						candidate.setDobProof(filename);
					else if(i==2)
						candidate.setAdharProof(filename);
					else if(i==3)
						candidate.setVoterProof(filename);
					
					
					System.out.println("Server File Location="+ serverFile.getAbsolutePath());
					} catch (Exception e) {
					System.out.println( "You failed to upload " + (candidateid+i) + " => " + e.getMessage());
				}
			}  
		
		boolean flag=candidateService.registerCandidate(candidate);
		
		ModelAndView mav=new ModelAndView();
		if(flag)
			mav.setViewName("Success");
			else
			
			mav.setViewName("CandidateRegistration");
			
		return mav;
		

	}
/*	@RequestMapping(value = "/registerProcess2", method = RequestMethod.POST)
	  public ModelAndView addUser2(HttpServletRequest request, HttpServletResponse response,  @ModelAttribute("user") User user, @RequestParam("file") MultipartFile files[]) {
		  String username = user.getUsername();
			for (int i = 0; i < files.length; i++) {
				
				String filename="";
				if(i==0)
					filename=(username+i)+".pdf";
					else if(i==1)
						filename=(username+i)+".pdf";
					else if(i==2)
						filename=(username+i)+".jpg";
				MultipartFile file = files[i];
				try {
					byte[] bytes = file.getBytes();

					// Creating the directory to store file
					String rootPath = System.getProperty("catalina.home");
					File dir = new File(rootPath + File.separator + "tmpFiles");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir.getAbsolutePath()+ File.separator + filename);
					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();
					
					if(i==0)
                  user.setAddress_fname(filename);
					else if(i==1)
						user.setDob_fname(filename);
					else if(i==2)
						user.setImage(filename);
					user.setStatus("N");
					
					System.out.println("Server File Location="+ serverFile.getAbsolutePath());
					} catch (Exception e) {
					System.out.println( "You failed to upload " + (username+i) + " => " + e.getMessage());
				}
			}  
		  
		boolean flag=userService.register(user);
	    if(flag) {
	    ModelAndView mav = new ModelAndView("login");
	    mav.addObject("login", new User());
	    return mav;
	    }
	    else {
	    	ModelAndView mav = new ModelAndView("register");
	        mav.addObject("user", new User());
	        mav.addObject("status","Sorry! Registration in incomplete");
	        return mav;	
	    }
	  }*/
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	  public ModelAndView changepwd1(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("index");
	    return mav;
	  }*/

}