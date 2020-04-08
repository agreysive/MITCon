<%-- 
    Document   : newjsp
    Created on : 1 Sep, 2018, 11:13:20 PM
    Author     : user
--%>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" type="text/css" href="css.css">
    </head>
    
    <body>
        <div class="login-box">
            <img src="send-group.png" class="send">
            <h1>Login here</h1>
            <form method="post" action="http://localhost:8080/wbHome/dash" onsubmit="return Validate()" name="vform">
                <p>User_ID</p>
                <input type="text" name="username" placeholder="Enter Roll no.">
                <p>Password</p>
                <input type="password" name="password" placeholder="Enter Password">
                <input type="submit" name="submit" value="Login">
                
                
            </form>
            <form method="post" action="http://localhost:8080/wbHome/svFor" onsubmit="return forgot()" name="tform">
                <input type="hidden" name="username">
                <input type="submit" name="submit" value="Forgot password">
                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
                <a href="home.jsp" name="sgnup">Sign up</a>
            </form>
        </div>
        
    </body>
</html>
<script type="text/javascript">
    var usernam= document.forms["vform"]["username"];
    var pass= document.forms["vform"]["password"];
    
    function Validate(){
        if(usernam.value==""){
            alert("Username cannot be empty");
            usernam.focus();
            return false;
        }
        else if(pass.value==""){
            alert("Password cannot be empty");
            pass.focus();
            return false;
        }
        else if(usernam.value.length<5||pass.value.length<5){
            alert("Values should be more than 5 characters");
            return false;
        }
        if(pass.value.length>5){
                            var re=/[0-9]/;
                            if(!(pass.value.match(re))){
                                alert("The Password must contain at least 1 Capital,1 Small and 1 numerical Digit");
                                return false;
                            }
                            var re1=/[a-z]/;
                            if(!(pass.value.match(re))){
                                alert("The Password must contain at least 1 Capital,1 Small and 1 numerical Digit");
                                return false;
                            }
                            var re2=/[A-Z]/;
                            if(!(pass.value.match(re2))){
                                alert("The Password must contain at least 1 Capital,1 Small and 1 numerical Digit");
                                return false;
                            }
                            return true;
        }
        
    }
    var modal = document.getElementById('id01');
function forgot(){
    var usernam= document.forms["vform"]["username"];
    var uid=document.forms["tform"]["username"];
    if(usernam.value==""){
            alert("Username cannot be empty");
            usernam.focus();
            return false;
        }
        uid.value=usernam.value;
}
// When the user clicks anywhere outside of the modal, close it

</script>