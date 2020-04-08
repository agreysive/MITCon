<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Edit Profile Page</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <style>
      body{
          background: url(2.jpg);
      }
      </style>
</head>
<body>
  <div class="container-fluid">
    <div class="container bootstrap snippet">
        <div class="row justify-content-center">
          <div class="col-sm-4"><!--LEFT-->
            <div class="text-center">
              <img src="av.png" alt="" class="avatar rounded-circle img-thumbnail">
              <h6>Upload Photo...</h6>
              <form method="post" action="http://localhost:8080/wbHome/svPics" enctype="multipart/form-data">
              <input type="file" class="text-center center-block file-upload" accept="image/*" name="file">
              <input type="hidden" class="form-control" name="rn" id="rn" value=<%=request.getParameter("roll")%> >
              <input type="submit" class="sub">
              </form>
            </div>
            <hr><br>
            <!--Pannels-->
            <div class="card">
              <div class="card-header">
                <i class="fa fa-link fa-1x"><b>Logged In As</b></i>
              </div>
              <div class="card-body">
                <%=request.getParameter("name")%><br>
                <%=request.getParameter("roll")%><br>
                 MIT-WPU<br>
                <%=request.getParameter("branch")%> <br>
              </div>
            </div>
          </div>
          <!--END LEFT-->

          <div class="col-sm-5">
            <ul class="nav nav-tabs" role="tablist">
              <li class="nav-item"><a class="nav-link active" id="Basic-tab" data-toggle="tab" href="#Basic" role="tab" aria-controls="Basic" aria-selected="true">Basic</a></li>
              <li class="nav-item"><a class="nav-link" id="Academic-tab" data-toggle="tab" href="#Academic" role="tab" aria-controls="Academic" aria-selected="false">Academic</a></li>
              <li class="nav-item"><a class="nav-link" id="Creds-tab" data-toggle="tab" href="#Creds" role="tab" aria-controls="Creds" aria-selected="false">Credentials</a></li>
            </ul>

            <div class="tab-content">
              <div class="tab-pane fade show active" id="Basic" role="tabpanel" aria-labelledby="Basic-tab">
                <hr>
                <form action="http://localhost:8080/wbHome/svEdit" method="post" class="form">
                    <div class="form-group">
                    <div class="col-xs-6">
                      <label for="rn"><h5>Roll No.</h5></label>
                      <input type="text" class="form-control" name="rn" id="rn" value=<%=request.getParameter("roll")%> readonly>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-xs-6">
                      <label for="fn"><h5>Name</h5></label>
                      <input type="text" class="form-control" name="name" id="fn" value=<%=request.getParameter("name")%>>
                    </div>
                  </div>
                    <input type="hidden" name="roll" value=<%=request.getParameter("roll")%>>
                  <div class="form-group">
                    <div class="col-xs-6">
                      <label for="ph"><h5>Phone</h5></label>
                      <input type="text" class="form-control" name="ph" id="ph" value=<%=request.getParameter("phone")%>>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-xs-6">
                      <label for="em"><h5>Email</h5></label>
                      <input type="text" class="form-control" name="em" id="em" value=<%=request.getParameter("mail")%>>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-xs-12">
                      <br>
                      <input class="btn btn-lg btn-success" type="submit" value="Save" name="Save">
                      
                      <button class="btn btn-lg btn-dark" type="reset" onclick="return goBack()">Cancel
                      </button>
                    </div>
                  </div>
                </form>
              </div>
              <!--Basic End-->

              <div class="tab-pane fade" id="Academic" role="tabpanel" aria-labelledby="Academic-tab">
                <hr>
                <form action="http://localhost:8080/wbHome/svEdit" method="post" class="form">
                  <div class="form-group">
                    <div class="col-xs-6">
                      <label for="rn"><h5>Roll No.</h5></label>
                      <input type="text" class="form-control" name="rn" id="rn" value=<%=request.getParameter("roll")%> readonly>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-xs-6">
                      <label for="ay"><h5>Admission Year</h5></label>
                      <input type="text" class="form-control" name="ay" id="ay" value=<%=request.getParameter("year")%> readonly>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-xs-6">
                      <label for="cl"><h5>Class</h5></label>
                      <input type="text" class="form-control" name="cl" id="cl" value=<%=request.getParameter("class")%>>
                    </div>
                  </div>
                    <input type="hidden" name="roll" value=<%=request.getParameter("roll")%>>
                  <div class="form-group">
                    <div class="col-xs-6">
                      <label for="br"><h5>Branch</h5></label>
                      <input type="text" class="form-control" name="br" id="br" value=<%=request.getParameter("branch")%>>
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <div class="col-xs-12">
                      <br>
                      <input class="btn btn-lg btn-success" type="submit" name="Save" value="Update">
                      
                      <button class="btn btn-lg btn-dark" type="reset" onclick="return goBack()">Cancel
                      </button>
                    </div>
                  </div>
                </form>
              </div>
              <!--Academic End-->

              <div class="tab-pane fade" id="Creds" role="tabpanel" aria-labelledby="Creds-tab">
                <hr>
                <form action="http://localhost:8080/wbHome/svEdit" method="post" class="form">
                  <div class="form-group">
                    <div class="col-xs-6">
                      <label for="oldPass"><h5>Old Password</h5></label>
                      <input type="text" class="form-control" name="oldPass" id="oldPass" placeholder="">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-xs-6">
                      <label for="newPass"><h5>New Password</h5></label>
                      <input type="password" class="form-control" name="newPass" id="newPass" placeholder="">
                    </div>
                  </div>
                    <input type="hidden" name="roll" value=<%=request.getParameter("roll")%>>
                  <div class="form-group">
                    <div class="col-xs-6">
                      <label for="verify"><h5>Verify New Password</h5></label>
                      <input type="password" class="form-control" name="verify" id="verify" placeholder="">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-xs-12">
                      <br>
                      <input class="btn btn-lg btn-success" type="submit" value="Change">
                      
                      <button class="btn btn-lg btn-dark" type="reset" onclick="return goBack()">Cancel
                      </button>
                    </div>
                  </div>
                </form>
              </div>
              <!--End Creds-->

            </div>
          </div><!--End RIGHT-->

        </div>


      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <script type="text/javascript" src="bootstrap.js"></script>
</body>
</html>
<script type="text/javascript">
    function goBack(){
        window.history.back();
    }
    </script>