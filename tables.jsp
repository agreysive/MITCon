
<%@ page import="java.sql.*" %>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TABLES.JSP TEST PAGE</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="tables.css">
  </head>

  <body>
        <%
        Class.forName("com.mysql.jdbc.Driver");
                Connection conn = null;
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/stud","root","tiger");
                Statement stm = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        %>
  	<br><br>
  	<div class="jumbotron">
  		<br>
      <section class="row">
        <div class="center">
          <a href="#" class="btn btn-outline-dark btn-space">Home</a>
          <a href="#" class="btn btn-outline-danger btn-space">Logout</a>
          <a href="addPost.jsp" class="btn btn-outline-dark btn-space">Add Post</a>
        </div>
      </section>

  		<br>
  			<div class="container inpt-bar">
  				<div class="input-group mb-3">
  					<input type="text" class="form-control" placeholder="Enter Query To Execute" aria-label="Recipient's username" aria-describedby="button-addon2">
  						<div class="input-group-append">
  							<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Execute</button>
  						</div>
  				</div>
  			</div>

  		<br>
      <nav>
        <div class="nav nav-tabs nav-pills justify-content-center" id="nav-tab" role="tablist">
          <a class="nav-item nav-link active" id="nav-table1-tab" data-toggle="tab" href="#nav-table1" role="tab" aria-controls="nav-table1" aria-selected="true">Details</a>
          <a class="nav-item nav-link" id="nav-table2-tab" data-toggle="tab" href="#nav-table2" role="tab" aria-controls="nav-table2" aria-selected="false">Security</a>
          <a class="nav-item nav-link" id="nav-table3-tab" data-toggle="tab" href="#nav-table3" role="tab" aria-controls="nav-table3" aria-selected="false">Subscribers</a>
          <a class="nav-item nav-link" id="nav-table3-tab" data-toggle="tab" href="#nav-table4" role="tab" aria-controls="nav-table4" aria-selected="false">Backup </a>
          
        </div>
      </nav>
      <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="nav-table1" role="tabpanel" aria-labelledby="nav-table1-tab">
          <br>
          <div class="table-responsive">
      	    <table class="table table-striped table-bordered">
      	      <thead class="thead-dark">
      	        <tr>
      	          <th scope="col">UserID</th>
      	          <th scope="col">Name</th>
      	          <th scope="col">Branch</th>
      	          <th scope="col">Email</th>
      						<th scope="col">Phone</th>
      	        </tr>
      	      </thead>
      	      <tbody>
                  <%
                
                String query = "select * from stud_det";
                ResultSet rs = null;
                rs = stm.executeQuery(query);
                while(rs.next()){
             %>
      	         <tr>
                     <%
                 int roll = rs.getInt("stud_id");
                 String name = rs.getString("name");
                 String branch = rs.getString("branch");
                 String email = rs.getString("email");
                 String phone = rs.getString("phone");
                 
               %>
      	           <td><%=roll%></td>
      	           <td><%=name%></td>
      	           <td><%=branch%></td>
      	           <td><%=email%></td>
      						 <td><%=phone%></td>
      	         </tr>
                 <%}%>
      	      </tbody>
      	    </table>
      		</div><!--Table End-->
        </div><!--1st Pane End-->

        <div class="tab-pane fade" id="nav-table2" role="tabpanel" aria-labelledby="nav-table2-tab">
          <br>
          <div class="table-responsive">
      	    <table class="table table-striped table-bordered">
      	      <thead class="thead-dark">
      	        <tr>
      	          <th scope="col">UserID</th>
      	          <th scope="col">Credits</th>
      	          <th scope="col">Class</th>
      	        </tr>
      	      </thead>
      	      <tbody>
                  <%
                 query = "select * from security";
                 rs = null;
                rs = stm.executeQuery(query);
                while(rs.next()){
                     %>
      	         <tr>
                     <%
                 int roll = rs.getInt("id");
                 
                 String creds = rs.getString("creds");
                 String clas= rs.getString("class");
               %>
      	           <td><%=roll%></td>
      	           <td><%=creds%></td>
      	           <td><%=clas%></td>
      	           
      	         </tr>
      		<%}%>
      	      </tbody>
      	    </table>
      		</div><!--Table End-->
        </div><!--2nd Pane End-->
        <div class="tab-pane fade" id="nav-table3" role="tabpanel" aria-labelledby="nav-table3-tab">
          <br>
          <div class="table-responsive">
      	    <table class="table table-striped table-bordered">
      	      <thead class="thead-dark">
      	        <tr>
      	          <th scope="col">UserID</th>
      	          <th scope="col">Email</th>
                    <th scope="col">Name</th>
      	        </tr>
      	      </thead>
      	      <tbody>
                  <%
                 query = "select * from subscribers";
                 rs = null;
                rs = stm.executeQuery(query);
                while(rs.next()){
                     %>
      	         <tr>
                     <%
                 int roll = rs.getInt("id");
                 
                 String mail = rs.getString("email");
                 String sname= rs.getString("sname");
               %>
      	           <td><%=roll%></td>
      	           <td><%=mail%></td>
      	           <td><%=sname%></td>
      	           
      	         </tr>
      			<%}%>
      	      </tbody>
      	    </table>
      		</div><!--Table End-->
        </div><!--3rd Pane End-->
        <div class="tab-pane fade show" id="nav-table4" role="tabpanel" aria-labelledby="nav-table4-tab">
          <br>
          <div class="table-responsive">
      	    <table class="table table-striped table-bordered">
      	      <thead class="thead-dark">
      	        <tr>
      	          <th scope="col">UserId</th>
      	          <th scope="col">Creds</th>
      	          <th scope="col">Class</th>
      	        </tr>
      	      </thead>
      	      <tbody>
                  <%
                 query = "select * from oldsec";
                 rs = null;
                rs = stm.executeQuery(query);
                while(rs.next()){
                     %>
      	         <tr>
                     <%
                 int roll = rs.getInt("id");
                 
                 String creds = rs.getString("creds");
                 String clas= rs.getString("class");
               %>
      	           <td><%=roll%></td>
      	           <td><%=creds%></td>
      	           <td><%=clas%></td>
      	           
      	         </tr>
      		<%}%>
      	      </tbody>
      	    </table>
      		</div><!--Table End-->
        </div><!--4th Pane End-->

      </div><!--End Contents>-->
  	</div><!--Jumbotron End-->

      <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>
