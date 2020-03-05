<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <script src='https://kit.fontawesome.com/a076d05399.js'></script> -->
<title>SignUp form</title>
<!-- <style>
.error{
    color: crimson;
}
body {
 		 background-image: url('./resources/img/pencil.jpg'); 
       /*  background-color: pink; */
        font-family: 'Ubuntu', sans-serif;
    }
    
    .main {
        background-color: #FFFFFF;
        width: 620px;
/*         height: 700px; */
        margin: 1em auto;
        border-radius: 1.5em;
		padding:15px;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    }
    
    .sign {
        padding-top: 15px;
		
        color: #8C55AA;
        font-family: 'Ubuntu', sans-serif;
        font-weight: bold;
        font-size: 23px;
    }
    
    .un {
    width: 95%;
    color: rgb(38, 50, 96);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(166, 126, 186, 0.15);
    padding: 12px 10px 8px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    
    margin-left: 8px;
    text-align: center;
    margin-bottom: 10px;
    font-family: 'Ubuntu', sans-serif;
    }
    
    form.form1 {
        padding-top: 5	px;
    }
    
    .pass {
            width: 95%;
    color: rgb(38, 50, 96);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(166, 126, 186, 0.15);
    padding: 12px 10px 8px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    
    margin-left: 8px;
    text-align: center;
    margin-bottom: 10px;
    font-family: 'Ubuntu', sans-serif;
    
    }
    
   
    .un:focus, .pass:focus {
        border: 2px solid rgba(0, 0, 0, 0.18) !important;
        
    }
	.login {
      cursor: pointer;
        border-radius: 5em;
        color: #fff;
        background: linear-gradient(to right, #32CD32, #008000);
        border: 0;
        padding-left: 50px;
        padding-right: 40px;
        padding-bottom: 10px;
        padding-top: 10px;
        font-family: 'Ubuntu', sans-serif;
        margin-left: 15%;
        font-size: 15px;
        box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
    }
    
    .submit {
      cursor: pointer;
        border-radius: 5em;
        color: #fff;
        background: linear-gradient(to right, #9C27B0, #E040FB);
        border: 0;
        padding-left: 50px;
        padding-right: 40px;
        padding-bottom: 10px;
        padding-top: 10px;
        font-family: 'Ubuntu', sans-serif;
        margin-left: 50%;
        font-size: 15px;
        box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
    }
    
    .forgot {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #E1BEE7;
        padding-top: 15px;
    }
    
    a {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #E1BEE7;
        text-decoration: none
    }
    
    @media (max-width: 600px) {
        .main {
            border-radius: 0px;
        }
        }
    .tooltip {        
     position: relative;
     bottom:40px; 
     left:10px;
     display: inline;
     font-size:12px;
     /* border-bottom: 1px dotted black; */
     }
     .tooltip .tooltiptext {
    visibility: hidden;
    height:50px;
    width: 250px;
  	background-color: #555;
  	color: #fff;
  	text-align: center;
  	border-radius: 20px;
  	padding: 5px 0;
  	position: absolute;
  	z-index: 1;
  	bottom: 125%;
  	left: 50%;
  margin-left: -60px;
  opacity: 0;
  transition: opacity 0.3s;
}
     .tooltip .tooltiptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}
.tooltip:hover .tooltiptext {
  visibility: visible;
  opacity: 1;
}


</style>
 -->

    
    <!-- <script>


     function valid()
     {
         var candidateid=document.getElementById('candidateid').value;
         var fullname=document.getElementById('fullname').value;
         var gender=document.getElementById('gender').value;
         var dob=document.getElementById('dob').value;
         var email=document.getElementById('email').value;
         var contactno=document.getElementById('contactno').value;
         var lastqualification=document.getElementById('lastqualification').value;
         var course=document.getElementById('course').value;
         var photo=document.getElementById('photo').value;
         var dobproof=document.getElementById('dobproof').value;
        /*  var adharno=document.getElementById('adharno').value;
         var adharproof=document.getElementById('adharproof').value;
         var voter_no=document.getElementById('voter_no').value;
         var voter_proof=document.getElementById('voter_proof').value; */
         
         
         var id1=document.getElementById('id1');
         var id2=document.getElementById('id2');
         var id3=document.getElementById('id3');
         var id4=document.getElementById('id4');
         var id5=document.getElementById('id5');
         var id6=document.getElementById('id6');
         var id7=document.getElementById('id7');
         var id8=document.getElementById('id8');
         var id9=document.getElementById('id9');
         var id10=document.getElementById('id10');
         /* var id11=document.getElementById('id11');
         var id12=document.getElementById('id12'); */
         
         var cidregex=/^[A-Za-z0-9]{5,}$/;
         var fnameregex=/^[A-Z a-z ]{6,}$/;
         var emailregex=/^[a-z0-9]{6,}[@]{1}[a-z]{4,}[.][a-z]{2,}$/;
         var conregex=/^[+]{1}[9]{1}[1]{1}[-]{1}[0-9]{10}$/;
         
         
         var flag=true;
         id1.innerHTML='';
         id2.innerHTML='';
         id3.innerHTML='';
         id4.innerHTML='';
         id5.innerHTML='';
         id6.innerHTML='';
         id7.innerHTML='';
         id8.innerHTML='';
         id9.innerHTML='';
         id10.innerHTML='';
         /* id11.innerHTML='';
         id12.innerHTML=''; */

         //Candidate Id 1
         if(candidateid=='')
         {
            id1.innerHTML='Please fill Candidate Id';
            flag=false;

         }
         else
           if(cidregex.test(candidateid)==false)
        {
          id1.innerHTML="Improper Id";
          
          flag=false;

        }

        //Full name 2

        if(fullname=='')
         {
            id2.innerHTML='Please fill full name';
            flag=false;
         }
        else
         if(fnameregex.test(fullname)==false)
        {
          id2.innerHTML="Please fill correct first name";
          
          flag=false;

        }
        
        //gender 3
        //date of birth 4
         if(dob=='')
         {
            id4.innerHTML='Please fill Date Of Birth';
            flag=false;
         }
        else{
         var date1=new Date();
         var date2=new Date(dob);
         if(date1.getFullYear()-date2.getFullYear()<10)
         {   
			id4.innerHTML="AGE SHOULD BE 10 YEARS";
			flag=false;
		}
		}
        //email 5
        if(email=='')
         {
            id5.innerHTML='Please fill your email';
            flag=false;
         }
        else
         if(emailregex.test(email)==false)
        {
          id5.innerHTML="Please fill correct email";
          
          flag=false;

        }
     
        
        //phone 6 
        if(contactno=='')
         {
            id6.innerHTML='plz fill mobile number';
            flag=false;
         }
        else
         if(conregex.test(contactno)==false)
        {
          id6.innerHTML="plz fill correct mobile number";
         
          flag=false;

        }
        //last qualification 7
        if(lastqualification=='')
         {
            id7.innerHTML='Please fill Qualification';
            flag=false;
         }
        //course 8
        if(course=='')
         {
            id8.innerHTML='Please fill course';
            flag=false;
         }
        //photo 9
        if(photo=='')
         {
            id9.innerHTML='Please upload Photo';
            flag=false;
         }
        //dobproof 10
        if(dobproof=='')
         {
            id10.innerHTML='Please upload Date of Birth Proof';
            flag=false;
         }
        /* if (flag) {
            document.forms['Registration Form'].submit();
        } */
        return flag;
    
     }     
        

    </script>
 -->
</head>
<body>
<!-- <div class="main">
    <p class="sign" align="center">Register Now</p>
<Form  class="form1" action="register.do" name="Registration Form" method="post" onsubmit="return valid()">

        <center>
			
            <table>
                <tr>
                    <th> Candidate id:</th>
                    <td> <input type="text"  class="un" placeholder="Candidate id" name='candidateid' id="candidateid"></input>
                    <div class="tooltip"><i style='font-size:24px' class='fas'>&#xf501;</i>
  			`		<span class="tooltiptext">Minimum 5 characters,upper case and lower case alphabets can be used.</span>
					</div>
                   <div id='id1' class="error"></div>
                  
                    </td>
                    </div>
                </tr>
                <tr>
                    <th>Full Name:</th>
                    <td> <input type="text"  class="un"  placeholder="Full Name" name='fullname' id="fullname"></input>
                    <div class="tooltip"><i style='font-size:24px' class='fas'>&#xf501;</i>
  			`		<span class="tooltiptext">minimum 4 characters,should be written in capital and small letters both</span>
					</div>
                    <div id='id2' class="error"></div> 
                    </td>
                </tr>
                
                <tr>
                    <th>Gender:</th>&nbsp &nbsp &nbsp
                    <td align="center"> 
                    <input type="radio" name="gender" value="male" checked>Male</input>
                    <input type="radio" name="gender" value="female" >Female</input><br>
                    <input type="radio" name="gender" value="other" >Others</input><br><br>
                    
                    </td>
                </tr>
                <tr>
                        <th> Date Of Birth:</th>
                        <td> <input type="date"  class="un"  name='dob'  id="dob"></input>
                        <div id='id4' class="error"></div>
                        </td>
                </tr>
                 <tr>
                        <th> Email id:</th>
                        <td> <input type="email"  class="un"  name='email'  placeholder="abcdefgh@gmail.com" id="email"></input>
                        <div class="tooltip"><i style='font-size:24px' class='fas'>&#xf501;</i>
  			`			<span class="tooltiptext">@ example: abcdef@abcd.abc or ab12cd@abcd.abc</span>
						</div>
                         <div id='id5' class="error"></div>
                        </td>
                </tr>
                
                <tr>
                        <th> Contact no.: </th>
                        <td> <input type="text"  class="un"   name='contactno'  id="contactno"></input>
                        <div class="tooltip"><i style='font-size:24px' class='fas'>&#xf501;</i>
  			`			<span class="tooltiptext">@ example: +91-1234567890</span>
						</div>
                        <div id='id6' class="error"></div> 
                        </td>
                </tr>
                <tr>
                    <th> Last Qualification:</th>
                    <td> <input type="text"  class="un" placeholder="lastqualification" name='lastqualification' id="lastqualification"></input>
                    <div class="tooltip"><i style='font-size:24px' class='fas'>&#xf501;</i>
  			`		<span class="tooltiptext">Please fillup your highest qualification</span>
					</div>
                   <div id='id7' class="error"></div>
                  
                    </td>
                    </div>
                </tr>
                <tr>
                    <th> Course:</th>
                    <td>  <select id="course" name="course">
  							<option value="basic">Tally Ace - Rs.7,000</option>
  							<option value="tallypro">Tally Pro - Rs.12,000</option>
  							<option value="tallyguru">Tally Guru - Rs.18,000</option>
  							<option value="gst">e-filling GST - Rs.7,000</option>
						  </select> 
                    <div class="tooltip"><i style='font-size:24px' class='fas'>&#xf501;</i>
  			`		<span class="tooltiptext">Courses with their Fees</span>
					</div>
                   <div id='id8' class="error"></div>
                  
                    </td>
                    </div>
                </tr>
                
             <tr>
				<th>Upload Profile Image:</th>
				<td><input type="file" name="photo" id="photo"></td>
				<div id='id9' class="error"></div>
			</tr>
			
            <tr>
				<th>Upload Date of Birth Proof:</th>
				<td><input type="file" name="dobproof" id="dobproof"></td>
				<div id='id10' class="error"></div>
			</tr>
			
			<tr>
                    <th> Adhar Number:</th>
                    <td> <input type="text"  class="un" placeholder="Adhar Number" name='adharno' id="adharno"></input>
                    <div class="tooltip"><i style='font-size:24px' class='fas'>&#xf501;</i>
  			`		<span class="tooltiptext">Enter 12 digit Adhar Number</span>
					</div>
                    </td>
                </tr>
                
                <tr>
				<th>Upload Adhar Card Proof:</th>
				<td><input type="file" name="adharproof" id="adharproof"></td>
				</tr>
				
                <tr>
                    <th> Voter Number:</th>
                    <td> <input type="text"  class="un" placeholder="Voter Number" name='voterno' id="voterno"></input>
                    <div class="tooltip"><i style='font-size:24px' class='fas'>&#xf501;</i>
  			`		<span class="tooltiptext">Enter 12 digit Voter Number</span>
					</div>
                    </td>
                </tr>
                
                <tr>
				<th>Upload Voter Card Proof:</th>
				<td><input type="file" name="voterproof" id="voterproof"></td>
				</tr>
				
                <tr>
                        <tr></tr>
						<tr></tr>
								
						<td colspan="1"><a href="login.do" class="login">Login</a></td>
						<td colspan="1">
                        <input type="submit" class="submit" align="center" value="Sign Up">
                        
                        <input type="reset" value='Clear'>
                        </td>
						
                </tr>
                
            </table>

        </center>
    </Form>
    </div> -->
    <h1>Hello this registration page</h1>
</body>
</html>