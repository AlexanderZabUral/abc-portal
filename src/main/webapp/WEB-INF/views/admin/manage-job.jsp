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
        <div class="admin-button mb-3">
          <a href="post-job" class="text-decoration-none me-3">
            <button class="btn btn-primary">Post Job</button>
          </a>
          <a href="job-applicant" class="text-decoration-none">
            <button class="btn btn-primary">Manage Applicant</button>
          </a>
        </div>
        <!-- List Job -->
        <div class="table">
          <table id="data-table">
            <tr>
              <th>ID</th>
              <th>Job Name</th>
              <th>Job Level</th>
              <th>Job Time</th>
              <th>Job Description</th>
              <th>Company</th>
              <th>Action</th>
            </tr>
            <c:forEach items="${listJob}" var="job">
            <tr>
              <td>${job.getId_job()}</td>
              <td>${job.getJob_name()}</td>
              <td>${job.getJob_level()}</td>
              <td>${job.getJob_time()}</td>
              <td style="max-width: 500px;">${job.getJob_description()}</td>
              <td>${job.getCompany_name()}</td>
              <td>
                <a href="job-edit?id=${job.getId_job()}" class="text-decoration-none">
                  <button class="btn btn-warning mb-1 mt-1">Edit</button>
                </a>
                <a href="job-delete?id=${job.getId_job()}" class="text-decoration-none">
                  <button class="btn btn-danger mb-1 mt-1">Delete</button>
                </a>
              </td>
            </tr>
            </c:forEach>
          </table>
        </div>
        
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>