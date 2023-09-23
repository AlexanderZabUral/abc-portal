<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../components/header.jsp" %>
<link href="css/admin.css" rel="stylesheet" />
<link href="css/admin-edit.css" rel="stylesheet" />
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

      <div class="content-edit">
        <form:form action="saveEditAdmin" method="post" modelAttribute="editAdmin" id="form">
          <div class="row justify-content-center">
            <div class="col-xxl-5 col-xl-6 col-lg-8 col-md-12">
              <div class="d-flex flex-column regis-wrapper">
                <div class="heading">
                  <h2>Edit User Profile</h2>
                </div>

                <!-- hidden -->
                <div class="form-group">
                  <form:hidden path="id_profile" class="form-control" />
                </div>

                <!-- First Name -->
                <div class="form-group">
                  <label for="first_name">First Name</label>
                  <form:input path="first_name" type="text" name="first_name" class="form-control" id="fname" />
                </div>

                <!-- Last Name -->
                <div class="form-group">
                  <label for="last_name">Last Name</label>
                  <form:input path="last_name" type="text" name="last_name" class="form-control" id="lname" />
                </div>

                <!-- Country -->
                <div class="form-group">
                  <label for="country">Country</label>
                  <form:input path="country" type="text" name="country" class="form-control" id="country" />
                </div>

                <!-- City -->
                <div class="form-group">
                  <label for="city">City</label>
                  <form:input path="city" type="text" name="city" class="form-control" id="city" />
                </div>
                
                <!-- ID Job -->
                <div class="form-group">
                  <label for="job">ID Job</label>
                  <form:input path="job.id_job" type="text" name="job" class="form-control" id="job" />
                </div>

                <button type="submit" class="btn btn-primary mt-4">Edit Profile</button>
              </div>
            </div>
          </div>
        </form:form>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>