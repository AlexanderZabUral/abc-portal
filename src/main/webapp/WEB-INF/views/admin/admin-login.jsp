<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ page isELIgnored = "false" %>   
<html>
<head>
<%@ include file="../../components/header.jsp" %>
<link href="css/admin-login.css" rel="stylesheet" />
</head>
<body>
<div class="root">
      <%@ include file="../../components/navbar.jsp" %>

      <main>
        <section id="login">
          <div class="container mt-5">
            <div class="d-flex justify-content-center">
              <div class="admin-form">
                <h2 class="fw-semibold text-center">Admin Login</h2>
                
                <!-- Login Form -->
                <form:form action="adminLogin" method="post" modelAttribute="adminLogin" class="mt-4 d-flex flex-column" id="form">
                  <div class="form-group">
                    <form:input path="email" id="loginEmail" class="form-control mb-3" style="${error}" type="text" placeholder="Email" />
                  </div>
                  <div class="form-group">
                    <form:input path="password" id="loginPassword" class="form-control" style="${error}" type="password" placeholder="Password" />
                  </div>
                  <span style="color: #b02a37; margin-top: 6px">${message}</span>
                  
                  <button class="btn btn-primary mt-3" type="submit">Login</button>
                </form:form>
                
                
              </div>
            </div>
          </div>
        </section>
      </main>

      <%@ include file="../../components/footer.jsp" %>
   	</div>
</body>
</html>