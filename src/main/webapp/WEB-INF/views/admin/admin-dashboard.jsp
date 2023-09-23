<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored = "false" %> 
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../components/header.jsp" %>
<link href="css/admin.css" rel="stylesheet" />
<link href="css/admin-dashboard.css" rel="stylesheet" />
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

      <div class="content-table">
        <div class="admin-button mb-3">
          <a href="admin-add" class="text-decoration-none">
            <button class="btn btn-primary">Add Data</button>
          </a>
          <a href="send-bulk-email" class="text-decoration-none">
            <button class="btn btn-primary">Send Bulk Email</button>
          </a>
        </div>

        <div class="table">
          <table id="data-table">
            <tr>
              <th>ID</th>
              <th>First Name</th>
              <th>Last Name</th>
              <th>Email</th>
              <th>Country</th>
              <th>City</th>
              <th>Company</th>
              <th>Job</th>
              <th>Action</th>
            </tr>
            <c:forEach items="${listUser}" var="user">
            <tr>
              <td>${user.getUser().getId_user()}</td>
              <td>${user.first_name}</td>
              <td>${user.last_name}</td>
              <td>${user.getUser().getEmail()}</td>
              <td>${user.country}</td>
              <td>${user.city}</td>
              <td>${user.getJob().getCompany_name()}</td>
              <td>${user.getJob().getJob_name()}</td>
              <td>
                <a href="admin-edit?id=${user.id_profile}" class="text-decoration-none">
                  <button class="btn btn-warning mb-1 mt-1">Edit</button>
                </a>
                <a href="admin-delete?id=${user.getUser().getId_user()}" class="text-decoration-none">
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