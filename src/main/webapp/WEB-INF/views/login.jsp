<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ page isELIgnored = "false" %>   
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/login.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

      <main>
        <section id="login">
          <div class="container mt-5">
            <div class="d-flex justify-content-center">
              <div class="login-form">
                <h2 class="fw-semibold">Login</h2>
                <p class="text-secondary">Stay updated on your professional world</p>
                
                <!-- Login Form -->
                <form:form action="doLogin" method="post" modelAttribute="userLogin" class="mt-4 d-flex flex-column" id="form">
                  <div class="form-group">
                    <form:input path="email" id="loginEmail" class="form-control mb-3" style="${error}" type="text" placeholder="Email" />
                  </div>
                  <div class="form-group">
                    <form:input path="password" id="loginPassword" class="form-control" style="${error}" type="password" placeholder="Password" />
                  </div>
                  <span style="color: #b02a37; margin-top: 6px">${message}</span>
                  
                  <div class="forgot-password mt-3 mb-3 text-end">
                    <a class="text-decoration-none" href="forgot-password">Forgot Password?</a>
                  </div>
                  <button class="btn btn-primary" type="submit">Login</button>
                </form:form>
                
                <p class="p-0 mt-3">
                  Dont have an account?
                  <a class="text-primary text-decoration-none" href="register"> Register </a>
                </p>
              </div>
            </div>
          </div>
        </section>
      </main>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>