<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../components/header.jsp" %>
<link href="css/admin.css" rel="stylesheet" />
<link href="css/admin-add.css" rel="stylesheet" />
<link>
</head>
<body>
	<!-- The sidebar -->
    <%@ include file="admin-sidebar.jsp" %>

    <!-- Page content -->
    <div class="content">
      <div class="content-header">
        <div class="admin-text-header pt-2">
          <h3 class="fw-semibold">Administration System</h3>
        </div>
      </div>

      <div class="content-add">
        <form:form action="saveAdd" method="post" id="form" modelAttribute="addAdmin" onsubmit="return checkValidation()">
            <div class="row justify-content-center">
              <div class="col-lg-5 col-md-8">
                <div class="d-flex flex-column regis-wrapper">
                  <div class="heading">
                    <h2>Add User</h2>
                  </div>

                  <!-- Email -->
                  <div class="form-group">
                    <label for="email">Email</label>
                    <form:input path="email" type="text" name="email" placeholder="Email" class="form-control" id="email" />
                  </div>
                  <p class="error errorEmail">Email is required</p>

                  <!-- Password -->
                  <div class="form-group">
                    <label for="password">Password</label>
                    <form:input path="password" type="password" name="password" placeholder="Password" class="form-control" id="password" />
                  </div>
                  <p class="error errorPassword">Password is required</p>

                  <!-- First Name -->
                  <div class="form-group">
                    <label for="first_name">First Name</label>
                    <form:input path="profile.first_name" type="text" name="first_name" placeholder="First name" class="form-control" id="fname" />
                  </div>
                  <p class="error errorFname">First Name is required</p>

                  <!-- Last Name -->
                  <div class="form-group">
                    <label for="last_name">Last Name</label>
                    <form:input path="profile.last_name" type="text" name="last_name" placeholder="Last name" class="form-control" id="lname" />
                  </div>
                  <p class="error errorLname">Last Name is required</p>

                  <!-- Country -->
                  <div class="form-group">
                    <label for="country">Country</label>
                    <form:input path="profile.country" type="text" name="country" placeholder="Country" class="form-control" id="country" />
                  </div>
                  <p class="error errorCountry">Country is required</p>

                  <!-- City -->
                  <div class="form-group">
                    <label for="city">City</label>
                    <form:input path="profile.city" type="text" name="city" placeholder="City" class="form-control" id="city" />
                  </div>
                  <p class="error errorCity">City is required</p>
                  
                  <!-- Job -->
                  <div class="form-group">
                    <label for="job">Job</label>
                    <form:select path="profile.job.id_job" class="form-select" id="job">
                      <c:forEach items="${listJob}" var="job">
					    <option value="${job.id_job}">${job.company_name}, ${job.job_name}</option>
					  </c:forEach>
					</form:select>
                  </div>

                  <button type="submit" class="btn btn-primary mt-4">Add</button>
                </div>
              </div>
            </div>
          </form:form>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/validator.js"></script>
</body>
</html>