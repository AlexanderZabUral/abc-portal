<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/change-password.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

	  <main>
        <div class="container mt-5 mb-5">
          <form:form action="changePassword" modelAttribute="changePassword" method="post" id="form">
            <div class="row justify-content-center">
              <div class="col-lg-5 col-md-8">
                <div class="d-flex flex-column form-wrapper">
                  <div class="heading">
                    <h2>Change Password</h2>
                  </div>

                  <!-- Old Password -->
                  <div class="form-group" >
                    <label for="old-password">Old Password</label>
                    <form:input path="oldPassword" style="${error}" type="password" name="old-password" placeholder="Old Password" class="form-control" />
                  </div>

                  <!-- New Password -->
                  <div class="form-group">
                    <label for="new-password">New Password</label>
                    <form:input path="newPassword" style="${error}" type="password" name="new-password" placeholder="New Password" class="form-control" />
                  </div>
                  <p style="color: #b02a37; margin-top: 6px">${message}</p>

                  <button type="submit" class="btn btn-primary mt-4">Change Password</button>
                </div>
              </div>
            </div>
          </form:form>
        </div>
      </main>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>