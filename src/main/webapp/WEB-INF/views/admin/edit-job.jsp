<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored = "false" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../components/header.jsp" %>
<link href="css/admin.css" rel="stylesheet" />
<link href="css/admin-jobs.css" rel="stylesheet" />
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

      <div class="content-jobs">
        <div class="d-flex justify-content-center">
          <div class="form-post-job">
            <div class="heading">
              <h3>Edit Job</h3>
            </div>
            <form:form action="saveJobEdit" method="post" modelAttribute="editJob" id="form">
              <!-- hidden -->
              <div class="form-group">
                <form:hidden path="id_job" class="form-control" />
              </div>
              
              <!-- Job Level -->
              <div class="form-group">
                <label for="job_level">Job Level</label>
                <form:select path="job_level" type="text" name="job_level" class="form-select">
                  <option value="${editJob.getJob_level()}">${editJob.getJob_level()}</option>
                  <option value="Senior">Senior</option>
                  <option value="Junior">Junior</option>
                  <option value="Intern">Intern</option>
                </form:select>
              </div>

              <!-- Job Time -->
              <div class="form-group">
                <label for="job_time">Job Time</label>
                <form:select path="job_time" type="text" name="job_time" class="form-select">
                  <option value="${editJob.getJob_time()}">${editJob.getJob_time()}</option>
                  <option value="Full Time">Full Time</option>
                  <option value="Part Time">Part Time</option>
                </form:select>
              </div>

              <!-- Job Name-->
              <div class="form-group">
                <label for="job_name">Job Name</label>
                <form:input path="job_name" type="text" name="job_name" class="form-control" />
              </div>

              <!-- Job Description -->
              <div class="form-group">
                <label for="job_description">Job Description</label>
                <form:textarea path="job_description" name="job_description" class="form-control"></form:textarea>
              </div>

              <!-- Company Name -->
              <div class="form-group">
                <label for="company_name">Company Name</label>
                <form:select path="company_name" type="text" name="company_name" class="form-select">
                  <option value="${editJob.getCompany_name()}">${editJob.getCompany_name()}</option>
                  <option value="Google">Google</option>
                  <option value="Facebook">Facebook</option>
                  <option value="Microsoft">Microsoft</option>
                  <option value="AWS">AWS</option>
                  <option value="Lithan">Lithan</option>
                  <option value="Samsung">Samsung</option>
                </form:select>
              </div>

              <button type="submit" class="btn-submit btn btn-primary mt-4">Post Job</button>
            </form:form>
          </div>
        </div>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>