<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/thank-you.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

	  <main>
        <section id="registration-confirmation" class="mt-5">
          <div class="container d-flex justify-content-center">
            <div class="confirmation d-flex flex-column text-center">
              <i class="fa-solid fa-check text-success"></i>
              <h2 class="fw-semibold">Thanks for registering</h2>
              <p class="text-secondary">
              	Your account has been created and a verification email has been sent to 
              	<span class="text-primary"><%= request.getAttribute("email") %></span> 
              </p>
              <div class="wrapper">
                <a href="<%= request.getContextPath() %>">
                  <button class="btn btn-primary mt-3">CONTINUE</button>
                </a>
              </div>
            </div>
          </div>
        </section>
      </main>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>