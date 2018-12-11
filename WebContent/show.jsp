<%@page import="controller.CartController"%>
<%@page import="controller.UserController"%>
<%@page import="utils.Constracts"%>
<%@page import="model.ProduceModel"%>
<%@page import="controller.ProduceController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%
	ProduceController mProduceController  = new ProduceController();
	int id = Integer.parseInt(request.getParameter("id"));
	ProduceModel model = mProduceController.get(id);
	boolean result = false;
	
	if(Constracts.MYMODEL != null && request.getParameter("cart") != null){
		System.out.println("presss" + id);
		CartController mCartController = new CartController();
		result = mCartController.insert(Constracts.MYMODEL.getId(),	 id);
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
      <%
        if(request.getParameter("cart") != null && result == true){
        	%>
        	<div class="alert alert-primary text-center" role="alert">
			  Add to cart successfully!
			</div>
        	<%
        }else if(request.getParameter("cart") != null && result == false){
        	%>
        	<div class="alert alert-danger text-center" role="alert">
			  Add to cart fails, please try it!
			</div>
        	<%
        }
        %>
        <div class="row">
        <div>        
        </div>
          <div class="col-md-6">
            <img src="images/<%=model.getImage() %>" alt="Image" class="img-fluid">
          </div>
          <div class="col-md-6">
            <h2 class="text-black"><%=model.getName() %></h2>
            <p><%=model.getDesc()%></p>
            <p><strong class="text-primary h4">VND <%=model.getPrice() %></strong></p>
            <%
            	if(Constracts.MYMODEL != null){
            		%>
            		<form action="#" method="post">
            		<input name="id" type="hidden" value="<%=model.getId() %>"/>
            		<button type="submit" name="cart" class="btn btn-sm btn-primary">Add to cart</button>
            		</form>
            		<%
            	}else{
            		%>
            		<form action="login.jsp">
            		<button action="login.jsp" name="cart" class="btn btn-sm btn-primary">Add to cart</button>
            		</form>
            		<%
            	}
            %>
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