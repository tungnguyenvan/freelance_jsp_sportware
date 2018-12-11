
<%@page import="java.util.ArrayList"%>
<%@page import="model.CartModel"%>
<%@page import="java.util.List"%>
<%@page import="controller.CartController"%>
<%@page import="utils.Constracts"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
	List<CartModel> carts = new ArrayList();
	if(Constracts.MYMODEL != null) {
		CartController mCartController = new CartController();
		carts = mCartController.index(Constracts.MYMODEL.getId());
	}
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header class="site-navbar" role="banner">
      <div class="site-navbar-top">
        <div class="container">
          <div class="row align-items-center">

            <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
              <form action="" class="site-block-top-search">
                <span ></span>
              </form>
            </div>

            <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
              <div class="site-logo">
                <a href="index.jsp" class="js-logo-clone">Shoppers</a>
              </div>
            </div>

            <div class="col-6 col-md-4 order-3 order-md-3 text-right">
              <div class="site-top-icons">
                <ul>
                <%
                if(Constracts.MYMODEL != null){
                	%>
                	<li><p><%=Constracts.MYMODEL.getName() %></p></li>
                	<%
                }
                %>
                  <li><a href="login.jsp"><span class="icon icon-person"></span></a></li>
                  <li>
                    <a href="cart.jsp" class="site-cart">
                      <span class="icon icon-shopping_cart"></span>
                      <span class="count"><%=carts.size() %></span>
                    </a>
                  </li> 
                  <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                </ul>
              </div> 
            </div>

          </div>
        </div>
      </div> 
      <nav class="site-navigation text-right text-md-center" role="navigation">
        <div class="container">
              <a href="index.jsp">Home</a>
        </div>
      </nav>
    </header>
</body>
</html>