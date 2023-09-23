<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
  <head>
    <%@ include file="../components/header.jsp" %>
    <link href="css/register.css" rel="stylesheet" />
  </head>
  <body>
    <div class="root">
      <%@ include file="../components/navbar.jsp" %>

      <main>
        <div class="container mt-5 mb-5">
          <form:form action="saveRegister" method="get" id="form" modelAttribute="register" onsubmit="return checkValidation()">
            <div class="row justify-content-center">
              <div class="col-lg-5 col-md-8">
                <div class="d-flex flex-column regis-wrapper">
                  <div class="heading">
                    <h2>Register</h2>
                  </div>

                  <!-- Email -->
                  <div class="form-group">
                    <label for="email">Email</label>
                    <form:input path="email" type="text" style="${error}" name="email" placeholder="user@gmail.com" class="form-control" id="email" />
                  </div>
                  <p class="error errorEmail">Email is required</p>
                  <span style="color: #b02a37; margin-top: 6px">${message}</span>

                  <!-- Password -->
                  <div class="form-group">
                    <label for="password">Password</label>
                    <form:input path="password" type="password" name="password" placeholder="Password" class="form-control" id="password" />
                  </div>
                  <p class="error errorPassword">Password is required</p>

                  <!-- First Name -->
                  <div class="form-group">
                    <label for="first_name">First Name</label>
                    <form:input path="profile.first_name" type="text" name="first_name" placeholder="Alex" class="form-control" id="fname" />
                  </div>
                  <p class="error errorFname">First Name is required</p>

                  <!-- Last Name -->
                  <div class="form-group">
                    <label for="last_name">Last Name</label>
                    <form:input path="profile.last_name" type="text" name="last_name" placeholder="Sulivan" class="form-control" id="lname" />
                  </div>
                  <p class="error errorLname">Last Name is required</p>

                  <!-- Country -->
                  <div class="form-group">
                    <label for="country">Country</label>
                    <form:input path="profile.country" type="text" name="country" placeholder="Indonesia" class="form-control" id="country" />
                  </div>
                  <p class="error errorCountry">Country is required</p>

                  <!-- City -->
                  <div class="form-group">
                    <label for="city">City</label>
                    <form:input path="profile.city" type="text" name="city" placeholder="Bali" class="form-control" id="city" />
                  </div>
                  <p class="error errorCity">City is required</p>

                  <!-- Job -->
                  <div class="form-group">
                    <label for="job">Job</label>
                    <form:select path="profile.job.id_job" class="form-select" id="job">
                      <option value="0">No Job</option>
                      <c:forEach items="${listJob}" var="job">
                        <option value="${job.id_job}">${job.company_name}, ${job.job_name}</option>
                      </c:forEach>
                    </form:select>
                  </div>

                  <button type="submit" class="btn btn-primary mt-4">Register</button>
                </div>
              </div>
            </div>
          </form:form>
        </div>
      </main>

      <%@ include file="../components/footer.jsp" %>
    </div>

    <script src="js/validator.js"></script>
  </body>
</html>
