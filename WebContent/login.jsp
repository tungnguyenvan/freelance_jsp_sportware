<%@page import="controller.UserController"%>
<%@page import="utils.Constracts"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
	boolean result = false;
	if(request.getParameter("login") != null){
		UserController mUserController = new UserController();
		Constracts.MYMODEL = mUserController.login(request.getParameter("email"), request.getParameter("password"));
		if (Constracts.MYMODEL != null) result = true;
	}
%>

<html lang="en">
  <head>
    <title>Shoppers &mdash; Colorlib e-Commerce Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">


    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body>
  
  <div class="site-wrap">
    <jsp:include page="header.jsp"></jsp:include>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2 class="h3 mb-3 text-black">Login</h2>
            <%
            if(request.getParameter("login") != null && result == true){
            	%>
            	<div class="alert alert-primary text-center" role="alert">
				  Login successfully, go home to buy evething!
				</div>
            	<%
            }else if(request.getParameter("login") != null && result == false){
            	%>
            	<div class="alert alert-danger text-center" role="alert">
				  Login fails, please try it!
				</div>
            	<%
            }
            %>
            
          </div>
          <div class="col-md-7">

            <form action="#" method="post">
              
              <div class="p-3 p-lg-5 border">
                <div class="form-group row">
                </div>
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Email <span class="text-danger">*</span></label>
                    <input type="email" class="form-control" id="c_email" name="email" placeholder="">
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_subject" class="text-black">password <span class="text-danger">*</span></label>
                    <input type="password" class="form-control" id="c_subject" name="password">
                  </div>
                </div>
                <a href="register.jsp">Register</a>
                <div class="form-group row">
                  <div class="col-lg-12">
                    <input type="submit" name="login" class="btn btn-primary btn-lg btn-block" value="Login">
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>