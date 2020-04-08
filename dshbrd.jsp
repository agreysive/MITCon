<%-- 
    Document   : dshbrd
    Created on : 20 Sep, 2018, 9:02:42 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        <link rel="stylesheet" type="text/css" href="dashcss1.css">
    </head>
    <body>
        <div class="sidenav">
            <a href="index.jsp">Homepage</a>
            <a href="about.html">About</a>
            <a href="#" currentitem="true">Dashboard</a>
            <a href="index.jsp#cnt">Contact</a>
            <a href="#contact">Edit your profile</a>
        </div>
        <div class="spacer">
            <a>Dashboard&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<%=request.getParameter("roll")%></a>
        </div>
        <div class="content">
            <h1>My Profile</h1>
            <div class="details">
                <form method="post" class="editform" action="http://localhost:8080/wbHome/svEdit"><%=request.getParameter("name")%>&emsp;&emsp;&emsp;&emsp;
                    &emsp;&emsp;&emsp;<input type="text"  name="roll" value=<%=request.getParameter("roll")%> readonly>
                    <input type="submit" class="edit" value="Edit your profile" 
                           name="Save"></form>
                    
                <p class="brch">Studying <%= request.getParameter("branch")%> from MIT-WPU</p>
                <p><%=request.getParameter("mail")%>&emsp;&emsp;&emsp;&emsp;
                    
                    <%=request.getParameter("phone")%>&emsp;&emsp;&emsp;<%=request.getParameter("dob")%></p>
                
            </div>
                    <div class="credit">
                        <div class="lab">
                            <p>You have earned <span class="two">500 credits</span><br>
                            Subscribe to our newsfeed for just<span class="two"> 200 credits</span>
                        </p>
                            </div>
                        <div class="sub">
                            <form method="post" action="#">
                                <input type="hidden" name="roll" value=<%=request.getParameter("roll")%>>
                            <input type="submit" class="subs" value="Subscribe" name="save">
                            </form>
                        </div>
                    </div>
                    <h3>Security </h3>
                    <div class="security">
                        <form method="post" name="sec" action="http://localhost:8080/wbHome/svSubs">
                            <a>Security Question</a>
                            <select class="secque" name="secque">
                                <option>What was your childhood nickname?</option>
                                <option>What is the name of your favorite childhood friend?</option>
                                <option>What is your favorite team?</option>
                                <option>What is your favorite movie?</option>
                            </select><br><br><br>
                            <input type="hidden" name="roll" value=<%=request.getParameter("roll")%>>
                            <input type="text" name="secans" placeholder="Enter Security Ans" required>&emsp;&emsp;
                            <input type="submit" value="Save" name="save" class="save">&emsp;&emsp;&emsp;&emsp;
                            
                        </form>
                    </div>
                    
        </div>
    </body>
</html>
