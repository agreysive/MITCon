
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<!-- Stylesheets -->
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/styledash.css">
	<!-- Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
	<!-- Scripts -->
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="js/menu_toggle.js"></script>
	<title>DASHBOARD</title>
</head>

<body>
	<i class="fa fa-bars toggle_menu"></i>

	<div class="sidebar_menu">
		<i class="fa fa-times"></i>
		<center>
			<a href="#"><h1 class="boxed_item"><%=request.getParameter("name")%><span class="logo_bold"></span></h1>
			
		</center>

		<ul class="navigation_section">
			<li class="navigation_item" id="profile">
				PROFILE
			</li>
			<li class="navigation_item" id="NEWSFEEDS" onclick=location.href="post.jsp">
				POSTS
			</li>
			<li class="navigation_item" id="HOME" onclick=location.href="index.jsp">
				HOME
			</li>
			<li class="navigation_item" id="ABOUT" onclick=location.href="about.html">
				ABOUT
			</li>
			<li class="navigation_item" id="CONTACT_US" onclick=location.href="index.jsp#cnt">
				CONTACT US
			</li>
			<li class="navigation_item" id="EDIT_PROFILE" onclick="return gedit()">
				EDIT PROFILE
			</li>

		</ul>

		<center>
			<a href="indexhtml.jsp"><h1 class="boxed_item boxed_item_smaller signup">
			<i class="fa fa-user"></i>
				LOGOUT
			</h1></a>
		</center>
	</div><!-- End of sidebar -->
        <%
            Class.forName("com.mysql.jdbc.Driver");
                Connection conn = null;
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/sakila","root","tiger");
                Statement stm = null;
                stm=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                stm.execute("use stud;");
                ResultSet rst=null;
                rst=stm.executeQuery("select * from security where id='"+request.getParameter("roll")+"';");
                rst.next();
                String creds=rst.getString("creds");
                boolean ena=true;
        %>
         <div class="content">
            <h1>My Profile</h1>
            <div class="details">
                <form method="post" class="editform" action="http://localhost:8080/wbHome/svEdit"><%=request.getParameter("name")%>&emsp;&emsp;&emsp;&emsp;
                    &emsp;&emsp;&emsp;<input type="text"  name="roll" value=<%=request.getParameter("roll")%> readonly>
                    <input type="submit" class="edit" value="Edit your profile" 
                           name="Save" id="ed"></form>
                    
                <p class="brch">Studying <%= request.getParameter("branch")%> from MIT-WPU</p>
                <p><%=request.getParameter("mail")%>&emsp;&emsp;&emsp;&emsp;
                    
                    <%=request.getParameter("phone")%>&emsp;&emsp;&emsp;<%=request.getParameter("dob")%></p>
                
            </div>
                    <div class="credit">
                        <div class="lab">
                            
                            <p>You have <span class="two"><%=creds%> credits</span><br>
                                <%if(Integer.parseInt(creds)>=500){
                                ena= false;
                                %>
                            Subscribe to our newsfeed for just<span class="two"> 200 credits</span>
                            <%}%>
                        </p>
                            </div>
                        <div class="sub">
                            <form method="post" action="http://localhost:8080/wbHome/svSubs">
                                <input type="hidden" name="roll" value=<%=request.getParameter("roll")%>>
                                <input type="submit" class="subs" value="Subscribe" name="save" id="subs">
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
	<script src="js/close_menu.js"></script>
        <script type="text/javascript">
            function gedit(){
                var loglnk=document.getElementById('ed');
                loglnk.click();
            }
            var sub=document.getElementById('subs');
            sub.disabled=<%=ena%>;
        </script>
</body>
</html>