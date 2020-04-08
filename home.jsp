<%-- 
    Document   : home
    Created on : 3 Sep, 2018, 8:55:41 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Homepage</title>
        <style>
            body{
                margin: 0;
                padding: 0;
                background: url(sgnbg.jpg);
                background-size: cover;
                background-position: absolute;
                font-family: sans-serif;
            }
            .sgn_up{
                width: 480px;
                height:860px;
                background: rgba(0,0,0,0.5);
                color:#fff;
                top:62%;
                left:50%;
                position: absolute;
                transform: translate(-50%,-50%);
                box-sizing: border-box;
                padding: 70px 30px;
            }
            .header{
                width:100px;
                height: 100px;
                position: absolute;
                top:20px;
                left: calc(50% - 50px);
            }
            h1{
                margin: 0;
                position: absolute;
                top:150px;
                left:30%;
                padding: 0 0 20px;
                text-align: center;
                font-size: 24px;
            }
            .sgn_up p{
                margin: 0;
                padding: 0;
                font-weight: bold;
                font-size: 20px;
            }   
            .sgn_up input{
               width: 100%;
               margin-bottom: 20px;
               
            }
            .sgn_up input[type="date"]{
                width: 50%;
            } 
            .select{
                width: 185px;
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                height: 40px;
                color:#fff;
                font-size:16px;
            }
            .sgn_up input[type="text"],input[type="password"],input[type="number"],input[type="date"]{
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                height: 40px;
                color:#fff;
                font-size:16px;
            }
            .sgn_up input[type="submit"]{
                border: none;
    outline: none;
    height: 40px;
    background: #898e84;
    color:black;
    font-size: 16px;
    border-radius: 20px;
            }
            .sgn_up input[type="submit"]:hover{
                cursor: pointer;
                background: #2c76e1;
                color:#a2ea2e;
            }
         
        </style>
    </head>
    <body>
        
        <div class="sgn_up">
                <img src="signup.png" class="header">
                <h1>Sign Up for free </h1>
                <br><br><br><br><br><br><br>
                <form method="post" action="http://localhost:8080/wbHome/svSgnUp" onsubmit="return Validate()" name="sgnform">
                    <p>Enter your Roll no.</p>    
                    <input type="number" name="roll" placeholder="Your Roll No." aria-describedby="roll-tip" required/>
                    <p>Enter your name</p>    
                    <input type="text" name="name" placeholder="Your name" aria-describedby="username-tip" required/>
                    <p>Enter your Email-Id</p>
                    <input type="text" name="email" placeholder="Your email" aria-describedby="email-tip" required/>
                    <p>Enter your phone number</p>
                    <input type="number" name="phone" placeholder="Your phone" aria-describedby="phone-tip" required/>
                    <p class="dob">Enter your DOB &emsp;&emsp;&emsp;&emsp;Branch</p>
                    <input type="date" name="dob" placeholder="Date of birth" aria-describedby="dob-tip" required/>&emsp;
                    
                    <select name="branch" class="select">
    <option value="CSE">CSE/IT</option>
    <option value="ECE">ECE</option>
    <option value="Civil">Civil</option>
    <option value="Mechanical">Mechanical</option>
  </select>
                    
                    <p>Enter your password</p>
                    <input type="password" name="pass" placeholder="New Password" aria-describedby="pass-tip" required/>
                    <p>Confirm your password</p>
                    <input type="password" name="copass" placeholder="Confirm Password" aria-describedby="pass-tip" required/>
                    <br>
                    <input type="submit" name="sub" value="Sign Up"/>
                    
                </form>
        </div>
        
        
    </body>
</html>
<script type="text/javascript">
    var id=document.forms["sgnform"]["roll"];
    var nam=document.forms["sgnform"]["name"];
    var email=document.forms["sgnform"]["email"];
    var numb=document.forms["sgnform"]["phone"];
    var dob=document.forms["sgnform"]["dob"];
    var pas=document.forms["sgnform"]["pass"];
    var copass=document.forms["sgnform"]["copass"];
    function Validate(){
        if(id.value.length==7){
            var namf=/^[A-Za-z+ +A-Za-z]+$/;
            if(nam.value.match(namf)){
                var emailf= /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                if(email.value.match(emailf)){
                    if(numb.value.length==10){
                        if(pas.value==copas.value&&pas.value.length>5){
                            var re=/[0-9]/;
                            if(!(pas.value.match(re))){
                                alert("The Password must contain at least 1 Capital,1 Small and 1 numerical Digit");
                                return false;
                            }
                            var re1=/[a-z]/;
                            if(!(pas.value.match(re))){
                                alert("The Password must contain at least 1 Capital,1 Small and 1 numerical Digit");
                                return false;
                            }
                            var re2=/[A-Z]/;
                            if(!(pas.value.match(re2))){
                                alert("The Password must contain at least 1 Capital,1 Small and 1 numerical Digit");
                                return false;
                            }
                            return true;
                        }
                        else{
                            alert("Check the Passwords and Confirm password values, Password length should be more than 5 digits");
                           pas.focus();
                            return false;
                        }
                    }
                    else{
                        alert("Please enter a valid 10 digit mobile number");
                        numb.focus();
                        return false;
                    }
                }
                else{
                    alert("Please enter a valid email address");
                    
                    email.focus();
                    return false;
                }
            }
            else{
                alert("Name field should not contain any numbers");
                
                return false;
            }
        }
        else{
            alert("roll number should be 7 digits long");
            return false;
        }
    }

</script>
    
    