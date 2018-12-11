<%@page import="java.util.ArrayList"%>
<%@page import="model.ProduceModel"%>
<%@page import="java.util.List"%>
<%@page import="controller.ProduceController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%
	ProduceController mProduceController = new ProduceController();
	List<ProduceModel> mProduces = mProduceController.index();
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
    </div>

    <div class="site-section">
      <div class="container">

        <div class="row">
            <div class="row ">
            
            <%
            for(ProduceModel model : mProduces){
            	%>
            	<div class="col-sm-6 col-lg-4" data-aos="fade-up">
                <div class="block-4 text-center border">
                  <figure class="block-4-image">
                    <a href="shop-single.html"><img src="images/<%=model.getImage() %>" alt="Image placeholder" class="img-fluid"></a>
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="show.jsp?id=<%=model.getId() %>"><%=model.getName() %></a></h3>
                    <p class="text-primary font-weight-bold">VND <%=model.getPrice() %></p>
                  </div>
                </div>
              </div>
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