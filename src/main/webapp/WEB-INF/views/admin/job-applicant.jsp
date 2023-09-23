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
          <a href="manage-job" class="text-decoration-none">
            <button class="btn btn-primary">Manage Jobs</button>
          </a>
        </div>
        <!-- Applicant -->
        <c:forEach items="${listApplicant}" var="applicant">
        <div class="applicant p-3">
          <p class="job-apply text-center fw-semibold">${applicant.getJob().getJob_name()} ${applicant.getJob().getCompany_name()}</p>
          <div class="d-flex flex-column flex-lg-row justify-content-between">
            <div class="wrapper d-flex">
              <div class="image me-3">
                <img src="${applicant.getUserProfile().getPicture()}" alt="User Profile" />
              </div>
              <div class="detail">
                <p class="name fw-semibold">${applicant.getUserProfile().getFirst_name()} ${applicant.getUserProfile().getLast_name()}</p>
                
                <p class="address text-secondary">${applicant.getUserProfile().getCountry()}, ${applicant.getUserProfile().getCity()}</p>
                
                <p class="about">Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis fugit perspiciatis accusantium, nemo voluptates provident!</p>
              </div>
            </div>
            <div class="action d-flex">
              <a href="acceptJob?id_profile=${applicant.getUserProfile().getId_profile()}&id_job=${applicant.getJob().getId_job()}&id_apply=${applicant.getId_apply_job()}" class="me-3">
                <button class="btn btn-primary">Accept</button>
              </a>
              <a href="declineJob?id_apply=${applicant.getId_apply_job()}">
                <button class="btn btn-danger">Decline</button>
              </a>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>